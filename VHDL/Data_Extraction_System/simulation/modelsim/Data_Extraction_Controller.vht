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
-- Generated on "02/06/2019 22:48:09"
                                                            
-- Vhdl Test Bench template for design  :  Data_Extraction_Controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Data_Extraction_Controller_vhd_tst IS
END Data_Extraction_Controller_vhd_tst;
ARCHITECTURE Data_Extraction_Controller_arch OF Data_Extraction_Controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DONE : STD_LOGIC;
SIGNAL EXTRACT : STD_LOGIC;
SIGNAL NEXT_ADD : STD_LOGIC;
SIGNAL START : STD_LOGIC;
SIGNAL STORE : STD_LOGIC;
COMPONENT Data_Extraction_Controller
	PORT (
	CLK : IN STD_LOGIC;
	DONE : IN STD_LOGIC;
	EXTRACT : BUFFER STD_LOGIC;
	NEXT_ADD : BUFFER STD_LOGIC;
	START : IN STD_LOGIC;
	STORE : BUFFER STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : Data_Extraction_Controller
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DONE => DONE,
	EXTRACT => EXTRACT,
	NEXT_ADD => NEXT_ADD,
	START => START,
	STORE => STORE
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
variable n : integer := 0;                                 
BEGIN                                                         
        	for k in 0 to 200 loop   
				wait until rising_edge(clk);
					if(k >= 100) then
						START <= '0';
					else
						START <= '1';
					end if;
					
					if(n = 5) then
						n := 0;
						DONE <= '1';
					else
						n := n + 1;
						DONE <= '0';
					end if;
			end loop;
WAIT;                                                        
END PROCESS always;        

clk_process : process

begin
	for k in 0 to 200 loop
		  
		CLK <= '0'; 
		  wait for half_clk_period;
		CLK <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;                                   
END Data_Extraction_Controller_arch;
