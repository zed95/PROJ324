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
-- Generated on "04/25/2019 20:16:11"
                                                            
-- Vhdl Test Bench template for design  :  UART_Receiver
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UART_Receiver_vhd_tst IS
END UART_Receiver_vhd_tst;
ARCHITECTURE UART_Receiver_arch OF UART_Receiver_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL iRx : STD_LOGIC;
SIGNAL oRx : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
SIGNAL sendRequest : STD_LOGIC;
COMPONENT UART_Receiver
	PORT (
	clk : IN STD_LOGIC;
	iRx : IN STD_LOGIC;
	oRx : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reset : IN STD_LOGIC;
	sendRequest : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : UART_Receiver
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	iRx => iRx,
	oRx => oRx,
	Reset => Reset,
	sendRequest => sendRequest
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
type state_type is (IDLE, Rxstrb, Rxdb, Rxstpb, sndRequest);
variable state : state_type := IDLE;

variable inactiveTime : integer := 100; 
variable strtTxState : std_logic := '0';
variable inputValue : integer := 0;  
variable iRxState : std_logic := '1'; 
variable cnt : integer := 0; 	
variable bitn : integer := 0;
variable resetCounter : integer := 0;
variable resetState : std_logic := '0';
BEGIN                                                         
   for k in 0 to 10000 loop
		wait until rising_edge(clk);
			case state is 
			when IDLE =>
				iRxState := '1';
				resetState := '0';
				
				if(k >= inactiveTime) then
					state := Rxstrb;
				end if;	
				
			--Input Signals
				iRx <= iRxState;
				Reset <= resetState;
			when Rxstrb =>
				iRxState := '0';
				resetState := '0';
				
				
				if(cnt = 8) then				
					cnt := 0;
					state := Rxdb;
				else
					cnt := cnt + 1;
				end if;
				
			--Input Signals
				iRx <= iRxState;
				Reset <= resetState;
				
			when Rxdb =>
			if(resetCounter = 4) then
				state := IDLE;
				resetState := '1';
				inactiveTime := k + 100;	
				
			else
				if(cnt = 8) then
					cnt := 0;
					if(bitn = 7) then
						state := Rxstpb;
						bitn := 0;
					else
						bitn := bitn + 1;
					end if;
				else
					cnt := cnt + 1;
					if(bitn = 1 or bitn = 4 or bitn = 6) then
						iRxState := '1';
					else
						iRxState := '0';
					end if;
				end if;
			end if;
				
			--Input Signals
				iRx <= iRxState;
				Reset <= resetState;				
			when Rxstpb =>
				iRxState := '1';
				resetState := '0';
				
				if(cnt = 8) then
					cnt := 0;
					state := sndRequest;
				else
					cnt := cnt + 1;
				end if;
				
			--Input Signals
				iRx <= iRxState;
				Reset <= resetState;				
			when sndRequest =>
				iRxState := '1';
				resetState := '0';
				
				resetCounter := resetCounter + 1;
				inactiveTime := k + 100;	
				state := IDLE;
				
			--Input Signals
				iRx <= iRxState;
				Reset <= resetState;				
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
                                        
END UART_Receiver_arch;
