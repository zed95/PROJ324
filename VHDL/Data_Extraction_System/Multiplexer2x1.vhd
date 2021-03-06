library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity Multiplexer2x1 is
	port 
	(
		--Inputs
		CLK	   : in std_logic;	
		Input		: in std_logic;
		a1 		:	in std_logic;
		--Outputs
		Output 	: OUT std_logic
	);
end entity;


architecture Multiplexer2x1 of Multiplexer2x1 is		
begin	
	process(CLK)

	BEGIN
		if(rising_edge(CLK)) then
		
			if(a1 = '1') then
				output <= Input;
			else
				Output <= '0';
			end if;
			
		end if;
	END PROCESS;
	
end Multiplexer2x1;