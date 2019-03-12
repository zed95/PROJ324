library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity Initialise is
	port 
	(
		--Inputs
		CLK	   : in std_logic;	
		Input	: in std_logic;
		DoneTx :	in std_logic;
		--Outputs
		Output 	: OUT std_logic;
		a1Out		: out std_logic
		
	);
end entity;


architecture Initialise of Initialise is		
begin	
	process(CLK)
	variable counter : integer := 0;
	variable state : integer := 0;
	variable transmit : std_logic;
	BEGIN
		if(rising_edge(CLK)) then
		
		case state is
			when 0 =>
				Output <= '1';
				a1Out <= '0';
				state := 1;
			when 1 =>
				Output <= '0';
				a1Out <= '0';
				if(DoneTx = '1') then
					if(counter = 9) then
						state := 2;
					else
						counter := counter + 1;
						state := 0;
					end if;
				end if;
			when 2 =>
				Output <= '1';
				a1Out <= '1';
				state := 3;
			when 3 =>
				transmit := Input;
				Output <= transmit;
				a1Out <= '1';
			when others =>
		end case;
			
		end if;
	END PROCESS;
	
end Initialise;