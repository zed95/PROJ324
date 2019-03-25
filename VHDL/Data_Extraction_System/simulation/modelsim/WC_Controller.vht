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
-- Generated on "03/23/2019 17:07:10"
                                                            
-- Vhdl Test Bench template for design  :  WC_Controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY WC_Controller_vhd_tst IS
END WC_Controller_vhd_tst;
ARCHITECTURE WC_Controller_arch OF WC_Controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bufferEmpty : STD_LOGIC := '0';
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL DONErx : STD_LOGIC := '0';
SIGNAL DONEtx : STD_LOGIC := '0';
SIGNAL ID_Checked : STD_LOGIC := '0';
SIGNAL ID_Matched : STD_LOGIC := '0';
SIGNAL NEXT_DAT : STD_LOGIC := '0';
SIGNAL SEND : STD_LOGIC := '0';
SIGNAL SEND_REQUEST : STD_LOGIC := '0';
SIGNAL STORE : STD_LOGIC := '0';
SIGNAL STORE_ID : STD_LOGIC := '0';
COMPONENT WC_Controller
	PORT (
	bufferEmpty : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	DONErx : IN STD_LOGIC;
	DONEtx : IN STD_LOGIC;
	ID_Checked : IN STD_LOGIC;
	ID_Matched : IN STD_LOGIC;
	NEXT_DAT : OUT STD_LOGIC;
	SEND : OUT STD_LOGIC;
	SEND_REQUEST : OUT STD_LOGIC;
	STORE : OUT STD_LOGIC;
	STORE_ID : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : WC_Controller
	PORT MAP (
-- list connections between master ports and signals
	bufferEmpty => bufferEmpty,
	CLK => CLK,
	DONErx => DONErx,
	DONEtx => DONEtx,
	ID_Checked => ID_Checked,
	ID_Matched => ID_Matched,
	NEXT_DAT => NEXT_DAT,
	SEND => SEND,
	SEND_REQUEST => SEND_REQUEST,
	STORE => STORE,
	STORE_ID => STORE_ID
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
variable Wait_IDChecked_Counter : integer := 0;
variable matchFlag : std_logic := '0';
variable waitingCounter : integer := 0;
variable transactionNumber : integer := 0;
variable waitBfrSignal : integer := 0;
variable BluetoothTxCoutner : integer := 0;

--Input States
variable bufferEmptyState : std_logic := '0'; 
variable ID_Checked_State : std_logic := '0';  
variable ID_Matched_State : std_logic := '0'; 
variable doneTxState : std_logic := '0';
variable doneRxState : std_logic := '0';                                  
BEGIN                                                         
   for k in 0 to 10000 loop
		wait until rising_edge(clk); 
			case state is
				when 0 =>
					if(k >= inactiveTime) then
						bufferEmptyState := '1';				--Change the bufferEmpty signal to 1 to indicate to the controller that buffer needs filling
						state := 1;									--change state
					end if;
					
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------IDLE
				when 1 =>
					state := 2;
					
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------RequestData					
				when 2 =>
					if(Wait_IDChecked_Counter = 20)  then
						if(matchFlag = '1') then
							ID_Matched_State := '1';
							matchFlag := '1';
						else
							ID_Matched_State := '0';
							matchFlag := '1';
						end if;
						Wait_IDChecked_Counter := 0;
						ID_Checked_State := '1';
						state := 3;
					else
						Wait_IDChecked_Counter := Wait_IDChecked_Counter + 1;
					end if;
				
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------WAIT_ID
				when 3 =>
					ID_Checked_State := '0';
					if(ID_Matched_State = '1') then
						state := 4;
					else
						state := 1;
					end if;
					
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------RESULT
				when 4 =>
					state := 5;
					
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------STOREID
				when 5 =>
					if(waitingCounter = 20) then
						waitingCounter := 0;
						doneRxState := '1';
						state := 6;
						
					else
						waitingCounter := waitingCounter + 1;
						state := 5;
					end if;
					
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------WAITINGrx
				when 6 =>
					doneRxState := '0';
					
					if(transactionNumber = 5) then
						transactionNumber := 0;
						state := 7;
					else
						transactionNumber := transactionNumber + 1;
						state := 5;
					end if;
		
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------STORE_DATA			
				when 7 =>
					if(waitBfrSignal = 5) then
						waitBfrSignal := 0;
						bufferEmptyState := '0';
						state := 8;
					else
						waitBfrSignal := waitBfrSignal + 1;
						state := 7;
					end if;
					
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------W4BFFR_full
				when 8 =>
					state := 9;

					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;					
--------------------------------------------------------------------------------------------------SEND_DATA
				when 9 =>
					if(waitingCounter = 90) then
						waitingCounter := 0;
						doneTxState := '1';
						state := 10;
						
					else
						waitingCounter := waitingCounter + 1;
						state := 9;
					end if;

					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;
--------------------------------------------------------------------------------------------------WAITINGtx
				when 10 =>
					doneTxState := '0';
				
					if(BluetoothTxCoutner = 12) then
						BluetoothTxCoutner := 0;
						state := 11;
					else
						BluetoothTxCoutner := BluetoothTxCoutner + 1;
						state := 8;
					end if;
					
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;
--------------------------------------------------------------------------------------------------NXTtx
				when 11 =>
					if(waitBfrSignal = 5) then
						waitBfrSignal := 0;
						bufferEmptyState := '0';
						--inactiveTime := k + 300;					--Make the buffer empty signal zero for 300 cycles						
						state := 0;
					else
						waitBfrSignal := waitBfrSignal + 1;
						state := 11;
					end if;
					
					--Output Signals
					bufferEmpty <= bufferEmptyState;
					ID_Checked <= ID_Checked_State ;
					ID_Matched <= ID_Matched_State;
					DONErx <= doneRxState;
					DONEtx <= doneTxState;
--------------------------------------------------------------------------------------------------W4BFFR_empty					
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
                                        
END WC_Controller_arch;
