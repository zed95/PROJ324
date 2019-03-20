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
-- Generated on "03/10/2019 10:51:14"
                                                            
-- Vhdl Test Bench template for design  :  accessControl
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;

ENTITY accessControl_vhd_tst IS
END accessControl_vhd_tst;
ARCHITECTURE accessControl_arch OF accessControl_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL dataIMU0 : STD_LOGIC_VECTOR(15 DOWNTO 0)	:= "0000000000000000";
SIGNAL dataIMU1 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL dataIMU2 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL dataIMU3 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL dataIMU4 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL dataIMU5 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL dataOut : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL r2sIMU : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
SIGNAL strtTx : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
SIGNAL TRANSMIT : STD_LOGIC := '0';
SIGNAL txIMU : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
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
variable state : integer := 0; 
variable inactiveTime : integer := 100;
variable state_R2S : std_logic_vector(5 downto 0) :=  "000000";
variable txIMU_state : std_logic_vector(5 downto 0) := "000000";
variable waitingCounter : integer := 0;
variable samplesSent : integer := 1; 
variable dataIMU0_state : std_logic_vector(15 downto 0) := "0000000000000000";
variable flag	: std_logic := '0';
variable waitCount : integer := 0;
                                    
BEGIN                                                         
    for k in 0 to 5000 loop
		wait until rising_edge(clk);
			case state is
				when 0 =>
					if(k = inactiveTime) then
						state := 1;
												if(flag = '0') then
							state_R2S := (0 => '1',others => '0');
						else
							state_R2S := (1 => '1',others => '0');
						end if;
					end if;
					
					--Output Signals
					r2sIMU <= state_R2S;
					if(flag = '0') then
						txIMU <= txIMU_state;
						dataIMU0 <= dataIMU0_state;
						dataIMU1 <= (0 => '0',others => '0');
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					else
						txIMU <= txIMU_state;
						dataIMU0 <= (0 => '0',others => '0');
						dataIMU1 <= dataIMU0_state;
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					end if;
					
				when 1 =>
					if(waitCount = 5) then
						state := 2;
						waitCount := 0;
					else
						state := 1;
						waitCount := waitCount + 1;
					end if;
					--Output Signals
					r2sIMU <= state_R2S;
					txIMU <= txIMU_state;
					
					if(flag = '0') then
						txIMU <= txIMU_state;
						dataIMU0 <= dataIMU0_state;
						dataIMU1 <= (0 => '0',others => '0');
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					else
						txIMU <= txIMU_state;
						dataIMU0 <= (0 => '0',others => '0');
						dataIMU1 <= dataIMU0_state;
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					end if;
				when 2 =>
					state := 3;
					if(flag = '0') then
						txIMU_state := (0 => '1',others => '0');
					else
						txIMU_state := (1 => '1',others => '0');
					end if;
					--Output Signals
					r2sIMU <= state_R2S;
					txIMU <= txIMU_state;
					if(flag = '0') then
						txIMU <= txIMU_state;
						dataIMU0 <= dataIMU0_state;
						dataIMU1 <= (0 => '0',others => '0');
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					else
						txIMU <= txIMU_state;
						dataIMU0 <= (0 => '0',others => '0');
						dataIMU1 <= dataIMU0_state;
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					end if;
					
				when 3 =>
					if(flag = '0') then
						txIMU_state := (0 => '0',others => '0');
					else
						txIMU_state := (1 => '0',others => '0');
					end if;
					
					if(waitingCounter = 20) then
						waitingCounter := 0;
						state := 4;
					else
						waitingCounter := waitingCounter + 1;
					end if;
					--Output Signals
					r2sIMU <= state_R2S;
					txIMU <= txIMU_state;
					if(flag = '0') then
						txIMU <= txIMU_state;
						dataIMU0 <= dataIMU0_state;
						dataIMU1 <= (0 => '0',others => '0');
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					else
						txIMU <= txIMU_state;
						dataIMU0 <= (0 => '0',others => '0');
						dataIMU1 <= dataIMU0_state;
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					end if;
					
				when 4 =>
					if(samplesSent = 12) then
						state := 0;
						state_R2S := (0 => '0',others => '0');
						inactiveTime := k + 300;
						samplesSent := 1;
						if(flag = '0') then
							state_R2S := (0 => '0',others => '0');
							flag := '1';
						else
							state_R2S := (1 => '0',others => '0');
							flag := '0';
						end if;
					else
						samplesSent := samplesSent + 1;
						state := 2;
					end if;
					dataIMU0_state := std_logic_vector(to_unsigned(samplesSent, dataIMU0_state'length));
					--Output Signals
					r2sIMU <= state_R2S;	
					txIMU <= txIMU_state;					
					if(flag = '0') then
						txIMU <= txIMU_state;
						dataIMU0 <= dataIMU0_state;
						dataIMU1 <= (0 => '0',others => '0');
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					else
						txIMU <= txIMU_state;
						dataIMU0 <= (0 => '0',others => '0');
						dataIMU1 <= dataIMU0_state;
						dataIMU2 <= (0 => '0',others => '0');
						dataIMU3 <= (0 => '0',others => '0');
						dataIMU4 <= (0 => '0',others => '0');
						dataIMU5 <= (0 => '0',others => '0');
					end if;
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
                                          
END accessControl_arch;
