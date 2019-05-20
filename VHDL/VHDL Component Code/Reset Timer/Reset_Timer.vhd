library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Reset_Timer is
	generic (Reset_Time_us : integer := 1000
				);		
			
	port 
	(
		CLK	   	: in std_logic;		--input clock
		Input			: in std_logic;

		Reset			: out std_logic
		
	);

end entity;

architecture Reset_Timer of Reset_Timer is
type state_type is (IDLE, CHECK1, CHECK2, COUNT);
signal state : state_type := IDLE;
begin
	process (clk)
	variable Counter : integer := 0;

	begin
		if(rising_edge(clk)) then
			if(Input = '1') then
				Counter := 0;
				Reset <= '0';
			else
				if(Counter = Reset_Time_us) then
					Reset <= '1';
					Counter := 0;
				else
					Counter := Counter + 1;
					Reset <= '0';
				end if;
			end if;

		end if; --(rising_edge(clky))
	end process;
end Reset_Timer;