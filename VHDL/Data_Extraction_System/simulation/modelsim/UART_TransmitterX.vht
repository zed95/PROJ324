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
-- Generated on "04/25/2019 17:26:01"
                                                            
-- Vhdl Test Bench template for design  :  UART_TransmitterX
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
use ieee.numeric_std.all;                                

ENTITY UART_TransmitterX_vhd_tst IS
END UART_TransmitterX_vhd_tst;
ARCHITECTURE UART_TransmitterX_arch OF UART_TransmitterX_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DoneRx : STD_LOGIC;
SIGNAL oTx : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
COMPONENT UART_TransmitterX
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DoneRx : IN STD_LOGIC;
	oTx : OUT STD_LOGIC;
	Start : IN STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : UART_TransmitterX
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	DoneRx => DoneRx,
	oTx => oTx,
	Start => Start
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
type state_type is (IDLE, waitData, readData, prepareTx, Txstrb, Txdb, Txstpb);
variable state : state_type := IDLE;
variable inactiveTime : integer := 100;
--Data Geneataytion Variables
variable waitDataCounter : integer := 0;
variable multiplier : integer := 1;
variable inputValue : integer := 770;
variable firstValue : integer := 0;
--Data Geneataytion Variables
variable startState : std_logic := '0';   
variable samplesRead : integer := 0; 
variable DoneRxState : std_logic := '0';   
variable cnt : integer := 0;                          
BEGIN  
for k in 0 to 10000 loop                                                       
  wait until rising_edge(clk);
	case state is 
		when IDLE =>
			firstValue := 0;
			if(k >= inactiveTime) then
				startState := '1';
				state := waitData;
			end if;
			
			--Input Signals
			Start <= startState;
			dataIn <= std_logic_vector(to_unsigned(0, dataIn'length));	--Test Output
		when waitData =>
			startState := '0';
			DoneRxState := '0';
		
			if(waitDataCounter = 20) then
				waitDataCounter := 0;
				state := readData; 
			else
				if(waitDataCounter = 19) then
					firstValue := 1;
				end if;
				waitDataCounter := waitDataCounter + 1;
			end if;
		
			--Input Signals
			Start <= startState;
			dataIn <= std_logic_vector(to_unsigned(firstValue, dataIn'length));	--Test Output
			
		when readData =>
			startState := '0';
			firstValue := 0;
		
			if(waitDataCounter = 20) then
				DoneRxState := '1';
				waitDataCounter := 0;
				if(samplesRead = 6) then
					samplesRead := 0;
					state := prepareTx;
				else
					samplesRead := samplesRead + 1;
					inputValue := 770 + ((multiplier - 1) * 514);
					 multiplier := multiplier + 1;
				end if;
			else
				DoneRxState := '0';
				waitDataCounter := waitDataCounter + 1;
			end if;
		
			--Input Signals
			Start <= startState;
			DoneRx <= DoneRxState;
			dataIn <= std_logic_vector(to_unsigned(inputValue, dataIn'length));	--Test Output
		when prepareTx =>
			DoneRxState := '0';
			startState := '0';
		
			if(cnt = 1200) then
				cnt := 0;
				state := IDLE;
				inactiveTime := k + 100;
			else
				cnt := cnt + 1;
			end if;
			--Input Signals
			Start <= startState;
		when Txstrb =>
		
			--Input Signals
			Start <= startState;
		when txdb =>
		
		
			--Input Signals
			Start <= startState;
		when Txstpb =>
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
                                        
END UART_TransmitterX_arch;
