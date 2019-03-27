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
-- Generated on "03/27/2019 23:31:39"
                                                            
-- Vhdl Test Bench template for design  :  FIFObufferWC
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FIFObufferWC_vhd_tst IS
END FIFObufferWC_vhd_tst;
ARCHITECTURE FIFObufferWC_arch OF FIFObufferWC_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL empty : STD_LOGIC;
SIGNAL sendData : STD_LOGIC;
SIGNAL store_ID : STD_LOGIC;
SIGNAL storeData : STD_LOGIC;
COMPONENT FIFObufferWC
	PORT (
	CLK : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	empty : OUT STD_LOGIC;
	sendData : IN STD_LOGIC;
	store_ID : IN STD_LOGIC;
	storeData : IN STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : FIFObufferWC
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	dataIn => dataIn,
	dataOut => dataOut,
	empty => empty,
	sendData => sendData,
	store_ID => store_ID,
	storeData => storeData
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
variable state : integer:= 0; 
                                     
BEGIN                                                         
   for k in 0 to 5000 loop
		wait until rising_edge(CLK);
	
	end loop;
WAIT;                                                        
END PROCESS always; 

clk_process : process

begin
	for k in 0 to 5000 loop
		  
		CLK <= '0'; 
		  wait for half_clk_period;
		CLK <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process; 
                                         
END FIFObufferWC_arch;
