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
-- Generated on "02/08/2019 19:41:19"
                                                            
-- Vhdl Test Bench template for design  :  accessControl
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY accessControl_vhd_tst IS
END accessControl_vhd_tst;
ARCHITECTURE accessControl_arch OF accessControl_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL dataIMU0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dataIMU1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dataIMU2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dataIMU3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dataIMU4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dataIMU5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL r2sIMU : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL strtTx : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL TRANSMIT : STD_LOGIC;
SIGNAL txIMU : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT accessControl
	PORT (
	CLK : IN STD_LOGIC;
	dataIMU0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dataIMU1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dataIMU2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dataIMU3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dataIMU4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dataIMU5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	r2sIMU : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	strtTx : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	TRANSMIT : OUT STD_LOGIC;
	txIMU : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : accessControl
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	dataIMU0 => dataIMU0,
	dataIMU1 => dataIMU1,
	dataIMU2 => dataIMU2,
	dataIMU3 => dataIMU3,
	dataIMU4 => dataIMU4,
	dataIMU5 => dataIMU5,
	dataOut => dataOut,
	r2sIMU => r2sIMU,
	strtTx => strtTx,
	TRANSMIT => TRANSMIT,
	txIMU => txIMU
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
			r2sIMU <= "000001";
			if(strtTx = "000001") then
				if(k >= 60) then
					txIMU <= "000001";
				end if;
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

                                       
END accessControl_arch;
