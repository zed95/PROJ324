library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ID_Decoder is
			
	port 
	(
		CLK	   	: in std_logic;		--input clock
		DONErx		: in std_logic;
		DataIn		: in std_logic_vector(15 downto 0);

		ID_CHECKED	: out std_logic;
		ID_MATCHED	: out std_logic
		
	);

end entity;

architecture ID_Decoder of ID_Decoder is
type state_type is (IDLE, CHECK1, CHECK2, COUNT);
signal state : state_type := IDLE;
begin
	process (clk)
	variable Counter : integer := 0;
	variable Data    : integer := 0;
	variable ID_CHECKED_STATE : std_logic := '0';
	variable ID_MATCHED_STATE : std_logic := '0';
	begin
		if (rising_edge(clk)) then
			case state is
				when IDLE =>
					if(DONErx = '1') then
						state <= CHECK1;
					else
						state <= IDLE;
					end if;
					
					--Output Signals
					ID_CHECKED <= ID_CHECKED_STATE;
					ID_MATCHED <= ID_MATCHED_STATE;
------------------------------------------------------------------------------------------------IDLE
				when CHECK1 =>
					if(DataIn = "0000000000000000") then
						state <= IDLE;
					else
						state <= CHECK2;
					end if;
					
					--Output Signals
					ID_CHECKED <= ID_CHECKED_STATE;
					ID_MATCHED <= ID_MATCHED_STATE;
------------------------------------------------------------------------------------------------CHECK1					
				when CHECK2 =>
					Data := to_integer(unsigned(DataIn));	--Test Output
					if(Data < 1 or Data > 6) then
						ID_CHECKED_STATE := '1';
						ID_MATCHED_STATE := '0';
						state <= COUNT;
					else
						ID_CHECKED_STATE := '1';
						ID_MATCHED_STATE := '1';
						state <= COUNT;
					end if;
					
					--Output Signals
					ID_CHECKED <= ID_CHECKED_STATE;
					ID_MATCHED <= ID_MATCHED_STATE;
------------------------------------------------------------------------------------------------CHECK2
				when COUNT =>
					ID_CHECKED_STATE := '0';
					if(DONErx = '1') then
						if(Counter = 5) then
							Counter := 0;
							state <= IDLE;
						else
							Counter := Counter + 1;
							state <= COUNT;
						end if;
					end if;
					
					--Output Signals
					ID_CHECKED <= ID_CHECKED_STATE;
					ID_MATCHED <= ID_MATCHED_STATE;
------------------------------------------------------------------------------------------------COUNT					
				when others =>
					state <= IDLE;
			end case;
		end if; --(rising_edge(clky))
	end process;
end ID_Decoder;