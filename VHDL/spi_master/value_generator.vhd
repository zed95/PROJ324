library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity value_generator is

	generic (dw : positive := 8);		--dw - data width
	
	port 
	(
		clk	   : in std_logic;
		load		: in std_logic;
		data	: out std_logic_vector((dw - 1) downto 0)
	);

end entity;

architecture value_generator1 of value_generator is
begin

	Process(clk) is
	variable x : integer := 0;
	variable k : integer := 0;
	variable preval : std_logic;
	variable newval : std_logic;
	begin
			if(rising_edge(clk)) then
--				if(k = 18) then
--					k := 0;
--					x := x + 1;
--						if(x = 5) then
--							x := 0;
--						end if;
--				else
--					k := k + 1;
--				end if;

				newval := load;
				
				if(newval = '1' and preval = '0') then
						x := x + 1;
						if(x = 20) then
							x := 0;
						end if;
				end if;
				
				preval := newval;
				
				case x is
				when 0 =>
					data <= "0000000001000011"; --C
				when 1 =>
					data <= "0000000001010000"; --P
				when 2 =>
					data <= "0000000001001000"; --H
				when 3 =>
					data <= "0000000001000001"; --A
				when 4 =>
					data <= "0000000000100000"; --Space
				when 5 =>
					data <= "0000000000111101"; --=
				when 6 =>
					data <= "0000000000100000"; --Space
				when 7 =>
					data <= "0000000000110001"; --1
				when 8 =>
					data <= "0000000000101100"; --,
				when 9 =>
					data <= "0000000000100000"; --Space
				when 10 =>
					data <= "0000000001000011"; --C
				when 11 =>
					data <= "0000000001010000"; --P
				when 12 =>
					data <= "0000000001001111"; --O
				when 13 =>
					data <= "0000000001001100"; --L
				when 14 =>
					data <= "0000000000100000"; --Space
				when 15 =>
					data <= "0000000000111101"; --=
				when 16 =>
					data <= "0000000000100000"; --Space
				when 17 =>
					data <= "0000000000110001"; --1
				when 18 =>
					data <= "0000000000001010"; --New Line
				when 19 =>
					data <= "0000000000001101"; --Carriage Return
				when others =>
					data <= "0000000000001101";
				end case;
				
				--0000000000110000 --0
				--0000000000110001 --1
				
--				if(load = '1') then
--					data <= "0000000001000010"; --A
--				else
--					data <= "0000000001000010"; --W
--				end if;
			
			end if; --(rising_edge(clk))
	end process;
	
end value_generator1;