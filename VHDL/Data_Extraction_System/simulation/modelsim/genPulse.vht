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
-- Generated on "02/07/2019 00:31:03"
                                                            
-- Vhdl Test Bench template for design  :  genPulse
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY genPulse_vhd_tst IS
END genPulse_vhd_tst;
ARCHITECTURE genPulse_arch OF genPulse_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL input : STD_LOGIC;
SIGNAL output : STD_LOGIC;
COMPONENT genPulse
	PORT (
	CLK : IN STD_LOGIC;
	input : IN STD_LOGIC;
	output : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : genPulse
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	input => input,
	output => output
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
      for k in 0 to 200 loop
		  wait until rising_edge(clk);
		  if(k < 20) then
			input <= '1';
		  end if;
		  
		  if(k >= 20 and k < 21) then
			input <= '0';
		  end if;
		  
		  if(k >= 21 and k < 22) then
			input <= '1';
		  end if;
		  
		  if(k >= 22 and k < 23) then
			input <= '0';
		  end if;
		  
		  if(k >= 23 and k < 24) then
			input <= '1';
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
                                        
END genPulse_arch;
