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
-- Generated on "03/08/2019 01:39:40"
                                                            
-- Vhdl Test Bench template for design  :  DEStx
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DEStx_vhd_tst IS
END DEStx_vhd_tst;
ARCHITECTURE DEStx_arch OF DEStx_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bufferEmpty : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL DONEtx : STD_LOGIC;
SIGNAL NEXT_DAT : STD_LOGIC;
SIGNAL R2S : STD_LOGIC;
SIGNAL sTx : STD_LOGIC;
SIGNAL TRANSMIT : STD_LOGIC;
COMPONENT DEStx
	PORT (
	bufferEmpty : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	DONEtx : IN STD_LOGIC;
	NEXT_DAT : BUFFER STD_LOGIC;
	R2S : BUFFER STD_LOGIC;
	sTx : IN STD_LOGIC;
	TRANSMIT : BUFFER STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : DEStx
	PORT MAP (
-- list connections between master ports and signals
	bufferEmpty => bufferEmpty,
	CLK => CLK,
	DONEtx => DONEtx,
	NEXT_DAT => NEXT_DAT,
	R2S => R2S,
	sTx => sTx,
	TRANSMIT => TRANSMIT
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
variable bufferEmptyState : std_logic := '1'; 
variable doneTxState : std_logic := '0';
variable wait_tx_counter : integer := 0; 
variable sTx_state : std_logic := '0'; 
variable waitingCounter : integer := 0;
variable samplesSent : integer := 0;  
variable waitBfrSignal : integer := 0;                             
BEGIN                                                         
  for k in 0 to 5000 loop
		wait until rising_edge(clk);
		case state is
			when 0 =>											--The Idle state
				if(k >= inactiveTime) then
					bufferEmptyState := '0';				--Change the bufferEmpty signal to 1 to indicate to the controller that buffer needs filling
					state := 1;									--change state
				end if;
				--Output Signals
				sTx <= sTx_state;
				bufferEmpty <= bufferEmptyState;
				DONEtx <= doneTxState;
			
			when 1 =>
				if(wait_tx_counter = 5) then
					wait_tx_counter := 0;
					sTx_state := '1';
					state := 2;
				else
					wait_tx_counter := wait_tx_counter + 1;
				end if;
				--Output Signals
				sTx <= sTx_state;
				bufferEmpty <= bufferEmptyState;
				DONEtx <= doneTxState;
				
			when 2 =>
				state := 3;
				sTx_state := '0';
				--Output Signals
				sTx <= sTx_state;
				bufferEmpty <= bufferEmptyState;
				DONEtx <= doneTxState;
			
			when 3 =>
				--Count until 20 before considering the receive process finished
				--The sample extraction usually takes a bit less than that but for testing purposes
				--it can be assumed to be 20.
				if(waitingCounter = 20) then
					state := 4;
					waitingCounter := 0;							--reset the counter to use for next time
					doneTxState := '1';							--Signal to the controller indicating that spi finished extracting sample
				else
					waitingCounter := waitingCounter + 1;
				end if;
				--Output Signals
				sTx <= sTx_state;
				bufferEmpty <= bufferEmptyState;
				DONEtx <= doneTxState;
			
			when 4 =>
				doneTxState := '0';
				if(samplesSent = 11) then					--if all samples have been extracted then change state
					samplesSent := 0;
					state := 5;
				else													--otherwie continue extracting
					samplesSent := samplesSent + 1;
					state := 2;
				end if;
				--Output Signals
				sTx <= sTx_state;
				bufferEmpty <= bufferEmptyState;
				DONEtx <= doneTxState;
			
			when 5 =>												--The WAIT4BFFR state
				if(waitBfrSignal = 5) then						--if buffer has finished with its internal processes then 
					inactiveTime := k + 300;					--Make the buffer empty signal zero for 300 cycles
					waitBfrSignal := 0;
					bufferEmptyState := '1';				
					state := 0;
				else													--otherwise wait until it does
					waitBfrSignal := waitBfrSignal + 1;
				end if;
				--Output Signals
				bufferEmpty <= bufferEmptyState;				--update the input
				DONEtx <= doneTxState;							--update the input
				sTx <= sTx_state;
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

                                         
END DEStx_arch;
