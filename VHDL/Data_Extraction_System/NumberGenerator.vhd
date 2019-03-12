library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity NumberGenerator is
	generic (AccelxH : std_logic_Vector(15 downto 0) := "1011101100000000";
				AccelxL : std_logic_Vector(15 downto 0) := "1011110000000000";
				AccelyH : std_logic_Vector(15 downto 0) := "1011110100000000";
				AccelyL : std_logic_Vector(15 downto 0) := "1011111000000000";
				AccelzH : std_logic_Vector(15 downto 0) := "1011111100000000";
				AccelzL : std_logic_Vector(15 downto 0) := "1100000000000000";
				GyroxH : std_logic_Vector(15 downto 0) := "1100001100000000";
				GyroxL : std_logic_Vector(15 downto 0) := "1100010000000000";
				GyroyH : std_logic_Vector(15 downto 0) := "1100010100000000";
				GyroyL : std_logic_Vector(15 downto 0) := "1100011000000000";
				GyrozH : std_logic_Vector(15 downto 0) := "1100011100000000";
				GyrozL : std_logic_Vector(15 downto 0) := "1100100000000000");
	port 
	(
		--Inputs
		CLK	   : in std_logic;	
		NXTDATA	: in std_logic;
		
		--Outputs
		Data 	: OUT std_logic_vector(15 downto 0)
	);
end entity;


architecture NumberGenerator of NumberGenerator is	
type state_extraction  is (IDLE, START, WAITING, NXT);	
signal state   : state_extraction;				
begin	
	process(CLK)
	variable addNo :  integer := 0;		--Start from 0 to jump onto first address when signal from controller comes in. 0   10
	BEGIN
		if(rising_edge(CLK)) then
		
			if(NXTDATA = '1') then
				if(addNo = 12) then		--12
					addNo := 1;				--1		11
				else
					addNo := addNo + 1;
				end if;
			end if;

			case addNo is
				when 0 =>
					Data <= "0000000000000000";
				when 1 =>
					Data <= "0000000000000001";							      --‭00111011‬ accel xH		  --The MSB in the address (1) signifies a read operation MSB (0) signifies write operation
				when 2 =>
					Data <= "0000000000000010";									--00111100 accel xL
				when 3 =>					
					Data <= "0000000000000011";									--00111101 accel yH
				when 4 =>							
					Data <= "0000000000000100";									--00111110 accel yL
				when 5 =>
					Data <= "0000000000000101";									--00111111 accel zH
				when 6 =>
					Data <= "0000000000000110";									--01000000 accel zL
				when 7 =>
					Data <= "0000000000000111";									--01000011 gyro  xH
				when 8 =>
					Data <= "0000000000001000";									--01000100 gyro  xL
				when 9 =>
					Data <= "0000000000001001";									--01000101 gyro  yH
				when 10 =>
					Data <= "0000000000001010";									--01000110 gyro  yL
				when 11 =>
					Data <= "0000000000001011";									--01000111 gyro  zH
				when 12 =>
					Data <= "0000000000001100";									--01001000 gyro  zL
				when others =>
					Data <= "0000000000000000";
			end case;
		end if;
	END PROCESS;
	
end NumberGenerator;