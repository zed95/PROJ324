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
		CLK	   : in std_logic;	
		START		: in std_logic;	--This should just be a one clock cycle pulse from the buffer controller to notify this controller that buffer is free and should be filled.
		DONE		: in std_logic;	--This signal comes from the SPI to notify the controller that data piece has been extracted
		
		--Outputs
		EXTRACT 		: OUT std_logic; --Sends a signal to the SPI to begin extracting data piece until it extracts data from all the required registers
		NEXT_ADD		: OUT std_logic; --Sends a signal to the address register to send out new data to the SPI from which data is to be extracted
		STORE			: OUT std_logic  --Sends a signal to the Storage buffer controller to notify it to store newly extracted data.
	);
end entity;


architecture Data_Extraction_Controller of Data_Extraction_Controller is	
type state_extraction  is (IDLE, STRT, WAITING, NXT);	
signal state   : state_extraction;				
begin	
	process(CLK)
	variable addNo :  integer := 0;
	BEGIN
		if(rising_edge(CLK)) then
			case state is
				when IDLE =>
					if(START = '1') then
						state <= STRT;
					end if;
				when STRT =>
					state <= WAITING;
				when WAITING =>
					if(DONE = '1') then
						state <= NXT;
					end if; 
				when NXT =>
					if(addNo = 11) then
						state <= IDLE;
						addNo := 0;
					else
						state <= STRT;
						addNo := AddNo + 1;
					end if;
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
			when STRT =>
				EXTRACT <= '1';
				STORE <= '0';
				NEXT_ADD <= '0';
			when WAITING =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
			when NXT =>
				EXTRACT <= '0';
				STORE <= '1';
				NEXT_ADD <= '1';
			when others =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
		end case;
	end process;
end Data_Extraction_Controller;