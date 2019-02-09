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
-- Generated on "02/08/2019 11:38:40"
                                                            
-- Vhdl Test Bench template for design  :  DES_TEST
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DES_TEST_vhd_tst IS
END DES_TEST_vhd_tst;
ARCHITECTURE DES_TEST_arch OF DES_TEST_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Access_Cntrl_sTx : STD_LOGIC := '0';
SIGNAL ACS_CNTRL_TXS : STD_LOGIC := '0';
SIGNAL Buffer_Empty : STD_LOGIC := '1';
SIGNAL CLK1 : STD_LOGIC;
SIGNAL CLK50 : STD_LOGIC;
SIGNAL CS : STD_LOGIC := '1';
SIGNAL EXTRACT : STD_LOGIC := '0';
SIGNAL LED0 : STD_LOGIC;
SIGNAL LED1 : STD_LOGIC;
SIGNAL LED2 : STD_LOGIC;
SIGNAL LED3 : STD_LOGIC;
SIGNAL LED4 : STD_LOGIC;
SIGNAL LED5 : STD_LOGIC;
SIGNAL LED6 : STD_LOGIC;
SIGNAL LED7 : STD_LOGIC;
SIGNAL MISO : STD_LOGIC;
SIGNAL MISO_MPU : STD_LOGIC;
SIGNAL MOSI : STD_LOGIC;
SIGNAL MPU_CS : STD_LOGIC := '1';
SIGNAL MPU_MOSI : STD_LOGIC;
SIGNAL MPU_MSTR_CLK : STD_LOGIC;
SIGNAL MPU_SPI_PULSE : STD_LOGIC := '0';
SIGNAL MSTR_CLK : STD_LOGIC;
SIGNAL NEXT_ADD : STD_LOGIC := '0';
SIGNAL NEXT_DAT : STD_LOGIC := '0';
SIGNAL NUCLEO_SPI_PULSE : STD_LOGIC := '0';
SIGNAL R2S0 : STD_LOGIC := '0';
SIGNAL R2S1 : STD_LOGIC := '0';
SIGNAL R2S2 : STD_LOGIC := '0';
SIGNAL R2S3 : STD_LOGIC := '0';
SIGNAL R2S4 : STD_LOGIC := '0';
SIGNAL R2S5 : STD_LOGIC := '0';
SIGNAL STORE : STD_LOGIC := '0';
SIGNAL TRANSMIT : STD_LOGIC := '0';
COMPONENT DES_TEST
	PORT (
	Access_Cntrl_sTx : OUT STD_LOGIC;
	ACS_CNTRL_TXS : OUT STD_LOGIC;
	Buffer_Empty : OUT STD_LOGIC;
	CLK1 : OUT STD_LOGIC;
	CLK50 : IN STD_LOGIC;
	CS : OUT STD_LOGIC;
	EXTRACT : OUT STD_LOGIC;
	LED0 : OUT STD_LOGIC;
	LED1 : OUT STD_LOGIC;
	LED2 : OUT STD_LOGIC;
	LED3 : OUT STD_LOGIC;
	LED4 : OUT STD_LOGIC;
	LED5 : OUT STD_LOGIC;
	LED6 : OUT STD_LOGIC;
	LED7 : OUT STD_LOGIC;
	MISO : IN STD_LOGIC;
	MISO_MPU : IN STD_LOGIC;
	MOSI : OUT STD_LOGIC;
	MPU_CS : OUT STD_LOGIC;
	MPU_MOSI : OUT STD_LOGIC;
	MPU_MSTR_CLK : OUT STD_LOGIC;
	MPU_SPI_PULSE : OUT STD_LOGIC;
	MSTR_CLK : OUT STD_LOGIC;
	NEXT_ADD : OUT STD_LOGIC;
	NEXT_DAT : OUT STD_LOGIC;
	NUCLEO_SPI_PULSE : OUT STD_LOGIC;
	R2S0 : OUT STD_LOGIC;
	R2S1 : IN STD_LOGIC;
	R2S2 : IN STD_LOGIC;
	R2S3 : IN STD_LOGIC;
	R2S4 : IN STD_LOGIC;
	R2S5 : IN STD_LOGIC;
	STORE : OUT STD_LOGIC;
	TRANSMIT : OUT STD_LOGIC
	);
END COMPONENT;

constant half_clk_period : time := 10 ns;

BEGIN
	i1 : DES_TEST
	PORT MAP (
-- list connections between master ports and signals
	Access_Cntrl_sTx => Access_Cntrl_sTx,
	ACS_CNTRL_TXS => ACS_CNTRL_TXS,
	Buffer_Empty => Buffer_Empty,
	CLK1 => CLK1,
	CLK50 => CLK50,
	CS => CS,
	EXTRACT => EXTRACT,
	LED0 => LED0,
	LED1 => LED1,
	LED2 => LED2,
	LED3 => LED3,
	LED4 => LED4,
	LED5 => LED5,
	LED6 => LED6,
	LED7 => LED7,
	MISO => MISO,
	MISO_MPU => MISO_MPU,
	MOSI => MOSI,
	MPU_CS => MPU_CS,
	MPU_MOSI => MPU_MOSI,
	MPU_MSTR_CLK => MPU_MSTR_CLK,
	MPU_SPI_PULSE => MPU_SPI_PULSE,
	MSTR_CLK => MSTR_CLK,
	NEXT_ADD => NEXT_ADD,
	NEXT_DAT => NEXT_DAT,
	NUCLEO_SPI_PULSE => NUCLEO_SPI_PULSE,
	R2S0 => R2S0,
	R2S1 => R2S1,
	R2S2 => R2S2,
	R2S3 => R2S3,
	R2S4 => R2S4,
	R2S5 => R2S5,
	STORE => STORE,
	TRANSMIT => TRANSMIT
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        for k in 0 to 100000 loop
			wait until rising_edge(CLK50);
		  end loop; 
WAIT;                                                        
END PROCESS always; 

clk_process : process

begin
	for k in 0 to 100000 loop
		  
		CLK50 <= '0'; 
		  wait for half_clk_period;
		CLK50 <= '1'; 
		  wait for half_clk_period;
		  
  end loop;
wait;
end process clk_process;

                                         
END DES_TEST_arch;
