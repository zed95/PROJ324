library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity IMU_Config_Block is
	generic (SSF_Accel : std_logic_Vector(15 downto 0) := "0001110000000000";			--set sensitivty scale factor to  +/- 2g
				SSF_Gyro : std_logic_Vector(15 downto 0) := "0001101100000000";			--Set Sensitivity Scale Factor to +/-2000dps    00000000 FSEL = 0, 00011000 FSEL = 3
				MAG_MODE : std_logic_vector(15 downto 0) := "0000101000000110"				--Set Magnetometer mode to continuous 2
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
				if(addNo = 4) then		--12
					addNo := 1;				--1		11
				else
					addNo := addNo + 1;
				end if;
			end if;

			case addNo is
				when 0 =>
					ADDRESS <= "0000000000000000";
				when 1 =>					
					ADDRESS <= MAG_MODE;
				when 2 =>
					ADDRESS <= SSF_Accel;							      --‭00111011‬ accel xH		  --The MSB in the address (1) signifies a read operation MSB (0) signifies write operation
				when 3 =>
					ADDRESS <= SSF_Gyro;									   --00111100 accel xL
				when others =>
					ADDRESS <= "0000000000000000";
			end case;
		end if;
	END PROCESS;
	
end IMU_Config_Block;