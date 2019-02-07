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
-- Generated on "02/07/2019 15:23:12"
                                                            
-- Vhdl Test Bench template for design  :  FIFObuffer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;                                

ENTITY FIFObuffer_vhd_tst IS
END FIFObuffer_vhd_tst;
ARCHITECTURE FIFObuffer_arch OF FIFObuffer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL empty : STD_LOGIC;
SIGNAL sendData : STD_LOGIC;
SIGNAL storeData : STD_LOGIC;
COMPONENT FIFObuffer
	PORT (
	CLK : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	empty : OUT STD_LOGIC;
	sendData : IN STD_LOGIC;
	storeData : IN STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : FIFObuffer
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	dataIn => dataIn,
	dataOut => dataOut,
	empty => empty,
	sendData => sendData,
	storeData => storeData
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
Variable x : std_logic_vector(15 downto 0); 
variable count : integer := 0;  
variable m : integer := 20; 
variable n : integer := 0;                                
BEGIN                                                         
        for k in 0 to 500 loop
			wait until rising_edge(clk);
			if(k = m and n < 12 and k < 250) then
				storeData <= '1';
				m := m + 10;
				count := count + 1;
				n := n + 1;
			else
				storeData <= '0';
			end if;
			dataIN <= std_logic_vector(to_unsigned(count, x'length));
			
			if(k >= 250) then
				if(k = 250) then
					m := 270;
				end if;
				if(k = m and n /= 0) then
					sendData <= '1';
					m := m + 10;
					n := n - 1;
				else
					sendData <= '0';
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

                                        
END FIFObuffer_arch;