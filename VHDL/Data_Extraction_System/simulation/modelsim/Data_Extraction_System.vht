-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/08/2019 11:05:09"
                                                            
-- Vhdl Test Bench template for design  :  Data_Extraction_System
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Data_Extraction_System_vhd_tst IS
END Data_Extraction_System_vhd_tst;
ARCHITECTURE Data_Extraction_System_arch OF Data_Extraction_System_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK50 : STD_LOGIC;
SIGNAL CS : STD_LOGIC := '1';
SIGNAL LED0 : STD_LOGIC;
SIGNAL LED1 : STD_LOGIC;
SIGNAL LED2 : STD_LOGIC;
SIGNAL LED3 : STD_LOGIC;
SIGNAL LED4 : STD_LOGIC;
SIGNAL LED5 : STD_LOGIC;
SIGNAL LED6 : STD_LOGIC;
SIGNAL LED7 : STD_LOGIC;
SIGNAL MISO : STD_LOGIC;
SIGNAL MISO_MPU : STD_LOGIC;
SIGNAL MOSI : STD_LOGIC;
SIGNAL MPU_CS : STD_LOGIC;
SIGNAL MPU_MOSI : STD_LOGIC;
SIGNAL MPU_MSTR_CLK : STD_LOGIC;
SIGNAL MSTR_CLK : STD_LOGIC;
COMPONENT Data_Extraction_System
	PORT (
	CLK50 : IN STD_LOGIC;
	CS : OUT STD_LOGIC;
	LED0 : OUT STD_LOGIC;
	LED1 : OUT STD_LOGIC;
	LED2 : OUT STD_LOGIC;
	LED3 : OUT STD_LOGIC;
	LED4 : OUT STD_LOGIC;
	LED5 : OUT STD_LOGIC;
	LED6 : OUT STD_LOGIC;
	LED7 : OUT STD_LOGIC;
	MISO : IN STD_LOGIC;
	MISO_MPU : IN STD_LOGIC;
	MOSI : OUT STD_LOGIC;
	MPU_CS : OUT STD_LOGIC;
	MPU_MOSI : OUT STD_LOGIC;
	MPU_MSTR_CLK : OUT STD_LOGIC;
	MSTR_CLK : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 10 ns;

BEGIN
	i1 : Data_Extraction_System
	PORT MAP (
-- list connections between master ports and signals
	CLK50 => CLK50,
	CS => CS,
	LED0 => LED0,
	LED1 => LED1,
	LED2 => LED2,
	LED3 => LED3,
	LED4 => LED4,
	LED5 => LED5,
	LED6 => LED6,
	LED7 => LED7,
	MISO => MISO,
	MISO_MPU => MISO_MPU,
	MOSI => MOSI,
	MPU_CS => MPU_CS,
	MPU_MOSI => MPU_MOSI,
	MPU_MSTR_CLK => MPU_MSTR_CLK,
	MSTR_CLK => MSTR_CLK
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        for k in 0 to 100000 loop
			wait until rising_edge(CLK50);
		  end loop;
WAIT;                                                        
END PROCESS always;          

clk_process : process

begin
	for k in 0 to 100000 loop
		  
		CLK50 <= '0'; 
		  wait for half_clk_period;
		CLK50 <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;
                                
END Data_Extraction_System_arch;
