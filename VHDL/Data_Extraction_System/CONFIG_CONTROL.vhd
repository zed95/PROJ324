library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity CONFIG_CONTROL is
	generic (lastAddress : integer := 12
				);
	port 
	(
		--Inputs
		CLK	    		 : in std_logic;	
		DONErx		 	 : in std_logic;	--This signal comes from the SPI to notify the controller that data piece has been extracted
		
		--Outputs
		EXTRACT 		: OUT std_logic; --Sends a signal to the SPI to begin extracting data piece until it extracts data from all the required registers
		NEXT_ADD		: OUT std_logic --Sends a signal to the address register to send out new data to the SPI from which data is to be extracted
	);
end entity;


architecture CONFIG_CONTROL of CONFIG_CONTROL is	
type state_extraction  is (IDLE, NXTADDR, STRTrx, WAITINGrx, STOREstate, W4BFFRrx);	
signal state   : state_extraction;				
begin	
	process(CLK)
	variable addNo :  integer := 0;
	variable nextTx :  integer := 0;
	variable wtCnt : integer := 0;
	BEGIN
		if(rising_edge(CLK)) then
			case state is
				when IDLE =>
						state <= NXTADDR;
-----------------------------------------------------------------------Load Next Address						
				when NXTADDR =>
						state <= STRTrx;
-----------------------------------------------------------------------START RX				
				when STRTrx =>
					state <= WAITINGrx;
					
				when WAITINGrx =>
					if(DONErx = '1') then
						state <= STOREstate;
					end if; 
-----------------------------------------------------------------------NEXT RX				
				when STOREstate =>
					if(addNo = (lastAddress - 1)) then -- The max is last address - 1 because at the start of process next address gets incremented in the address block by sending a signal to it.
						state <= W4BFFRrx;
						addNo := 0;
					else
						state <= NXTADDR;
						addNo := AddNo + 1;
					end if;
-----------------------------------------------------------------------WAIT FOR BUFFER RECEIVE ALL					
				when W4BFFRrx =>
						state <= IDLE;
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
				NEXT_ADD <= '0';
				
			when NXTADDR =>
				EXTRACT <= '0';
				NEXT_ADD <= '1';
				
			when STRTrx =>
				EXTRACT <= '1';
				NEXT_ADD <= '0';
				
			when WAITINGrx =>
				EXTRACT <= '0';
				NEXT_ADD <= '0';

			when STOREstate =>
				EXTRACT <= '0';
				NEXT_ADD <= '0';

			when W4BFFRrx =>
				EXTRACT <= '0';
				NEXT_ADD <= '0';
-------------------------------------							
			when others =>
		end case;
	end process;
end CONFIG_CONTROL;