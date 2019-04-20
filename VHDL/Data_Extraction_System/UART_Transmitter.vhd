library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_Transmitter is

	--Clocks per bit = clk frequency/uart baudrate
	--I plan to use baud rate of 115200 and clock frequency of 1MHz
	--Therefore: Clocks per bit = 1000000/115200 = 8.68 = 9;
	generic (clocks_per_bit : integer := 9
				
						);		
	
	port 
	(
		clk	   	: in std_logic;		--input clock
		strtTx		: in std_logic;
		iTx			: in std_logic_vector(7 downto 0);
		DoneTx		: out std_logic;
		oTx			: out std_logic;
		clkCnt		: out std_logic_vector(7 downto 0)
		
	);

end entity;

architecture UART_Transmitter of UART_Transmitter is
type state_type is (IDLE, Txstrb, Txdb, Txstpb, txDone);
	signal state : state_type := IDLE;
	signal Txd : std_logic_vector(7 downto 0);
begin


	
--------------------------------------------CHIP-SELECT-CONTROL-------------------------------------
	process (clk)
		variable clkcount : integer range 0 to (Clocks_per_bit) := 0; 
		variable bPointer	: integer range 0 to 7 := 0; --Data is sent LSB first
	begin
		if (rising_edge(clk)) then
			case state is
				when IDLE =>
					oTx <= '1';		--Idle state
					if(strtTx = '1') then
						Txd <= iTx;
						state <= Txstrb;
					end if; 
					
				when Txstrb =>
					oTx <= '0';		--Send start bit
					clkcount := clkcount + 1;
					clkCnt <= std_logic_vector(to_unsigned(clkcount, clkCnt'length));	--Test Output
					
					if(clkcount = clocks_per_bit) then
						clkcount := 0;
						state <= Txdb;
					end if;
					
				when Txdb =>
					oTx <= Txd(bPointer);
					clkcount := clkcount + 1;
					clkCnt <= std_logic_vector(to_unsigned(clkcount, clkCnt'length));	--Test Output
					
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
					clkCnt <= std_logic_vector(to_unsigned(clkcount, clkCnt'length)); --Test Output 
					
					if(clkcount = clocks_per_bit) then
						clkcount := 0;
						state <= txDone;
					end if;
					
				when txDone =>
					state <= IDLE;
				when others =>
					state <= IDLE;
			end case;
		end if; --(rising_edge(clky))
	end process;
		
	process (state)
	begin
			case state is
			when IDLE =>
				DoneTx <= '0';
			when Txstrb =>
				DoneTx <= '0';
			when Txdb =>
				DoneTx <= '0';
			when Txstpb =>
				DoneTx <= '0';
			when txDone =>
				DoneTx <= '1';
			when others =>
				DoneTx <= '0';
			end case;
	end process;

end UART_Transmitter;