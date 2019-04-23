library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_Receiver is

	--Clocks per bit = clk frequency/uart baudrate
	--I plan to use baud rate of 115200 and clock frequency of 1MHz
	--Therefore: Clocks per bit = 1000000/115200 = 8.68 = 9;
	generic (clocks_per_bit : integer := 9
				
						);		
	
	port 
	(
		clk	   	: in std_logic;		--input clock
		strtRx		: in std_logic;
		iRx			: in std_logic;
		Reset			: in std_logic;
		sendRequest	: out std_logic;
		oRx			: out std_logic_vector(7 downto 0)
		
	);

end entity;

architecture UART_Receiver of UART_Receiver is
type state_type is (IDLE, Rxstrb, Rxdb, Rxstpb, sndRequest);
	signal state : state_type := IDLE;
	signal Rxd : std_logic_vector(7 downto 0);
begin

	process (clk)
		variable clkcount : integer range 0 to (Clocks_per_bit) := 0; 
		variable bPointer	: integer range 0 to 7 := 0; --Data is sent LSB first
	begin
	if(Reset = '0') then
		if (rising_edge(clk)) then
			case state is
				when IDLE =>
					if(iRx = '0') then
						state <= Rxstrb;
					end if;
					
				when Rxstrb =>
					clkcount := clkcount + 1;
					
					if(clkcount = ((clocks_per_bit)/2)) then
						if(iRx = '0') then
							state <= Rxdb;
							clkcount := 0;
						else
							state <= IDLE;
						end if;
					end if;
					
				when Rxdb =>
					Rxd(bPointer) <= iRx;
					clkcount := clkcount + 1;

					if(clkcount = Clocks_per_bit) then
						clkcount := 0;
						if(bPointer /= 7) then
							bPointer := bPointer + 1;
						else
							bPointer := 0;
							state <= Rxstpb;
						end if;
					end if;
					
				when Rxstpb =>
					clkcount := clkcount + 1;

					if(clkcount = Clocks_per_bit) then
						clkcount := 0;
						state <= sndRequest;
					end if;
				when sndRequest =>
					state <= IDLE;
				when others =>
					state <= IDLE;
			end case;
		end if; --(rising_edge(clky))
	else
		clkcount := 0;
		bPointer := 0;
		Rxd <= "00000000";
		state <= IDLE;
	end if;
	end process;
		
	process (state)
	begin
			case state is
			when IDLE =>
				oRx <= Rxd;
				sendRequest <= '0';
			when Rxstrb =>
				sendRequest <= '0';
			when Rxdb =>
				sendRequest <= '0';
			when Rxstpb =>
				sendRequest <= '0';
			when sndRequest =>
				sendRequest <= '1';
			when others =>
				sendRequest <= '0';
			end case;
	end process;	
end UART_Receiver;