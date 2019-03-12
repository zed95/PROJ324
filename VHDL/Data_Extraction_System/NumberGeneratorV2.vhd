library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity NumberGeneratorV2 is
	port 
	(
		--Inputs
		CLK	   : in std_logic;	
		Input	: in std_logic;
		
		--Outputs
		Data 	: OUT std_logic_vector(15 downto 0)
	);
end entity;


architecture NumberGeneratorV2 of NumberGeneratorV2 is		
begin	
	process(CLK)

	BEGIN
		if(rising_edge(CLK)) then
		
			if(Input = '1') then
				Data <= "0000000000001111";
			else
				Data <= "0000000000000000";
			end if;
		end if;
	END PROCESS;
	
end NumberGeneratorV2;