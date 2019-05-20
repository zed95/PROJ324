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
-- Generated on "05/19/2019 17:31:12"
                                                            
-- Vhdl Test Bench template for design  :  spi_master1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY spi_master1_vhd_tst IS
END spi_master1_vhd_tst;
ARCHITECTURE spi_master1_arch OF spi_master1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL CLKO : STD_LOGIC;
SIGNAL CS : STD_LOGIC;
SIGNAL fPulse : STD_LOGIC	:= '0';
SIGNAL MISO : STD_LOGIC;
SIGNAL MOSI : STD_LOGIC;
SIGNAL rx_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL transmit : STD_LOGIC;
SIGNAL tx_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT spi_master1
	PORT (
	clk : IN STD_LOGIC;
	CLKO : OUT STD_LOGIC;
	CS : OUT STD_LOGIC;
	fPulse : OUT STD_LOGIC;
	MISO : IN STD_LOGIC;
	MOSI : OUT STD_LOGIC;
	rx_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	transmit : IN STD_LOGIC;
	tx_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : spi_master1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	CLKO => CLKO,
	CS => CS,
	fPulse => fPulse,
	MISO => MISO,
	MOSI => MOSI,
	rx_data => rx_data,
	transmit => transmit,
	tx_data => tx_data
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
                    
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
variable inactiveTime : integer := 100; 
variable counter : integer := 0;     
variable x : integer := 0;                                
BEGIN                                                         
    for k in 0 to 5000000 loop
		wait until rising_edge(clk);
			if(k = inactiveTime) then	
				tx_data <= "1000100110010100";
				transmit <= '1';
				x := 0;
			else
				transmit <= '0';
			end if;
			
			case x is 
				when 0 =>
					MISO <= '0';
				when 1 =>
					MISO <= '1';
				when 2 =>
					MISO <= '1';
				when 3 =>
					MISO <= '1';
				when 4 =>
					MISO <= '0';
				when 5 =>
					MISO <= '1';
				when 6 =>
					MISO <= '0';
				when 7 =>
					MISO <= '0';
				when 8 =>
					MISO <= '0';
				when 9 =>
					MISO <= '0';
				when 10 =>
					MISO <= '1';
				when 11 =>
					MISO <= '0';
				when 12 =>
					MISO <= '1';
				when 13 =>
					MISO <= '1';
				when 14 =>
					MISO <= '0';
				when 15 =>
					MISO <= '0';
				when others =>
					MISO <= '0';
			end case;
			
			if(x = 16) then
				
			else
				x := x + 1;
			end if;
			
			if(fPulse = '1') then
				inactiveTime := k + 1;
			else
				
			end if;
			
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

                                         
END spi_master1_arch;
