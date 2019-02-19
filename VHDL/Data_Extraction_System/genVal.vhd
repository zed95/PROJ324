library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity genVal is
	port 
	(
		--Inputs
		CLK	   : in std_logic;	
		NXTV		: in std_logic;
		
		--Outputs
		vOut 	: OUT std_logic_vector(15 downto 0)
	);
end entity;


architecture genVal of genVal is	
type state_extraction  is (IDLE, START, WAITING, NXT);	
signal state   : state_extraction;				
begin	
	process(CLK)
	variable addNo :  integer := 1;		--Start from 0 to jump onto first address when signal from controller comes in. 0   10
	BEGIN
		if(rising_edge(CLK)) then
		
			if(NXTV = '1') then
				if(addNo = 12) then		--12
					addNo := 1;				--1		11
				else
					addNo := addNo + 1;
				end if;
			end if;

			case addNo is
				when 0 =>
					vOut <= "0000000000000000";
				when 1 =>
					vOut <= "0000000000000001";							      --‭00111011‬ accel xH		  --The MSB in the address (1) signifies a read operation MSB (0) signifies write operation
				when 2 =>
					vOut <= "0000000000000010";									--00111100 accel xL
				when 3 =>					
					vOut <= "0000000000000011";									--00111101 accel yH
				when 4 =>							
					vOut <= "0000000000000100";									--00111110 accel yL
				when 5 =>
					vOut <= "0000000000000101";									--00111111 accel zH
				when 6 =>
					vOut <= "0000000000000110";									--01000000 accel zL
				when 7 =>
					vOut <= "0000000000000111";									--01000011 gyro  xH
				when 8 =>
					vOut <= "0000000000001000";									--01000100 gyro  xL
				when 9 =>
					vOut <= "0000000000001001";									--01000101 gyro  yH
				when 10 =>
					vOut <= "0000000000001010";									--01000110 gyro  yL
				when 11 =>
					vOut <= "0000000000001011";									--01000111 gyro  zH
				when 12 =>
					vOut <= "0000000000001100";									--01001000 gyro  zL
				when others =>
					vOut <= "0000000000001101";
			end case;
		end if;
	END PROCESS;
	
end genVal;