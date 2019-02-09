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
-- Generated on "02/09/2019 12:23:09"
                                                            
-- Vhdl Test Bench template for design  :  SPIpulse1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SPIpulse1_vhd_tst IS
END SPIpulse1_vhd_tst;
ARCHITECTURE SPIpulse1_arch OF SPIpulse1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50MHz : STD_LOGIC;
SIGNAL CS : STD_LOGIC;
SIGNAL MISO : STD_LOGIC;
SIGNAL MOSI : STD_LOGIC;
SIGNAL MSTR_CLK : STD_LOGIC;
COMPONENT SPIpulse1
	PORT (
	CLK_50MHz : IN STD_LOGIC;
	CS : OUT STD_LOGIC;
	MISO : IN STD_LOGIC;
	MOSI : OUT STD_LOGIC;
	MSTR_CLK : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 10 ns;

BEGIN
	i1 : SPIpulse1
	PORT MAP (
-- list connections between master ports and signals
	CLK_50MHz => CLK_50MHz,
	CS => CS,
	MISO => MISO,
	MOSI => MOSI,
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
         for k in 0 to 1000000 loop   
				wait until rising_edge(CLK_50MHz);
			end loop;  
WAIT;                                                        
END PROCESS always;  

clk_process : process

begin
	for k in 0 to 1000000 loop
		  
		CLK_50MHz <= '0'; 
		  wait for half_clk_period;
		CLK_50MHz <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;                                          
END SPIpulse1_arch;
