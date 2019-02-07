library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity addressBlock is
	generic (Count : integer := 25);
	port 
	(
		--Inputs
		CLK	   : in std_logic;	
		NXTADD	: in std_logic;
		
		--Outputs
		ADDRESS 	: OUT std_logic_vector(15 downto 0)
	);
end entity;


architecture addressBlock of addressBlock is	
type state_extraction  is (IDLE, START, WAITING, NXT);	
signal state   : state_extraction;				
begin	
	process(CLK)
	variable addNo :  integer := 0;
	BEGIN
		if(rising_edge(CLK)) then
		
			if(NXTADD = '1') then
				if(addNo = 12) then
					addNo := 0;
				else
					addNo := addNo + 1;
				end if;
			end if;
			case addNo is							
				when 0 =>
					ADDRESS <= "0011101100000000";							      --‭00111011‬ accel xH
				when 1 =>
					ADDRESS <= "0011110000000000";									--00111100 accel xL
				when 2 =>					
					ADDRESS <= "0011110100000000";									--00111101 accel yH
				when 3 =>							
					ADDRESS <= "0011111000000000";									--00111110 accel yL
				when 4 =>
					ADDRESS <= "0011111100000000";									--00111111 accel zH
				when 5 =>
					ADDRESS <= "0100000000000000";									--01000000 accel zL
				when 6 =>
					ADDRESS <= "0100001100000000";									--01000011 gyro  xH
				when 7 =>
					ADDRESS <= "0100010000000000";									--01000100 gyro  xL
				when 8 =>
					ADDRESS <= "0100010100000000";									--01000101 gyro  yH
				when 9 =>
					ADDRESS <= "0100011000000000";									--01000110 gyro  yL
				when 10 =>
					ADDRESS <= "0100011100000000";									--01000111 gyro  zH
				when 11 =>
					ADDRESS <= "0100100000000000";									--01001000 gyro  zL
				when others =>
					ADDRESS <= "0000000000000000";
			end case;
		end if;
	END PROCESS;
	
end addressBlock;