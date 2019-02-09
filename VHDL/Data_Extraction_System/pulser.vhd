library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity pulser is
	generic (Count : integer := 25);
	port 
	(
		--Inputs
		CLK		: in std_logic;
		input	   : in std_logic;	
		--Outputs
		output 	: OUT std_logic
	);
end entity;


architecture pulser of pulser is			
begin	
	process(clk)
	variable x : integer := 0;
	variable y : std_logic := '0';
	BEGIN
		if(rising_edge(clk)) then
			if(input = '1') then
				y := '1';
			end if;
			
			if(y = '1') then
				if(x = 10) then
					x := 0;
					y := '0';
					output <= '1';
				else
					x := x + 1;
					output <= '0';
				end if;
			else
				output <= '0';
		   end if;
		end if;
	END PROCESS;
end pulser;