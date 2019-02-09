library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity Data_Extraction_Controller is
	generic (Count : integer := 25);
	port 
	(
		--Inputs
		CLK	    		 : in std_logic;	
		bufferEmpty		 : in std_logic;	--This should just be a one clock cycle pulse from the buffer controller to notify this controller that buffer is free and should be filled.
		DONErx		 	 : in std_logic;	--This signal comes from the SPI to notify the controller that data piece has been extracted
		DONEtx			 : in std_logic;
		sTx		 		 : in std_logic;	--Start Transmission
		
		--Outputs
		EXTRACT 		: OUT std_logic; --Sends a signal to the SPI to begin extracting data piece until it extracts data from all the required registers
		NEXT_ADD		: OUT std_logic; --Sends a signal to the address register to send out new data to the SPI from which data is to be extracted
		STORE			: OUT std_logic; --Sends a signal to the Storage buffer controller to notify it to store newly extracted data.
		R2S			: OUT std_logic; --Ready to Send;
		NEXT_DAT		: OUT std_logic;
		TRANSMIT    : OUT std_logic
	);
end entity;


architecture Data_Extraction_Controller of Data_Extraction_Controller is	
type state_extraction  is (IDLE, STRTrx,STRTtx, WAITINGrx, WAITINGtx, NXTrx, NXTtx, W4BFFRrx, W4BFFRtx);	
signal state   : state_extraction;				
begin	
	process(CLK)
	variable addNo :  integer := 0;
	variable nextTx :  integer := 0;
	BEGIN
		if(rising_edge(CLK)) then
			case state is
				when IDLE =>
					if(bufferEmpty = '1') then
						state <= STRTrx;
					elsif(sTx = '1') then
						state <= STRTtx;
					end if;
-----------------------------------------------------------------------START RX				
				when STRTrx =>
					state <= WAITINGrx;
				when WAITINGrx =>
					if(DONErx = '1') then
						state <= NXTrx;
					end if; 
-----------------------------------------------------------------------NEXT RX				
				when NXTrx =>
					if(addNo = 11) then
						state <= W4BFFRrx;
						addNo := 0;
					else
						state <= STRTrx;
						addNo := AddNo + 1;
					end if;
-----------------------------------------------------------------------WAIT FOR BUFFER RECEIVE ALL					
				when W4BFFRrx =>
					if(bufferEmpty = '0') then
						state <= IDLE;
					else
						state <= W4BFFRrx;
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
					else
						state <= W4BFFRtx;
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
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
				if(bufferEmpty = '0') then
					R2S <= '1';
				else
					R2S <= '0';
				end if;
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
-------------------------------------
			when STRTrx =>
				EXTRACT <= '1';
				STORE <= '0';
				NEXT_ADD <= '0';
				
				R2S <= '0';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
			when WAITINGrx =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
				
				R2S <= '0';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
			when NXTrx =>
				EXTRACT <= '0';
				STORE <= '1';
				NEXT_ADD <= '1';
				
				R2S <= '0';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
			when W4BFFRrx =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
				
				R2S <= '0';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
-------------------------------------				
			when STRTtx =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
			
				R2S <= '1';
				NEXT_DAT <= '0';
				TRANSMIT <= '1';
			when WAITINGtx =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
				
				
				R2S <= '1';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';
			when NXTtx =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
				
				R2S <= '1';
				NEXT_DAT <= '1';
				TRANSMIT <= '0';
			when W4BFFRtx =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
				
				R2S <= '0';
				NEXT_DAT <= '0';
				TRANSMIT <= '0';				
			when others =>
				
		end case;
	end process;
end Data_Extraction_Controller;