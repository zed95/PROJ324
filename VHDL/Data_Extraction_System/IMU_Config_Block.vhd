library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity IMU_Config_Block is
	generic (SSF_Accel : std_logic_Vector(15 downto 0) := "0001110000000000";			--set sensitivty scale factor to  +/- 2g
				SSF_Gyro : std_logic_Vector(15 downto 0) := "0001101100000000";			--Set Sensitivity Scale Factor to +/-2000dps    00000000 FSEL = 0, 00011000 FSEL = 3
				XG_OFFSET_H : std_logic_Vector(15 downto 0) := "0001001100000000";		--  240
				XG_OFFSET_L : std_logic_Vector(15 downto 0) := "0001010011110000";
				YG_OFFSET_H : std_logic_Vector(15 downto 0) := "0001010111111111";		-- -31
				YG_OFFSET_L : std_logic_Vector(15 downto 0) := "0001011011100001";
				ZG_OFFSET_H : std_logic_Vector(15 downto 0) := "0001011100000000";		--  81
				ZG_OFFSET_L : std_logic_Vector(15 downto 0) := "0001100001010001";
				
				--The Low bytes are 7 bits long so the last bit does not matter
				XA_OFFSET_H : std_logic_Vector(15 downto 0) := "0111011100000010";		-- -306	
				XA_OFFSET_L : std_logic_Vector(15 downto 0) := "0111100001100100";
				YA_OFFSET_H : std_logic_Vector(15 downto 0) := "0111101000000001";		-- -131
				YA_OFFSET_L : std_logic_Vector(15 downto 0) := "0111101100000110";
				ZA_OFFSET_H : std_logic_Vector(15 downto 0) := "0111110100000100";		-- -531
				ZA_OFFSET_L : std_logic_Vector(15 downto 0) := "0111111000100110"	
				);
				

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
				if(addNo = 14) then		--12
					addNo := 1;				--1		11
				else
					addNo := addNo + 1;
				end if;
			end if;

			case addNo is
				when 0 =>
					ADDRESS <= "0000000000000000";
				when 1 =>					
					ADDRESS <= XG_OFFSET_H;									--00111101 accel yH
				when 2 =>							
					ADDRESS <= XG_OFFSET_L;									--00111110 accel yL
				when 3 =>
					ADDRESS <= YG_OFFSET_H;									--00111111 accel zH
				when 4 =>
					ADDRESS <= YG_OFFSET_L;									--01000000 accel zL
				when 5 =>
					ADDRESS <= ZG_OFFSET_H;									--01000011 gyro  xH
				when 6 =>
					ADDRESS <= ZG_OFFSET_L;									--01000100 gyro  xL
				when 7 =>
					ADDRESS <= XA_OFFSET_H;									--01000101 gyro  yH
				when 8 =>
					ADDRESS <= XA_OFFSET_L;									--01000110 gyro  yL
				when 9 =>
					ADDRESS <= YA_OFFSET_H;									--01000111 gyro  zH
				when 10 =>
					ADDRESS <= YA_OFFSET_L;									--01001000 gyro  zL
				when 11 =>
					ADDRESS <= ZA_OFFSET_H;									--01001000 gyro  zL
				when 12 =>
					ADDRESS <= ZA_OFFSET_L;									--01001000 gyro  zL
				when 13 =>
					ADDRESS <= SSF_Accel;							      --‭00111011‬ accel xH		  --The MSB in the address (1) signifies a read operation MSB (0) signifies write operation
				when 14 =>
					ADDRESS <= SSF_Gyro;									   --00111100 accel xL
				when others =>
					ADDRESS <= "0000000000000000";
			end case;
		end if;
	END PROCESS;
	
end IMU_Config_Block;