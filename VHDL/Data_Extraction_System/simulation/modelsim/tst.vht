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
-- Generated on "02/08/2019 20:55:26"
                                                            
-- Vhdl Test Bench template for design  :  tst
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tst_vhd_tst IS
END tst_vhd_tst;
ARCHITECTURE tst_arch OF tst_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL input : STD_LOGIC := '0';
SIGNAL output : STD_LOGIC;
SIGNAL txn : STD_LOGIC := '0';
COMPONENT tst
	PORT (
	CLK : IN STD_LOGIC;
	input : IN STD_LOGIC;
	output : OUT STD_LOGIC;
	txn : IN STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : tst
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	input => input,
	output => output,
	txn => txn
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
    	for k in 0 to 500 loop
			wait until rising_edge(clk);
				if(k >= 40 and k <= 41) then
					txn <= '1';
				end if;
				
				if(k >= 42 and k <= 43) then
					txn <= '0';
				end if;
				
				if(k >= 90 and k <= 91) then
					input <= '1';
				end if;
				
				if(k >= 120 and k <= 130) then
					txn <= '1';
				end if;
				
				if(k >= 161 and k <= 162) then
					input <= '0';
				end if;
				
				if(k >= 260 and k <= 265) then
					txn <= '1';
				end if;
		  
		end loop;
WAIT;                                                        
END PROCESS always;    


clk_process : process

begin
	for k in 0 to 500 loop
		  
		CLK <= '0'; 
		  wait for half_clk_period;
		CLK <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;                                          
END tst_arch;
