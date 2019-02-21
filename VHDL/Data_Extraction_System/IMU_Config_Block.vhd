library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity IMU_Config_Block is
	generic (SSF_Accel : std_logic_Vector(15 downto 0) := "0001110000000000";			--set sensitivty scale factor to  +/- 2g
				SSF_Gyro : std_logic_Vector(15 downto 0) := "0001101100010000";			--Set Sensitivity Scale Factor to +/-2000dps
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
		NXTADD	: in std_logic;
		
		--Outputs
		ADDRESS 	: OUT std_logic_vector(15 downto 0)
	);
end entity;


architecture IMU_Config_Block of IMU_Config_Block is	
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
					ADDRESS <= SSF_Accel;							      --‭00111011‬ accel xH		  --The MSB in the address (1) signifies a read operation MSB (0) signifies write operation
				when 2 =>
					ADDRESS <= SSF_Gyro;									--00111100 accel xL
				when 3 =>					
					ADDRESS <= AccelyH;									--00111101 accel yH
				when 4 =>							
					ADDRESS <= AccelyL;									--00111110 accel yL
				when 5 =>
					ADDRESS <= AccelzH;									--00111111 accel zH
				when 6 =>
					ADDRESS <= AccelzL;									--01000000 accel zL
				when 7 =>
					ADDRESS <= GyroxH;									--01000011 gyro  xH
				when 8 =>
					ADDRESS <= GyroxL;									--01000100 gyro  xL
				when 9 =>
					ADDRESS <= GyroyH;									--01000101 gyro  yH
				when 10 =>
					ADDRESS <= GyroyL;									--01000110 gyro  yL
				when 11 =>
					ADDRESS <= GyrozH;									--01000111 gyro  zH
				when 12 =>
					ADDRESS <= GyrozL;									--01001000 gyro  zL
				when others =>
					ADDRESS <= "0000000000000000";
			end case;
		end if;
	END PROCESS;
	
end IMU_Config_Block;