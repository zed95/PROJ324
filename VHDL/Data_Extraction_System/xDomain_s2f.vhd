library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity xDomain_s2f is
	generic (Count : integer := 25);
	port 
	(
		--Inputs
		CLK_SLW	: in std_logic;
		CLK		: in std_logic;
		input	   : in std_logic;	
		
		--Outputs
		output 	: OUT std_logic
	);
end entity;


architecture xDomain_s2f of xDomain_s2f is	
signal R1 : std_logic;
signal R2 : std_logic;
signal R3 : std_logic;			
begin	
	process(CLK)
	BEGIN
		if(rising_edge(CLK)) then
			R1 <= input;
			R2 <= R1;
			R3 <= R2;
			output <= R3;
		end if;
	END PROCESS;
	
end xDomain_s2f;