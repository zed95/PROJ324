library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity FIFObuffer is
	  GENERIC(
		Array_Size : INTEGER := 12;     
		dw : INTEGER := 16;
		noIMU : std_logic_vector(2 downto 0) := "000"
	 );
	port 
	(
		--Inputs
		CLK			: in std_logic;
		storeData	: in std_logic;	
		sendData		: in std_logic;
		dataIn		: in std_logic_vector(dw - 1 downto 0);
		--Outputs
		dataOut 		: OUT std_logic_vector(dw - 1 downto 0);
		empty			: OUT std_logic
	);
end entity;


architecture FIFObuffer of FIFObuffer is		
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
				datArray(FS) <= noIMU & "00001" & dataIN(7 downto 0);		--IMU 0, X-axis, Accelerometer, Most Significant half
				when 1 =>
				datArray(FS) <= noIMU & "00000" & dataIN(7 downto 0);		--IMU 0, X-axis, Accelerometer, Least Significant half
				when 2 =>
				datArray(FS) <= noIMU & "01001" & dataIN(7 downto 0);		--IMU 0, y-axis, Accelerometer, Most Significant half
				when 3 =>
				datArray(FS) <= noIMU & "01000" & dataIN(7 downto 0);		--IMU 0, y-axis, Accelerometer, Least Significant half
				when 4 =>
				datArray(FS) <= noIMU & "10001" & dataIN(7 downto 0);		--IMU 0, z-axis, Accelerometer, Most Significant half
				when 5 =>
				datArray(FS) <= noIMU & "10000" & dataIN(7 downto 0);		--IMU 0, z-axis, Accelerometer, Least Significant half
				when 6 =>
				datArray(FS) <= noIMU & "00011" & dataIN(7 downto 0);		--IMU 0, x-axis, Gyroscope, Most Significant half
				when 7 =>
				datArray(FS) <= noIMU & "00010" & dataIN(7 downto 0);		--IMU 0, x-axis, Gyroscope, Least Significant half
				when 8 =>
				datArray(FS) <= noIMU & "01011" & dataIN(7 downto 0);		--IMU 0, y-axis, Gyroscope, Most Significant half
				when 9 =>
				datArray(FS) <= noIMU & "01010" & dataIN(7 downto 0);		--IMU 0, y-axis, Gyroscope, Least Significant half
				when 10 =>
				datArray(FS) <= noIMU & "10011" & dataIN(7 downto 0);		--IMU 0, z-axis, Gyroscope, Most Significant half
				when 11 =>
				datArray(FS) <= noIMU & "10010" & dataIN(7 downto 0);		--IMU 0, z-axis, Gyroscope, Least Significant half
				when others =>
				end case;
				if(NS = 0 AND FS = 0 AND OS = 0) then
					FS <= FS + 1;
					NS <= 0;
					OS <= 0;
				else
					if(FS = 11) then
						FS <= 11;
						NS <= 11;
					else
						FS <= FS + 1;
						NS <= NS + 1;
					end if;
				end if;
				state <= IDLE;
			when SEND =>
				dataOut <= datArray(OS);
				if(OS = 11) then
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
				if(NS = 11) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
			when STORE =>
				if(NS = 11) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
			when SEND =>
				if(NS = 11) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
			when others =>
		end case;
	end process;
end FIFObuffer;