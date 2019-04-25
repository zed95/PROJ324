library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_TransmitterX is

	--Clocks per bit = clk frequency/uart baudrate
	--I plan to use baud rate of 115200 and clock frequency of 1MHz
	--Therefore: Clocks per bit = 1000000/115200 = 8.68 = 9;
	generic (clocks_per_bit : integer := 9
				
						);		
	
	port 
	(
		clk	   	: in std_logic;		--input clock
		DoneRx		: in std_logic;
		dataIn		: in std_logic_vector(15 downto 0);
		Start			: in std_logic;
		oTx			: out std_logic	
	);

end entity;

architecture UART_TransmitterX of UART_TransmitterX is
TYPE storage_array IS ARRAY (0 TO 6) OF STD_LOGIC_VECTOR(15 DOWNTO 0); -- array of size Array_size which stores ADC data
SIGNAL datArray: storage_array;

type state_type is (IDLE, waitData, readData, prepareTx, Txstrb, Txdb, Txstpb);
	signal state : state_type := IDLE;
	signal Txd : std_logic_vector(7 downto 0);
	signal oTxState : std_logic := '1';
begin


	
--------------------------------------------CHIP-SELECT-CONTROL-------------------------------------
	process (clk)
		variable clkcount : integer range 0 to (Clocks_per_bit) := 0; 
		variable bPointer	: integer range 0 to 7 := 0; --Data is sent LSB first
		variable Counter 	: integer := 0;
		variable cnt : integer := 0;
		variable bufferEmpty : std_logic := '1';
		variable idx : integer := 1;
		variable flag : std_logic := '0';
	begin
		if (rising_edge(clk)) then
			case state is
				when IDLE =>
					oTx <= '1';		--Idle state
					if(Start = '1') then
						state <= waitData;
					else
						state <= IDLE;
					end if;
			
				when waitData =>
					oTx <= '1';
					if(to_integer(unsigned(dataIn)) /= 0) then
							datArray(0) <= dataIn;
							state <= readData;
					else
						state <= waitData;
					end if;
					
				when readData =>
						oTx <= '1';
						if(DoneRx = '1') then
							datArray(idx) <= dataIn;
							if(idx = 6) then
								idx := 0;
								state <= prepareTx;
							else
								idx := idx + 1;
								state <= readData;
							end if;
						else
							state <= readData;
						end if;
				
				when prepareTx =>
					oTx <= '1';
				if(idx < 7) then
					if(idx = 0) then
						Txd <= datArray(0)(7 downto 0);
						idx := 1;
						state <= Txstrb;
					else
						if(flag = '0') then
							Txd <= datArray(idx)(7 downto 0);
							flag := '1';
							state <= Txstrb;
						else
							Txd <= datArray(idx)(15 downto 8);
							flag := '0';
								idx := idx + 1;
								state <= Txstrb;
						end if;
					end if;
				else
					state <= IDLE;
					idx := 0;
				end if;
--==========================================================Transmitting=========================================================
				when Txstrb =>
					oTx <= '0';		--Send start bit
					clkcount := clkcount + 1;
					
					if(clkcount = clocks_per_bit) then
						clkcount := 0;
						state <= Txdb;
					end if;
					
				when Txdb =>
					oTx <= Txd(bPointer);
					clkcount := clkcount + 1;
					
					if(clkcount = Clocks_per_bit) then
						clkcount := 0;
						if(bPointer < 7) then
							bPointer := bPointer + 1;
						else
							bPointer := 0;
							state <= Txstpb;
						end if;
					end if;
					
				when Txstpb =>
					oTx <= '1';
					clkcount := clkcount + 1;
					
					if(clkcount = clocks_per_bit) then
						clkcount := 0;
						state <= prepareTx;
					end if;
				when others =>
					state <= IDLE;
			end case;
		end if; --(rising_edge(clky))
	end process;
end UART_TransmitterX;