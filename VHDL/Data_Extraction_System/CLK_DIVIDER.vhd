library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--The counter counts to half the period.
--If core F is 50MHz and I set the counter to count to 10 I will have a frequency of 2.5MHz and not 5MHz
--I will use a frequency of 2.5MHz
--I will use 50MHz clock as input to CS_EDGE_CHNG
--I will use falling edge for this clock and rising 

--The actual frequency of the output is equal to: 50MHz/2*Count
entity CLK_DIVIDER is
	generic (Count : integer := 25);
	port 
	(
		--Inputs
		CLK_IN	   : in std_logic;	--The 50MHz clock input
		--Outputs
		CLK_OUT 		: OUT std_logic	
	);
end entity;


architecture CLK_DIVIDER_V1 of CLK_DIVIDER is	
					
begin	
	process(CLK_IN)
		Variable Counter : integer range 0 to Count := 0;
		Variable OutputState : std_logic := '0';
	BEGIN
		if(falling_edge(CLK_IN)) then
			Counter := Counter + 1;
			if(Counter = Count) then
				OutputState := NOT OutputState;	--Toggle the state of the output once the counter reaches the specified value.
				Counter := 0;
			end if; -- (Counter = 10)
			CLK_OUT <= OutputState;
		end if; -- (falling_edge(CLK_IN))
	END PROCESS;
end CLK_DIVIDER_V1;