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
	variable addNo :  integer := 1;		--Start from 0 to jump onto first address when signal from controller comes in. 0   10
	BEGIN
		if(rising_edge(CLK)) then
		
			if(NXTADD = '1') then
				if(addNo = 12) then		--12
					addNo := 1;				--1		11
				else
					addNo := addNo + 1;
				end if;
			end if;

			case addNo is
				when 0 =>
					ADDRESS <= "0000000000000000";
				when 1 =>
					ADDRESS <= "1011101100000000";							      --‭00111011‬ accel xH		  --The MSB in the address (1) signifies a read operation MSB (0) signifies write operation
				when 2 =>
					ADDRESS <= "1011110000000000";									--00111100 accel xL
				when 3 =>					
					ADDRESS <= "1011110100000000";									--00111101 accel yH
				when 4 =>							
					ADDRESS <= "1011111000000000";									--00111110 accel yL
				when 5 =>
					ADDRESS <= "1011111100000000";									--00111111 accel zH
				when 6 =>
					ADDRESS <= "1100000000000000";									--01000000 accel zL
				when 7 =>
					ADDRESS <= "1100001100000000";									--01000011 gyro  xH
				when 8 =>
					ADDRESS <= "1100010000000000";									--01000100 gyro  xL
				when 9 =>
					ADDRESS <= "1100010100000000";									--01000101 gyro  yH
				when 10 =>
					ADDRESS <= "1100011000000000";									--01000110 gyro  yL
				when 11 =>
					ADDRESS <= "1100011100000000";									--01000111 gyro  zH
				when 12 =>
					ADDRESS <= "1100100000000000";									--01001000 gyro  zL
				when others =>
					ADDRESS <= "0000000000000000";
			end case;
		end if;
	END PROCESS;
	
end addressBlock;