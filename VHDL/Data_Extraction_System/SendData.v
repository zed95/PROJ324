// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Sat Feb 09 01:05:00 2019"

module SendData(
	CLK_50MHz
);


input wire	CLK_50MHz;

wire	[15:0] ADD;
wire	[15:0] BFR0;
wire	bfrEmpty;
wire	bfrSend;
wire	bfrStore;
wire	CLK_1MHz;
wire	doneTx;
wire	FIN;
wire	[15:0] IMU0;
wire	NXT_ADD;
wire	[5:0] R2S;
wire	[5:0] StrtTransmission;
wire	TRANSMIT;
wire	[15:0] txDat;
wire	[5:0] txIMU;
wire	txx;
wire	XTRACT;





DESrx	b2v_inst(
	.CLK(CLK_1MHz),
	.bufferEmpty(bfrEmpty),
	.DONErx(FIN),
	.EXTRACT(XTRACT),
	.NEXT_ADD(NXT_ADD),
	.STORE(bfrStore));


pulser	b2v_inst1(
	.CLK(CLK_1MHz),
	.input(XTRACT),
	.output(FIN));
	defparam	b2v_inst1.Count = 25;


DEStx	b2v_inst15(
	.CLK(CLK_1MHz),
	.bufferEmpty(bfrEmpty),
	.DONEtx(doneTx),
	.sTx(StrtTransmission[0]),
	.R2S(R2S[0]),
	.NEXT_DAT(bfrSend)
	);


FIFObuffer	b2v_inst16(
	.CLK(CLK_1MHz),
	.storeData(bfrStore),
	.sendData(bfrSend),
	.dataIn(IMU0),
	.empty(bfrEmpty),
	.dataOut(BFR0));
	defparam	b2v_inst16.Array_Size = 12;
	defparam	b2v_inst16.dw = 16;


addressBlock	b2v_inst2(
	.CLK(CLK_1MHz),
	.NXTADD(NXT_ADD)
	);
	defparam	b2v_inst2.Count = 25;


CLK_DIVIDER	b2v_inst20(
	.CLK_IN(CLK_50MHz),
	.CLK_OUT(CLK_1MHz));
	defparam	b2v_inst20.Count = 25;


pulser	b2v_inst3(
	.CLK(CLK_1MHz),
	.input(TRANSMIT),
	.output(doneTx));
	defparam	b2v_inst3.Count = 25;


accessControl	b2v_inst5(
	.CLK(CLK_1MHz),
	.dataIMU0(BFR0),
	
	
	
	
	
	.r2sIMU(R2S),
	.txIMU(txIMU),
	.TRANSMIT(TRANSMIT),
	
	.strtTx(StrtTransmission));
	defparam	b2v_inst5.dw = 16;


endmodule
