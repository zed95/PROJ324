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
-- CREATED		"Mon Feb 18 14:01:41 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Data_Extraction_System3 IS 
	PORT
	(
		MISO :  IN  STD_LOGIC;
		MISO_MPU :  IN  STD_LOGIC;
		CLK_50MHz :  IN  STD_LOGIC;
		CS :  OUT  STD_LOGIC;
		MSTR_CLK :  OUT  STD_LOGIC;
		MOSI :  OUT  STD_LOGIC;
		MPU_CS :  OUT  STD_LOGIC;
		MPU_MSTR_CLK :  OUT  STD_LOGIC;
		MPU_MOSI :  OUT  STD_LOGIC;
		LED0 :  OUT  STD_LOGIC;
		LED1 :  OUT  STD_LOGIC;
		LED2 :  OUT  STD_LOGIC;
		LED3 :  OUT  STD_LOGIC;
		LED4 :  OUT  STD_LOGIC;
		LED5 :  OUT  STD_LOGIC;
		LED6 :  OUT  STD_LOGIC;
		LED7 :  OUT  STD_LOGIC
	);
END Data_Extraction_System3;

ARCHITECTURE bdf_type OF Data_Extraction_System3 IS 

COMPONENT desrx
	PORT(CLK : IN STD_LOGIC;
		 bufferEmpty : IN STD_LOGIC;
		 DONErx : IN STD_LOGIC;
		 EXTRACT : OUT STD_LOGIC;
		 NEXT_ADD : OUT STD_LOGIC;
		 STORE : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT genval
	PORT(CLK : IN STD_LOGIC;
		 NXTV : IN STD_LOGIC;
		 vOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT destx
	PORT(CLK : IN STD_LOGIC;
		 bufferEmpty : IN STD_LOGIC;
		 DONEtx : IN STD_LOGIC;
		 sTx : IN STD_LOGIC;
		 R2S : OUT STD_LOGIC;
		 NEXT_DAT : OUT STD_LOGIC;
		 TRANSMIT : OUT STD_LOGIC
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
		 empty : OUT STD_LOGIC;
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
		 transmit : IN STD_LOGIC;
		 tx_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 CS : OUT STD_LOGIC;
		 CLKO : OUT STD_LOGIC;
		 MOSI : OUT STD_LOGIC;
		 fPulse : OUT STD_LOGIC;
		 rx_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT accesscontrol
GENERIC (dw : INTEGER
			);
	PORT(CLK : IN STD_LOGIC;
		 dataIMU0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dataIMU1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dataIMU2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dataIMU3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dataIMU4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dataIMU5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 r2sIMU : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 txIMU : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 TRANSMIT : OUT STD_LOGIC;
		 dataOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 strtTx : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	ADD :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	BFR0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	bfrEmpty :  STD_LOGIC;
SIGNAL	bfrSend :  STD_LOGIC;
SIGNAL	bfrStore :  STD_LOGIC;
SIGNAL	CLK_1MHz :  STD_LOGIC;
SIGNAL	doneTx :  STD_LOGIC;
SIGNAL	FIN :  STD_LOGIC;
SIGNAL	IMU0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	NXT_ADD :  STD_LOGIC;
SIGNAL	R2S :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	rx :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	StrtTransmission :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	TRANSMIT :  STD_LOGIC;
SIGNAL	txDat :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	txIMU :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	Value :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	XTRACT :  STD_LOGIC;


BEGIN 



b2v_inst : desrx
PORT MAP(CLK => CLK_1MHz,
		 bufferEmpty => bfrEmpty,
		 DONErx => FIN,
		 EXTRACT => XTRACT,
		 NEXT_ADD => NXT_ADD,
		 STORE => bfrStore);


b2v_inst1 : genval
PORT MAP(CLK => CLK_1MHz,
		 NXTV => NXT_ADD,
		 vOut => Value);


b2v_inst15 : destx
PORT MAP(CLK => CLK_1MHz,
		 bufferEmpty => bfrEmpty,
		 DONEtx => doneTx,
		 sTx => StrtTransmission(0),
		 R2S => R2S(0),
		 NEXT_DAT => bfrSend,
		 TRANSMIT => txIMU(0));


b2v_inst16 : fifobuffer
GENERIC MAP(Array_Size => 12,
			dw => 16
			)
PORT MAP(CLK => CLK_1MHz,
		 storeData => bfrStore,
		 sendData => bfrSend,
		 dataIn => Value,
		 empty => bfrEmpty,
		 dataOut => BFR0);


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
			delay => 1,
			dw => 16
			)
PORT MAP(clk => CLK_1MHz,
		 MISO => MISO_MPU,
		 transmit => XTRACT,
		 tx_data => ADD,
		 CS => MPU_CS,
		 CLKO => MPU_MSTR_CLK,
		 MOSI => MPU_MOSI,
		 fPulse => FIN);


b2v_inst5 : accesscontrol
GENERIC MAP(dw => 16
			)
PORT MAP(CLK => CLK_1MHz,
		 dataIMU0 => BFR0,
		 dataIMU1 => BFR0,
		 dataIMU2 => BFR0,
		 dataIMU3 => BFR0,
		 dataIMU4 => BFR0,
		 dataIMU5 => BFR0,
		 r2sIMU => R2S,
		 txIMU => txIMU,
		 TRANSMIT => TRANSMIT,
		 dataOut => txDat,
		 strtTx => StrtTransmission);


b2v_inst6 : spi_master1
GENERIC MAP(CPHA => '1',
			CPOL => '1',
			delay => 1,
			dw => 16
			)
PORT MAP(clk => CLK_1MHz,
		 MISO => MISO,
		 transmit => TRANSMIT,
		 tx_data => txDat,
		 CS => CS,
		 CLKO => MSTR_CLK,
		 MOSI => MOSI,
		 fPulse => doneTx,
		 rx_data => rx);

LED0 <= rx(0);
LED1 <= rx(1);
LED2 <= rx(2);
LED3 <= rx(3);
LED4 <= rx(4);
LED5 <= rx(5);
LED6 <= rx(6);
LED7 <= rx(7);

END bdf_type;