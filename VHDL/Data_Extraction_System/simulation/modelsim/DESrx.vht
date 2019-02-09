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
-- Generated on "02/08/2019 22:27:51"
                                                            
-- Vhdl Test Bench template for design  :  DESrx
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DESrx_vhd_tst IS
END DESrx_vhd_tst;
ARCHITECTURE DESrx_arch OF DESrx_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bufferEmpty : STD_LOGIC := '1';
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL DONErx : STD_LOGIC := '0';
SIGNAL EXTRACT : STD_LOGIC := '0';
SIGNAL NEXT_ADD : STD_LOGIC := '0';
SIGNAL STORE : STD_LOGIC := '0';
COMPONENT DESrx
	PORT (
	bufferEmpty : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	DONErx : IN STD_LOGIC;
	EXTRACT : BUFFER STD_LOGIC;
	NEXT_ADD : BUFFER STD_LOGIC;
	STORE : BUFFER STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : DESrx
	PORT MAP (
-- list connections between master ports and signals
	bufferEmpty => bufferEmpty,
	CLK => CLK,
	DONErx => DONErx,
	EXTRACT => EXTRACT,
	NEXT_ADD => NEXT_ADD,
	STORE => STORE
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
variable x : integer := 0;                                     
BEGIN                                                         
         for k in 0 to 1000 loop   
				wait until rising_edge(clk);
				
			end loop
WAIT;                                                        
END PROCESS always;     

clk_process : process

begin
	for k in 0 to 1000 loop
		  
		CLK <= '0'; 
		  wait for half_clk_period;
		CLK <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;
                                     
END DESrx_arch;
