library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity DEStx is
	port 
	(
		--Inputs
		CLK	    		 : in std_logic;	
		bufferEmpty		 : in std_logic;	--This should just be a one clock cycle pulse from the buffer controller to notify this controller that buffer is free and should be filled.
		DONEtx			 : in std_logic;
		sTx		 		 : in std_logic;	--Start Transmission
		
		--Outputs
		R2S			: OUT std_logic; --Ready to Send;
		NEXT_DAT		: OUT std_logic;
		TRANSMIT    : OUT std_logic
	);
end entity;


architecture DEStx of DEStx is	
type state_extraction  is (IDLE, RDY2SND, STRTtx, WAITINGtx, NXTtx, W4BFFRtx);	
signal state   : state_extraction;				
begin	
	process(CLK)
	variable addNo :  integer := 0;
	variable nextTx :  integer := 0;
	BEGIN
		if(rising_edge(CLK)) then
			case state is
				when IDLE =>
					if(bufferEmpty = '0') then
						state <= RDY2SND;
					end if;
				when RDY2SND =>
					if(sTx = '1') then
						state <= STRTtx;
					end if;
-----------------------------------------------------------------------START TX
				when STRTtx =>
					state <= WAITINGtx;
				when WAITINGtx =>
					if(DONEtx = '1') then
						state <= NXTtx;
					end if;
-----------------------------------------------------------------------	NEXT TX				
				when NXTtx =>
					if(nextTx = 11) then
						state <= W4BFFRtx;
						nextTx := 0;
					else
						state <= STRTtx;
						nextTx := nextTx + 1;
					end if;
-----------------------------------------------------------------------WAIT FOR BUFFER TRANSMIT ALL					
				when W4BFFRtx =>
					if(bufferEmpty = '1') then
						state <= IDLE;
					end if;
-----------------------------------------------------------------------					
				when others =>
					state <= IDLE;
			end case;
		end if;
	END PROCESS;
	
	process(state)
	begin
		case state is
			when IDLE =>
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
				R2S <= '0';
-------------------------------------
			when RDY2SND =>
				R2S <= '1';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
			when STRTtx =>
			
				R2S <= '1';
				NEXT_DAT <= '0';
				TRANSMIT <= '1';
			when WAITINGtx =>

				R2S <= '1';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
			when NXTtx =>
				
				R2S <= '1';
				NEXT_DAT <= '1';
				TRANSMIT <= '0';
			when W4BFFRtx =>
				
				R2S <= '0';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';				
			when others =>
				
		end case;
	end process;
end DEStx;