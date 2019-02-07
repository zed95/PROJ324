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
-- Generated on "02/07/2019 11:38:18"
                                                            
-- Vhdl Test Bench template for design  :  xDomain_s2f
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY xDomain_s2f_vhd_tst IS
END xDomain_s2f_vhd_tst;
ARCHITECTURE xDomain_s2f_arch OF xDomain_s2f_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLK_SLW : STD_LOGIC;
SIGNAL input : STD_LOGIC;
SIGNAL output : STD_LOGIC;
COMPONENT xDomain_s2f
	PORT (
	CLK : IN STD_LOGIC;
	CLK_SLW : IN STD_LOGIC;
	input : IN STD_LOGIC;
	output : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;
constant half_clk_period1 : time := 100 ns;

BEGIN
	i1 : xDomain_s2f
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLK_SLW => CLK_SLW,
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
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;

process1 : process

begin
	for k in 0 to 200 loop
		wait until rising_edge(CLK_SLW);
			if(k > 20 and k < 60) then
				input <= '1';
			end if;
			
			if(k > 59 and k < 120) then
				input <= '0';
			end if;
			
			if(k > 119 and k < 160) then
				input <= '1';
			end if;
		  
  end loop;
wait;
end process process1;

 
clk_process : process

begin
	for k in 0 to 1100 loop
		  
		CLK <= '0'; 
		  wait for half_clk_period1;
		CLK <= '1'; 
		  wait for half_clk_period1;
		  
  end loop;
wait;
end process clk_process;

clk_slow_process : process

begin
	for k in 0 to 200 loop
		  
		CLK_SLW <= '0'; 
		  wait for half_clk_period;
		CLK_SLW <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_slow_process;
                                         
END xDomain_s2f_arch;
