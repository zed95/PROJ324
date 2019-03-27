library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity FIFObufferWC is
	  GENERIC(
		Array_Size : INTEGER := 13;     
		dw : INTEGER := 8
	 );
	port 
	(
		--Inputs
		CLK			: in std_logic;
		storeData	: in std_logic;
		store_ID		: in std_logic;
		sendData		: in std_logic;
		dataIn		: in std_logic_vector(15 downto 0);
		--Outputs
		dataOut 		: OUT std_logic_vector(dw - 1 downto 0);
		empty			: OUT std_logic
	);
end entity;


architecture FIFObufferWC of FIFObufferWC is		
type stateBUFFER is (IDLE, STOREID, STORE, SEND);	
signal state   : stateBUFFER;		
	TYPE storage_array IS ARRAY (0 TO Array_Size - 1) OF STD_LOGIC_VECTOR(dw - 1 DOWNTO 0); -- array of size Array_size which stores ADC data
	SIGNAL datArray: storage_array;	
	signal NS : integer range 0 to (Array_Size - 1) := 0; 		-- NS - Newest Sample. Points to the location of the newest sample in the array
	signal FS : integer range 0 to (Array_Size - 1) := 0; 		-- FS - Free Space. Points to the next free space in the Array
	signal OS : integer range 0 to (Array_Size - 1) := 0; 		-- Oldest_Sample pointer variable
begin	
	process(CLK)
	variable Counter : integer := 0;
	BEGIN
		if(rising_edge(CLK)) then
			case state is
			when IDLE =>
				if(store_ID = '1') then
					state <= STOREID;
				elsif(storeData = '1') then
					state <= STORE;
				elsif(sendData = '1') then
					state <= SEND;
				end if;
			when STOREID =>
				datArray(FS) <= dataIn(15 downto 8);
					if(NS = 0 AND FS = 0 AND OS = 0) then
						FS <= FS + 1;
						NS <= 0;
						OS <= 0;
					end if;
				state <= IDLE;
			when STORE =>
				if(FS = 12) then
					--Do nothing as buffer is full
				else
					datArray(FS) <= dataIn(15 downto 8);
						FS <= FS + 1;
						NS <= NS + 1;
					datArray(FS) <= dataIn(7 downto 0);
						FS <= FS + 1;
						NS <= NS + 1;
				end if;
				
				state <= IDLE;
			when SEND =>

				if(OS = 12) then
					OS <= 0;
					FS <= 0;
					NS <= 0;
				else
					OS <= OS + 1;
				end if;
				state <= IDLE;
			when others =>
			end case;
		end if;
	END PROCESS;
	
		process(state)
	begin 
		case state is
			when IDLE =>
				if(NS = 12) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when STORE =>
				if(NS = 12) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when SEND =>
				if(NS = 12) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when others =>
		end case;
	end process;
end FIFObufferWC;