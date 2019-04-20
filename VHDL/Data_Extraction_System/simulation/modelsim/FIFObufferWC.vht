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
use ieee.numeric_std.all;                                 

ENTITY FIFObufferWC_vhd_tst IS
END FIFObufferWC_vhd_tst;
ARCHITECTURE FIFObufferWC_arch OF FIFObufferWC_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL dataIn : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
SIGNAL empty : STD_LOGIC	:= '1';
SIGNAL sendData : STD_LOGIC := '0';
SIGNAL store_ID : STD_LOGIC := '0';
SIGNAL storeData : STD_LOGIC := '0';
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
variable state 				: integer:= 0; 
variable storeData_state	: std_logic := '0';
variable sendData_state	: std_logic := '0';
variable inactiveTime 		: integer := 100;
variable waitingCounter 	: integer := 0; 
variable samplesRead 		: integer := 0;
variable data_samples		: std_logic_vector(15 downto 0) := "0000000000000000"; 
variable sampleCount 		: integer := 0; 
variable time2send			: std_logic := '1';
variable IDsend				: std_logic := '1';
variable storeIDState		: std_logic := '0';
variable n						: integer := 6;
                                     
BEGIN                                                         
   for k in 0 to 5000 loop
		wait until rising_edge(CLK);
		case state is
			when 0 =>
				if(k = inactiveTime) then
					if(time2send = '1') then
						time2send := '0';
					else
						time2send := '1';
					end if;
						state := 1;
				
				end if;
			--Output Signal
			storeData <= storeData_state;
			dataIn <= data_samples; 
			store_ID  <= storeIDState;
			sendData <= sendData_state;
			when 1 =>
				if(time2send = '0') then
					if(IDsend = '1') then
						storeIDState := '1';
						IDsend := '0';
					else
						storeData_state := '1';
					end if;
					sampleCount := sampleCount + 1;
					data_samples := std_logic_vector(to_unsigned(sampleCount, data_samples'length));
				else
					sendData_state := '1';
				end if;
				
				state := 2;
				--Output Signal
				storeData <= storeData_state;
				dataIn <= data_samples; 
				sendData <= sendData_state;
				store_ID  <= storeIDState;
			
			when 2 =>
				storeData_state := '0';
				sendData_state := '0';
				storeIDState := '0';
				state := 3;
				
				--Output Signal
				storeData <= storeData_state;
				dataIn <= data_samples;
				sendData <= sendData_state;
				store_ID  <= storeIDState;
				
			when 3 =>
				if(waitingCounter = 20) then
					state := 4;
					waitingCounter := 0;
				else
					waitingCounter := waitingCounter + 1;
				end if;
				
				--Output Signal
				storeData <= storeData_state;	
				dataIn <= data_samples;
			   sendData <= sendData_state;
				store_ID  <= storeIDState;	
				
			when 4 =>
				if(time2send = '0') then
					n := 6;
				else
					n := 12;
				end if;
				
				if(samplesRead = n) then
					IDsend := '1';
					state := 0;
					--sampleCount := 0;
					samplesRead := 0;
					inactiveTime := k + 300;					--Make the buffer empty signal zero for 300 cycles
				else 
					state := 1;
					samplesRead := samplesRead + 1;
				end if;
				
				--Output Signal
				storeData <= storeData_state;
				dataIn <= data_samples;
			   sendData <= sendData_state;
				store_ID  <= storeIDState;
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
                                         
END FIFObufferWC_arch;
