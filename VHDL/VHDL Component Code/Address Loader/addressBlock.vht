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
-- Generated on "03/09/2019 13:42:45"
                                                            
-- Vhdl Test Bench template for design  :  addressBlock
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addressBlock_vhd_tst IS
END addressBlock_vhd_tst;
ARCHITECTURE addressBlock_arch OF addressBlock_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDRESS : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL CLK : STD_LOGIC;
SIGNAL NXTADD : STD_LOGIC	:= '0';
COMPONENT addressBlock
	PORT (
	ADDRESS : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	CLK : IN STD_LOGIC;
	NXTADD : IN STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : addressBlock
	PORT MAP (
-- list connections between master ports and signals
	ADDRESS => ADDRESS,
	CLK => CLK,
	NXTADD => NXTADD
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
variable state 			: integer := 0;  
variable inactiveTime 	: integer := 100;
variable waitingCounter : integer := 0;
variable NXTADD_state 	: std_logic := '0'; 
variable addressNumber 	: integer := 0;                                 
BEGIN                                                         
   for k in 0 to 5000 loop
		wait until rising_edge(clk);
			case state is 
				when 0 =>
					if(k = inactiveTime) then
						state := 1;
					end if;
					--Output Signals
						
				when 1 =>
					NXTADD_state := '1';
					state := 2;
					--Output Signals
					NXTADD <= NXTADD_state;
					
				when 2 =>
					NXTADD_state := '0';
					if(waitingCounter = 20) then
						waitingCounter := 0;
						state := 3;
					else
						waitingCounter := waitingCounter + 1;
					end if;
					--Output Signals
					NXTADD <= NXTADD_state;
					
				when 3 =>
					if(addressNumber = 11) then
						addressNumber := 0;
						state := 0;
						inactiveTime := k + 300;					--Make the buffer empty signal zero for 300 cycles
					else
						addressNumber := addressNumber + 1;
						state := 1;
					end if;
					--Output Signals
					NXTADD <= NXTADD_state;
				
				when others =>
			end case;
	
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
                                        
END addressBlock_arch;
