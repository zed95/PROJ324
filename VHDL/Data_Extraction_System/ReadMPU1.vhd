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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
-- CREATED		"Fri Feb 08 22:52:39 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ReadMPU1 IS 
	PORT
	(
		CLK_50MHz :  IN  STD_LOGIC;
		MISO_MPU :  IN  STD_LOGIC;
		MPU_CS :  OUT  STD_LOGIC;
		MPU_MOSI :  OUT  STD_LOGIC
	);
END ReadMPU1;

ARCHITECTURE bdf_type OF ReadMPU1 IS 

COMPONENT desrx
	PORT(CLK : IN STD_LOGIC;
		 bufferEmpty : IN STD_LOGIC;
		 DONErx : IN STD_LOGIC;
		 EXTRACT : OUT STD_LOGIC := '0';
		 NEXT_ADD : OUT STD_LOGIC := '0';
		 STORE : OUT STD_LOGIC := '0'
	);
END COMPONENT;

COMPONENT fifobuffer
GENERIC (Array_Size : INTEGER;
			dw : INTEGER
			);
	PORT(CLK : IN STD_LOGIC;
		 storeData : IN STD_LOGIC;
		 sendData : IN STD_LOGIC;
		 dataIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 empty : OUT STD_LOGIC := '1';
		 dataOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT addressblock
GENERIC (Count : INTEGER
			);
	PORT(CLK : IN STD_LOGIC;
		 NXTADD : IN STD_LOGIC;
		 ADDRESS : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT clk_divider
GENERIC (Count : INTEGER
			);
	PORT(CLK_IN : IN STD_LOGIC;
		 CLK_OUT : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT spi_master1
GENERIC (CPHA : STD_LOGIC;
			CPOL : STD_LOGIC;
			delay : INTEGER;
			dw : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 MISO : IN STD_LOGIC;
		 transmit : IN STD_LOGIC := '0';
		 tx_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 CS : OUT STD_LOGIC := '1';
		 CLKO : OUT STD_LOGIC;
		 MOSI : OUT STD_LOGIC;
		 fPulse : OUT STD_LOGIC := '0';
		 rx_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	ADD :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	BFR0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	bfrEmpty :  STD_LOGIC;
SIGNAL	bfrSend :  STD_LOGIC;
SIGNAL	bfrStore :  STD_LOGIC;
SIGNAL	CLK_1MHz :  STD_LOGIC;
SIGNAL	FIN :  STD_LOGIC;
SIGNAL	IMU0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	NXT_ADD :  STD_LOGIC;
SIGNAL	XTRACT :  STD_LOGIC;


BEGIN 



b2v_inst : desrx
PORT MAP(CLK => CLK_1MHz,
		 bufferEmpty => bfrEmpty,
		 DONErx => FIN,
		 EXTRACT => XTRACT,
		 NEXT_ADD => NXT_ADD,
		 STORE => bfrStore);


b2v_inst16 : fifobuffer
GENERIC MAP(Array_Size => 12,
			dw => 16
			)
PORT MAP(CLK => CLK_1MHz,
		 storeData => bfrStore,
		 sendData => bfrSend,
		 dataIn => IMU0,
		 empty => bfrEmpty);


b2v_inst2 : addressblock
GENERIC MAP(Count => 25
			)
PORT MAP(CLK => CLK_1MHz,
		 NXTADD => NXT_ADD,
		 ADDRESS => ADD);


b2v_inst20 : clk_divider
GENERIC MAP(Count => 25
			)
PORT MAP(CLK_IN => CLK_50MHz,
		 CLK_OUT => CLK_1MHz);


b2v_inst4 : spi_master1
GENERIC MAP(CPHA => '1',
			CPOL => '1',
			delay => 10,
			dw => 16
			)
PORT MAP(clk => CLK_1MHz,
		 MISO => MISO_MPU,
		 transmit => XTRACT,
		 tx_data => ADD,
		 CS => MPU_CS,
		 MOSI => MPU_MOSI,
		 fPulse => FIN,
		 rx_data => IMU0);


END bdf_type;