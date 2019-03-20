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
-- Generated on "03/05/2019 19:31:46"
                                                            
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
SIGNAL bufferEmpty : STD_LOGIC := '0';
SIGNAL CLK : STD_LOGIC;
SIGNAL DONErx : STD_LOGIC	:= '0';
SIGNAL EXTRACT : STD_LOGIC := '0';
SIGNAL NEXT_ADD : STD_LOGIC := '0';
SIGNAL STORE : STD_LOGIC := '0';
COMPONENT DESrx
	PORT (
	bufferEmpty : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	DONErx : IN STD_LOGIC;
	EXTRACT : OUT STD_LOGIC;
	NEXT_ADD : OUT STD_LOGIC;
	STORE : OUT STD_LOGIC
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
variable state : integer := 0;   
variable bufferEmptyState : std_logic := '0';
variable doneRxState		  : std_logic := '0';
variable waitingCounter : integer := 0;
variable samplesReceived : integer := 0;
variable waitBfrSignal : integer := 0;  
variable inactiveTime : integer := 100;                              
BEGIN                                                         
  for k in 0 to 5000 loop
		wait until rising_edge(clk);
		case state is
		when 0 =>											--The Idle state
			if(k >= inactiveTime) then
				bufferEmptyState := '1';				--Change the bufferEmpty signal to 1 to indicate to the controller that buffer needs filling
				state := 1;									--change state
			end if;
			bufferEmpty <= bufferEmptyState;			--update the input
			DONErx <= doneRxState;						--update the input
			
			
			
		when 1 =>											--The NXTADDR state
			state := 2;	
			bufferEmpty <= bufferEmptyState;
			DONErx <= doneRxState;
			
			
		when 2 =>											--The STRTtx state
			state := 3;
			bufferEmpty <= bufferEmptyState;
			DONErx <= doneRxState;
			
			
		when 3 =>											--WaitingRx state
			--Count until 20 before considering the receive process finished
			--The sample extraction usually takes a bit less than that but for testing purposes
			--it can be assumed to be 20.
			if(waitingCounter = 20) then
				state := 4;
				waitingCounter := 0;							--reset the counter to use for next time
				doneRxState := '1';							--Signal to the controller indicating that spi finished extracting sample
			else
				waitingCounter := waitingCounter + 1;
			end if;
			bufferEmpty <= bufferEmptyState;				--update the input
			DONErx <= doneRxState;							--update the input
			
			
			
		when 4 =>												--The STORE state
			doneRxState := '0';
			if(samplesReceived = 11) then					--if all samples have been extracted then change state
				samplesReceived := 0;
				state := 5;
			else													--otherwie continue extracting
				samplesReceived := samplesReceived + 1;
				state := 1;
			end if;
			bufferEmpty <= bufferEmptyState;				--update the input
			DONErx <= doneRxState;							--update the input
			
			
			
		when 5 =>												--The WAIT4BFFR state
			if(waitBfrSignal = 5) then						--if buffer has finished with its internal processes then 
				inactiveTime := k + 300;					--Make the buffer empty signal zero for 300 cycles
				waitBfrSignal := 0;
				bufferEmptyState := '0';				
				state := 0;
			else													--otherwise wait until it does
				waitBfrSignal := waitBfrSignal + 1;
			end if;
			bufferEmpty <= bufferEmptyState;				--update the input
			DONErx <= doneRxState;							--update the input
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
END DESrx_arch;
