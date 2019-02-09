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
-- Generated on "02/09/2019 01:20:08"
                                                            
-- Vhdl Test Bench template for design  :  SendData1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SendData1_vhd_tst IS
END SendData1_vhd_tst;
ARCHITECTURE SendData1_arch OF SendData1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50MHz : STD_LOGIC;
COMPONENT SendData1
	PORT (
	CLK_50MHz : IN STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 10 ns;

BEGIN
	i1 : SendData1
	PORT MAP (
-- list connections between master ports and signals
	CLK_50MHz => CLK_50MHz
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS  

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
END SendData1_arch;
