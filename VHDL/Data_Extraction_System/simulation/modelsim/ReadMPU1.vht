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
-- Generated on "02/08/2019 23:05:11"
                                                            
-- Vhdl Test Bench template for design  :  ReadMPU1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;                                

ENTITY ReadMPU1_vhd_tst IS
END ReadMPU1_vhd_tst;
ARCHITECTURE ReadMPU1_arch OF ReadMPU1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50MHz : STD_LOGIC;
SIGNAL MISO_MPU : STD_LOGIC;
SIGNAL MPU_CS : STD_LOGIC;
SIGNAL MPU_MOSI : STD_LOGIC;
COMPONENT ReadMPU1
	PORT (
	CLK_50MHz : IN STD_LOGIC;
	MISO_MPU : IN STD_LOGIC;
	MPU_CS : OUT STD_LOGIC;
	MPU_MOSI : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 10 ns;

BEGIN
	i1 : ReadMPU1
	PORT MAP (
-- list connections between master ports and signals
	CLK_50MHz => CLK_50MHz,
	MISO_MPU => MISO_MPU,
	MPU_CS => MPU_CS,
	MPU_MOSI => MPU_MOSI
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
				wait until rising_edge(CLK_50MHz);
				
			end loop;
WAIT;                                                        
END PROCESS always;  

clk_process : process

begin
	for k in 0 to 100000 loop
		  
		CLK_50MHz <= '0'; 
		  wait for half_clk_period;
		CLK_50MHz <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;
                                        
END ReadMPU1_arch;
