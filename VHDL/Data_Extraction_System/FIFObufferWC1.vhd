library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity FIFObufferWC1 is
	  GENERIC(
		Array_Size : INTEGER := 13;     
		dw : INTEGER := 8
	 );
	port 
	(
		--Inputs
		CLK			: in std_logic;
		storeData	: in std_logic;	
		sendData		: in std_logic;
		dataIn		: in std_logic_vector(15 downto 0);
		--Outputs
		dataOut 		: OUT std_logic_vector(dw - 1 downto 0);
		empty			: OUT std_logic
	);
end entity;


architecture FIFObufferWC1 of FIFObufferWC1 is		
type stateBUFFER is (IDLE, STORE, SEND);	
signal state   : stateBUFFER;		
	TYPE storage_array IS ARRAY (0 TO Array_Size - 1) OF STD_LOGIC_VECTOR(dw - 1 DOWNTO 0); -- array of size Array_size which stores ADC data
	SIGNAL datArray: storage_array;	
	signal NS : integer range 0 to (Array_Size - 1) := 0; 		-- NS - Newest Sample. Points to the location of the newest sample in the array
	signal FS : integer range 0 to (Array_Size - 1) := 0; 		-- FS - Free Space. Points to the next free space in the Array
	signal OS : integer range 0 to (Array_Size - 1) := 0; 		-- Oldest_Sample pointer variable
begin	
	process(CLK)
	BEGIN
		if(rising_edge(CLK)) then
			case state is
			when IDLE =>
				if(storeData = '1') then
					state <= STORE;
				elsif(sendData = '1') then
					state <= SEND;
				end if;
			when STORE =>
				case FS is
				when 0 =>
					datArray(FS) <= dataIN(7 downto 0);
					state <= IDLE;
				when 1 =>
					datArray(FS) <= dataIN(7 downto 0);
				when 2 =>
					datArray(FS) <= dataIN(15 downto 8);
					state <= IDLE;
				when 3 =>
					datArray(FS) <= dataIN(7 downto 0);
				when 4 =>
					datArray(FS) <= dataIN(15 downto 8);
					state <= IDLE;
				when 5 =>
					datArray(FS) <= dataIN(7 downto 0);
				when 6 =>
					datArray(FS) <= dataIN(15 downto 8);
					state <= IDLE;
				when 7 =>
					datArray(FS) <= dataIN(7 downto 0);
				when 8 =>
					datArray(FS) <= dataIN(15 downto 8);
					state <= IDLE;
				when 9 =>
					datArray(FS) <= dataIN(7 downto 0);
				when 10 =>
					datArray(FS) <= dataIN(15 downto 8);
					state <= IDLE;
				when 11 =>
					datArray(FS) <= dataIN(7 downto 0);
				when 12 =>
					datArray(FS) <= dataIN(15 downto 8);
					state <= IDLE;
				when others =>
				end case;
				if(NS = 0 AND FS = 0 AND OS = 0) then
					FS <= FS + 1;
					NS <= 0;
					OS <= 0;
				else
					if(FS = 12) then
						FS <= 12;
						NS <= 12;
					else
						FS <= FS + 1;
						NS <= NS + 1;
					end if;
				end if;
			when SEND =>
			--The problem with the shifted data at the beginning which forced me to change the beginning address of the address block might be in the
			--way I output the data from the buffer.
			--On the waveforms it can be seen that the when the pulse to send data is sent, the data switches to output data from position 1 and not zero
			--like it was intended. The first data is shifted last and the second data is shifted first.
				if(OS = 12) then
					OS <= 0;
					FS <= 0;
					NS <= 0;
				else
					OS <= OS + 1;
				end if;
				state <= IDLE;
			when others =>
			end case;
		end if;
	END PROCESS;
	
		process(state)
	begin 
		case state is
			when IDLE =>
				if(NS = 12) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when STORE =>
				if(NS = 12) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when SEND =>
				if(NS = 12) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when others =>
		end case;
	end process;
end FIFObufferWC1;