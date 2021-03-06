library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity genPulse is
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


architecture genPulse of genPulse is				
begin	
	process(CLK)
	variable cstate :  std_logic := '1';
	variable pstate :  std_logic := '1';
	BEGIN
		if(rising_edge(CLK)) then
			cstate := input;
			if(pstate = '1' and cstate = '0') then
				output <= '1';
			else
				output <= '0';
			end if;
			pstate := cstate;
		end if;
	END PROCESS;
	
end genPulse;