library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity checker is
			
	port 
	(
		CLK	   	: in std_logic;		--input clock
		input		: in std_logic;
		dataOut	: out std_logic_vector(7 downto 0);
		output	: out std_logic
		
	);

end entity;

architecture checker of checker is
type state_type is (IDLE, CHECK1, CHECK2, COUNT);
	signal state : state_type := IDLE;
begin
	process (clk)
	variable Counter : integer := 0;
	variable x : integer := 0;
	variable start : integer := 1;

	begin
		if (rising_edge(clk)) then
			if(start = 30) then
				start := 0;
				output <= '0';
			else
				start := start + 1;
				output <= '1';
			end if;
			
			
			if(input = '1') then
				case x is
				when 0 =>
					dataOut <= "00000001";
					x := 1;
				when 1 =>
					dataOut <= "00000010";
					x := 2;
				when 2 =>
					dataOut <= "00000011";
					x := 3;
				when 3 =>
					dataOut <= "00000100";
					x := 4;
				when 4 =>
					dataOut <= "00000101";
					x := 5;
				when 5 =>
					dataOut <= "00000110";
					x := 6;
				when 6 =>
					dataOut <= "00000111";
					x := 7;
				when 7 =>
					dataOut <= "00001000";
					x := 8;
				when 8 =>
					dataOut <= "00001001";
					x := 9;
				when 9 =>
					dataOut <= "00001010";
					x := 10;
				when 10 =>
					dataOut <= "00001011";
					x := 11;
				when 11 =>
					dataOut <= "00001100";
					x := 12;
				when 12 =>
					dataOut <= "00001101";
					x := 0;
				when others =>
				end case;
				output <= '1';
			else
				output <= '0';
			end if;
			
--			if(input = '1') then
--				if(counter = 1) then
--					Counter := 0;
--					if(x = '0') then
--						output <= '1';
--						x := '1';
--					else
--						output <= '0';
--						x := '0';
--					end if;
--				else
--					Counter := Counter + 1;
--				end if;
--			end if;
		end if; --(rising_edge(clky))
	end process;
end checker;