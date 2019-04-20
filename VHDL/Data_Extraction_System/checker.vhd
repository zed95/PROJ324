library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity checker is
			
	port 
	(
		CLK	   	: in std_logic;		--input clock
		input		: in std_logic;
		output	: out std_logic
		
	);

end entity;

architecture checker of checker is
type state_type is (IDLE, CHECK1, CHECK2, COUNT);
	signal state : state_type := IDLE;
begin
	process (clk)
	variable Counter : integer := 0;
	variable x : std_logic := '0';

	begin
		if (rising_edge(clk)) then
			if(input = '1') then
				if(counter = 1) then
					Counter := 0;
					if(x = '0') then
						output <= '1';
						x := '1';
					else
						output <= '0';
						x := '0';
					end if;
				else
					Counter := Counter + 1;
				end if;
			end if;
		end if; --(rising_edge(clky))
	end process;
end checker;