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
-- Generated on "03/26/2019 11:35:09"
                                                            
-- Vhdl Test Bench template for design  :  ID_Decoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;                             

ENTITY ID_Decoder_vhd_tst IS
END ID_Decoder_vhd_tst;
ARCHITECTURE ID_Decoder_arch OF ID_Decoder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DataIn : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DONErx : STD_LOGIC;
SIGNAL ID_CHECKED : STD_LOGIC;
SIGNAL ID_MATCHED : STD_LOGIC;
COMPONENT ID_Decoder
	PORT (
	CLK : IN STD_LOGIC;
	DataIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DONErx : IN STD_LOGIC;
	ID_CHECKED : OUT STD_LOGIC;
	ID_MATCHED : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 500 ns;

BEGIN
	i1 : ID_Decoder
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DataIn => DataIn,
	DONErx => DONErx,
	ID_CHECKED => ID_CHECKED,
	ID_MATCHED => ID_MATCHED
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
variable state : integer := 0;
variable data : std_logic_vector(15 downto 0) := "0000000000000000";
variable DONErxCounter : integer := 0;   
variable DONErxState : std_logic := '0'; 
variable zeroCounter : integer := 0;
variable dataInt : integer := 0;  
variable dataNo  : integer := 0;                              
BEGIN                                                         
   for k in 0 to 5000 loop
		wait until rising_edge(clk);
			case state is 
				when 0 =>
					if(DONErxCounter = 19) then
						if(zeroCounter = 3) then
							state := 2;
							zeroCounter := 0;
							dataInt := dataInt + 1;
							data := std_logic_vector(to_unsigned(dataInt, data'length));
						else
							zeroCounter := zeroCounter + 1;
							dataInt := 0;
							data := std_logic_vector(to_unsigned(dataInt, data'length));			--Convert integer to std_logic_vecto for DataIN input.
							state := 1;
						end if;
						DONErxCounter := 0;
						DONErxState := '1';
						
					else
						DONErxCounter := DONErxCounter + 1;
						state := 0;
					end if;
					
					--Output Signals
					DataIn <= data;
					DONErx <= DONErxState;
---------------------------------------------------------------------------------------------------------------------------------------------------
				when 1 =>
					DONErxState := '0';
					state := 0;
					
					--Output Signals
					DataIn <= data;
					DONErx <= DONErxState;
---------------------------------------------------------------------------------------------------------------------------------------------------
				when 2 =>
					DONErxState := '0';
					state := 3;
					
					--Output Signals
					DataIn <= data;
					DONErx <= DONErxState;
---------------------------------------------------------------------------------------------------------------------------------------------------					
				when 3 =>
					if(DONErxCounter = 19) then
						if(dataNO = 5) then
							state := 1;								--go to state 0 to make DONErxState 0 an then transition to state 0
							dataInt := 6;
							data := std_logic_vector(to_unsigned(dataInt, data'length));
						else
							state := 2;
							dataInt := dataInt + 11;
							data := std_logic_vector(to_unsigned(dataInt, data'length));
						end if;
						DONErxState := '1';
						DONErxCounter := 0;
					else
						DONErxCounter := DONErxCounter + 1;
						state := 3;
					end if;
					
					--Output Signals
					DataIn <= data;
					DONErx <= DONErxState;
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

                                    
END ID_Decoder_arch;
