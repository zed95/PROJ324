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
-- Generated on "04/26/2019 00:01:48"
                                                            
-- Vhdl Test Bench template for design  :  Reset_Timer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;  
use ieee.numeric_std.all;                                

ENTITY Reset_Timer_vhd_tst IS
END Reset_Timer_vhd_tst;
ARCHITECTURE Reset_Timer_arch OF Reset_Timer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Input : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
COMPONENT Reset_Timer
	PORT (
	CLK : IN STD_LOGIC;
	Input : IN STD_LOGIC;
	Reset : BUFFER STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : Reset_Timer
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Input => Input,
	Reset => Reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
variable signalCounter : integer := 0;
variable cnt : integer := 0;                                  
BEGIN                                                         
   for k in 0 to 10000 loop
		wait until rising_edge(clk);
			if(k = 1300 or k = 3500 or k = 4300 or k = 7200 or k = 8400) then
				Input <= '1';
			else
				Input <= '0';
			end if;
		
	end loop;
WAIT;                                                        
END PROCESS always;   

clk_process : process

begin
	for k in 0 to 10000 loop
		  
		CLK <= '0'; 
		  wait for half_clk_period;
		CLK <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;
                                       
END Reset_Timer_arch;
