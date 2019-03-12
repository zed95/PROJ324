library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity FIFObufferV2 is
	  GENERIC(
		Array_Size : INTEGER := 12;     
		dw : INTEGER := 16;
		noIMU : std_logic_vector(2 downto 0) := "000"
	 );
	port 
	(
		--Inputs
		CLK			: in std_logic;
		storeData	: in std_logic := '0';	
		sendData		: in std_logic := '0';
		dataIn		: in std_logic_vector(dw - 1 downto 0);
		--Outputs
		dataOut 		: OUT std_logic_vector(dw - 1 downto 0);
		empty			: OUT std_logic := '1';
		OSout			: OUT std_logic_vector(dw - 1 downto 0)
	);
end entity;


architecture FIFObufferV2 of FIFObufferV2 is		
type stateBUFFER is (IDLE, STORE, SEND);	
signal state   : stateBUFFER;		
	TYPE storage_array IS ARRAY (0 TO Array_Size - 1) OF STD_LOGIC_VECTOR(dw - 1 DOWNTO 0); -- array of size Array_size which stores ADC data
	SIGNAL datArray: storage_array;	
	signal NS : integer range 0 to (Array_Size - 1) := 0; 		-- NS - Newest Sample. Points to the location of the newest sample in the array
	signal FS : integer range 0 to (Array_Size - 1) := 0; 		-- FS - Free Space. Points to the next free space in the Array
	signal OS : integer range 0 to (Array_Size - 1) := 0; 		-- Oldest_Sample pointer variable
	signal Filled : integer range 0 to 1 := 0;
begin	
	process(CLK)
	BEGIN
		if(rising_edge(CLK)) then			
			case NS is	
				when 0 =>
				--datArray(NS) <= noIMU & "00001" & dataIN(7 downto 0);		--IMU 0, X-axis, Accelerometer, Most Significant half
				datArray(FS) <= dataIN;
				when 1 =>
				--datArray(NS) <= noIMU & "00000" & dataIN(7 downto 0);		--IMU 0, X-axis, Accelerometer, Least Significant half
				datArray(FS) <= dataIN;
				when 2 =>
				--datArray(NS) <= noIMU & "01001" & dataIN(7 downto 0);		--IMU 0, y-axis, Accelerometer, Most Significant half
				datArray(FS) <= dataIN;
				when 3 =>
				--datArray(NS) <= noIMU & "01000" & dataIN(7 downto 0);		--IMU 0, y-axis, Accelerometer, Least Significant half
				datArray(FS) <= dataIN;
				when 4 =>
				--datArray(NS) <= noIMU & "10001" & dataIN(7 downto 0);		--IMU 0, z-axis, Accelerometer, Most Significant half
				datArray(FS) <= dataIN;
				when 5 =>
				--datArray(NS) <= noIMU & "10000" & dataIN(7 downto 0);		--IMU 0, z-axis, Accelerometer, Least Significant half
				datArray(FS) <= dataIN;
				when 6 =>
				--datArray(NS) <= noIMU & "00011" & dataIN(7 downto 0);		--IMU 0, x-axis, Gyroscope, Most Significant half
				datArray(FS) <= dataIN;
				when 7 =>
				--datArray(NS) <= noIMU & "00010" & dataIN(7 downto 0);		--IMU 0, x-axis, Gyroscope, Least Significant half
				datArray(FS) <= dataIN;
				when 8 =>
				--datArray(NS) <= noIMU & "01011" & dataIN(7 downto 0);		--IMU 0, y-axis, Gyroscope, Most Significant half
				datArray(FS) <= dataIN;
				when 9 =>
				--datArray(NS) <= noIMU & "01010" & dataIN(7 downto 0);		--IMU 0, y-axis, Gyroscope, Least Significant half
				datArray(FS) <= dataIN;
				when 10 =>
				--datArray(NS) <= noIMU & "10011" & dataIN(7 downto 0);		--IMU 0, z-axis, Gyroscope, Most Significant half
				datArray(FS) <= dataIN;
				when 11 =>
				--datArray(NS) <= noIMU & "10010" & dataIN(7 downto 0);		--IMU 0, z-axis, Gyroscope, Least Significant half
				datArray(FS) <= dataIN;
				when others =>
			end case;
			
			
			if(storeData = '1') then
				if(FS = 11) then
					FS <= 11;
					NS <= 11;
				else
					FS <= FS + 1;
					NS <= NS + 1;
				end if;
		end if;
				
			if(sendData = '1') then
				dataOut <= datArray(OS);		--Latch array value onto the output
				OSout <= std_logic_vector(to_unsigned(OS, OSout'length));
			--The problem with the shifted data at the beginning which forced me to change the beginning address of the address block might be in the
			--way I output the data from the buffer.
			--On the waveforms it can be seen that the when the pulse to send data is sent, the data switches to output data from position 1 and not zero
			--like it was intended. The first data is shifted last and the second data is shifted first.
				if(OS = 11) then
					OS <= 0;
					FS <= 0;
					NS <= 0;
				else
					OS <= OS + 1;
				end if;
			end if;
			
			if(NS = 11) then
				empty <= '0';
			elsif(OS = 0) then
				empty <= '1';
			end if;

		end if;
	END PROCESS;

end FIFObufferV2;