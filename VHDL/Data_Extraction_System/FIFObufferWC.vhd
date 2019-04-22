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
	variable Counter1 : integer := 0;
	variable idx : integer := 0;
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
				datArray(FS) <= dataIn(7 downto 0);
					if(NS = 0 AND FS = 0 AND OS = 0) then
						FS <= FS + 1;
						NS <= 0;
						OS <= 0;
					end if;
				state <= IDLE;
			when STORE =>
						case idx is
							when 0 =>
								datArray(1) <= dataIn(7 downto 0);
								datArray(2) <= dataIn(15 downto 8);
								idx := 1;
							when 1 =>
								datArray(3) <= dataIn(7 downto 0);
								datArray(4) <= dataIn(15 downto 8);
								idx := 2;
							when 2 =>
								datArray(5) <= dataIn(7 downto 0);
								datArray(6) <= dataIn(15 downto 8);
								idx := 3;
							when 3 =>
								datArray(7) <= dataIn(7 downto 0);
								datArray(8) <= dataIn(15 downto 8);
								idx := 4;
							when 4 =>
								datArray(9) <= dataIn(7 downto 0);
								datArray(10) <= dataIn(15 downto 8);
								idx := 5;
							when 5 =>
								datArray(11) <= dataIn(7 downto 0);
								datArray(12) <= dataIn(15 downto 8);
								
						when others =>
						end case;
						
						
							if(FS = (Array_Size - 1)) then
								FS <= (Array_Size - 1);
								NS <= (Array_Size - 1);
							else
								FS <= FS + 2;
								NS <= NS + 2;
							end if;
							
							state <= IDLE;
						
					
--						if(Counter1 = 0) then
--							datArray(FS) <= dataIn(7 downto 0);
--							if(FS = (Array_Size - 1)) then
--								FS <= (Array_Size - 1);
--								NS <= (Array_Size - 1);
--							else
--								FS <= FS + 1;
--								NS <= NS + 1;
--							end if;
--							
--							Counter1 := Counter1 + 1;
--						elsif(Counter1 = 1) then
--							datArray(FS) <= dataIn(15 downto 8);
--							if(FS = (Array_Size - 1)) then
--								FS <= (Array_Size - 1);
--								NS <= (Array_Size - 1);
--							else
--								FS <= FS + 1;
--								NS <= NS + 1;
--							end if;
--							
--							Counter1 := 0;
--							state <= IDLE;
--						end if;
	
			when SEND =>

				if(OS = (Array_Size - 1)) then
					OS <= 0;
					FS <= 0;
					NS <= 0;
					idx := 0;
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
				if(NS = (Array_Size - 1)) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when STORE =>
				if(NS = (Array_Size - 1)) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when SEND =>
				if(NS = (Array_Size - 1)) then
					empty <= '0';
				elsif(OS = 0) then					--This is going to send the not empty signal one clock cycle early but thats good because then the controller wont start the extraction process again. Remember that there is delay between signals.
					empty <= '1';
				end if;
				dataOut <= datArray(OS);
			when others =>
		end case;
	end process;
end FIFObufferWC;