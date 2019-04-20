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
-- Generated on "04/02/2019 19:58:51"
                                                            
-- Vhdl Test Bench template for design  :  UART_Transmitter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;                               

ENTITY UART_Transmitter_vhd_tst IS
END UART_Transmitter_vhd_tst;
ARCHITECTURE UART_Transmitter_arch OF UART_Transmitter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC	:= '0';
SIGNAL clkCnt : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL DoneTx : STD_LOGIC	:= '0';
SIGNAL iTx : STD_LOGIC_VECTOR(7 DOWNTO 0)	:= "00000000";
SIGNAL oTx : STD_LOGIC	:= '0';
SIGNAL strtTx : STD_LOGIC	:= '0';
COMPONENT UART_Transmitter
	PORT (
	clk : IN STD_LOGIC;
	clkCnt : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DoneTx : OUT STD_LOGIC;
	iTx : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	oTx : OUT STD_LOGIC;
	strtTx : IN STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : UART_Transmitter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clkCnt => clkCnt,
	DoneTx => DoneTx,
	iTx => iTx,
	oTx => oTx,
	strtTx => strtTx
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
variable state : integer := 0; 
variable inactiveTime : integer := 100; 
variable strtTxState : std_logic := '0';
variable inputValue : integer := 0;                                       
BEGIN                                                         
   for k in 0 to 10000 loop
		wait until rising_edge(clk);
			case state is
				when 0 =>
					if(k >= inactiveTime) then
						inputValue := inputValue + 5;
						strtTxState := '1';
						state := 1;
					end if;
					
					--Output Signals
					strtTx <= strtTxState;
					iTx <= std_logic_vector(to_unsigned(inputValue, iTx'length));	--Test Output
					
				when 1 =>
					strtTxState := '0';
					state := 2;

					--Output Signals
					strtTx <= strtTxState;
					iTx <= std_logic_vector(to_unsigned(inputValue, iTx'length));	--Test Output
					
				when 2 =>
					if(DoneTx = '1') then
						inactiveTime := k + 100;	
						state := 0;
					end if;
					
					--Output Signals
					strtTx <= strtTxState;
					iTx <= std_logic_vector(to_unsigned(inputValue, iTx'length));	--Test Output					
			when others =>
			end case;
	end loop;
WAIT;                                                        
END PROCESS always;  

clk_process : process

begin
	for k in 0 to 10000 loop
		  
		CLK <= '0'; 
		  wait for half_clk_period;
		CLK <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;
                                        
END UART_Transmitter_arch;
