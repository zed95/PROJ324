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
-- CREATED		"Sat Feb 09 01:16:57 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SendData1 IS 
	PORT
	(
		CLK_50MHz :  IN  STD_LOGIC
	);
END SendData1;

ARCHITECTURE bdf_type OF SendData1 IS 

COMPONENT desrx
	PORT(CLK : IN STD_LOGIC;
		 bufferEmpty : IN STD_LOGIC;
		 DONErx : IN STD_LOGIC;
		 EXTRACT : OUT STD_LOGIC;
		 NEXT_ADD : OUT STD_LOGIC;
		 STORE : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pulser
GENERIC (Count : INTEGER
			);
	PORT(CLK : IN STD_LOGIC;
		 input : IN STD_LOGIC;
		 output : OUT STD_LOGIC
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
SIGNAL	txx :  STD_LOGIC;
SIGNAL	XTRACT :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



b2v_inst : desrx
PORT MAP(CLK => CLK_1MHz,
		 bufferEmpty => bfrEmpty,
		 DONErx => FIN,
		 EXTRACT => XTRACT,
		 NEXT_ADD => NXT_ADD,
		 STORE => bfrStore);


b2v_inst1 : pulser
GENERIC MAP(Count => 25
			)
PORT MAP(CLK => CLK_1MHz,
		 input => XTRACT,
		 output => FIN);


b2v_inst15 : destx
PORT MAP(CLK => CLK_1MHz,
		 bufferEmpty => bfrEmpty,
		 DONEtx => doneTx,
		 sTx => SYNTHESIZED_WIRE_0,
		 R2S => SYNTHESIZED_WIRE_0,
		 NEXT_DAT => bfrSend,
		 TRANSMIT => txx);


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
		 NXTADD => NXT_ADD);


b2v_inst20 : clk_divider
GENERIC MAP(Count => 25
			)
PORT MAP(CLK_IN => CLK_50MHz,
		 CLK_OUT => CLK_1MHz);


b2v_inst3 : pulser
GENERIC MAP(Count => 25
			)
PORT MAP(CLK => CLK_1MHz,
		 input => txx,
		 output => doneTx);


END bdf_type;