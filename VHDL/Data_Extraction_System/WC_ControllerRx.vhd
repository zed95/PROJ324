library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity WC_ControllerRx is
	port 
	(
		--Inputs
		CLK	    		 : in std_logic;	
		bufferEmpty		 : in std_logic;	--This should just be a one clock cycle pulse from the buffer controller to notify this controller that buffer is free and should be filled.
		ID_Checked		 : in std_logic;
		ID_Matched		 : in std_logic;	--Start Transmission
		DONErx			 : in std_logic;
		DONEtx			 : in std_logic;
		
		
		--Outputs
		STORE_ID			: OUT std_logic; --Ready to Send;
		STORE			   : OUT std_logic;
		SEND				: OUT std_logic;
		NEXT_DAT			: OUT std_logic;
		SEND_REQUEST	: OUT std_logic
	);
end entity;


architecture WC_ControllerRx of WC_ControllerRx is	
type WirelessState  is (IDLE, RequestData, WAIT_ID, RESULT, STOREID, WAITINGrx, STORE_DATA, W4BFFR_full, SEND_DATA, WAITINGtx, NXTtx, W4BFFR_empty);	
signal state   : WirelessState;				
begin	
	process(CLK)
	variable TransactionNo : integer := 0;
	variable NextTx : integer := 0;
	BEGIN
		if(rising_edge(CLK)) then
			case state is
				when IDLE =>
					if(bufferEmpty = '1') then
						state <= RequestData;
					else
						state <= IDLE;
					end if;
-------------------------------------------------------------------------------IDLE
				when RequestData =>
					state <= WAIT_ID;
-------------------------------------------------------------------------------RequestData					
				when WAIT_ID =>
					if(ID_Checked = '1') then
						state <= RESULT;
					else
						state <= WAIT_ID;
					end if;
-------------------------------------------------------------------------------WAIT_ID	
				when RESULT =>
					if(ID_Matched = '1') then
						state <= STOREID;
					else
						state <= RequestData;
					end if;
-------------------------------------------------------------------------------RESULT
				when STOREID =>
					state <= WAITINGrx;
-------------------------------------------------------------------------------STOREID
				when WAITINGrx =>
					if(DONErx = '1') then
						state <= STORE_DATA;
					else
						state <= WAITINGrx;
					end if;
-------------------------------------------------------------------------------WAITINGrx
				when STORE_DATA =>
					if(TransactionNo = 5) then
						TransactionNo := 0;
						state <= W4BFFR_full;
					else
						TransactionNo := TransactionNo + 1;
						state <= WAITINGrx;
					end if;
-------------------------------------------------------------------------------STORE_DATA
				when W4BFFR_full =>
					if(bufferEmpty = '0') then
						state <= IDLE;
					else
						state <= W4BFFR_full;
					end if;
				when others =>
					state <= IDLE;
			end case;
		end if;
	END PROCESS;
	
	process(state)
	begin
		case state is
			when IDLE =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------IDLE
			when RequestData =>
				SEND_REQUEST <= '1';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------RequestData
			when WAIT_ID =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------WAIT_ID
			when RESULT =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------RESULT
			when STOREID =>
				SEND_REQUEST <= '0';
				STORE_ID <= '1';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------STOREID
			when WAITINGrx =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------WAITINGrx
			when STORE_DATA =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '1';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------STORE_DATA
			when W4BFFR_full =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------W4BFFR_full
			when SEND_DATA =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '1';
-------------------------------------------------------------------------------SEND_DATA
			when WAITINGtx =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------WAITINGtx
			when NXTtx =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '1';
				SEND <= '0';
-------------------------------------------------------------------------------NXTtx
			when W4BFFR_empty =>
				SEND_REQUEST <= '0';
				STORE_ID <= '0';
				STORE <= '0';
				NEXT_DAT <= '0';
				SEND <= '0';
-------------------------------------------------------------------------------W4BFFR_empty
			when others =>
				
		end case;
	end process;
end WC_ControllerRx;