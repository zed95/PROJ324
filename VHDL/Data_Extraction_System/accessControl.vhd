library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity accessControl is
	  GENERIC(    
		dw : INTEGER := 16
	 );
	port 
	(
		--Inputs
		CLK				: in std_logic;
		r2sIMU			: in std_logic_vector(5 downto 0);
		txIMU				: in std_logic_vector(5 downto 0);
		dataIMU0			: in std_logic_vector(dw - 1 downto 0);
		dataIMU1			: in std_logic_vector(dw - 1 downto 0);
		dataIMU2			: in std_logic_vector(dw - 1 downto 0);
		dataIMU3			: in std_logic_vector(dw - 1 downto 0);
		dataIMU4			: in std_logic_vector(dw - 1 downto 0);
		dataIMU5			: in std_logic_vector(dw - 1 downto 0);
		--Outputs
		dataOut 		: OUT std_logic_vector(dw - 1 downto 0);
		TRANSMIT		: OUT std_logic;
		strtTx		: OUT std_logic_vector(5 downto 0)
	);
end entity;


architecture accessControl of accessControl is		
type accessCntrl is (SEARCH, STRT, WAITING);	
signal state   : accessCntrl;			
	signal idx : integer := 0;
begin	
	process(CLK)
	BEGIN
		if(rising_edge(CLK)) then
			case state is
			when SEARCH =>

				if(r2sIMU(idx) = '1') then
					state <= STRT;
				else
					if(idx = 5) then
						idx <= 0;
					else
						idx <= idx + 1;
					end if;	
				end if;
				
				
				TRANSMIT <= '0';
				case idx is
				when 0 =>
				dataOut <= (others => '0');
				when 1 =>
				dataOut <= (others => '0');
				when 2 =>
				dataOut <= (others => '0');
				when 3 =>
				dataOut <= (others => '0');
				when 4 =>
				dataOut <= (others => '0');
				when 5 =>
				dataOut <= (others => '0');
				when others =>
				end case;				
			when STRT =>
				state <= WAITING;
				TRANSMIT <= txIMU(idx);
				case idx is
				when 0 =>
				dataOut <= dataIMU0;
				when 1 =>
				dataOut <= dataIMU1;
				when 2 =>
				dataOut <= dataIMU2;
				when 3 =>
				dataOut <= dataIMU3;
				when 4 =>
				dataOut <= dataIMU4;
				when 5 =>
				dataOut <= dataIMU5;
				when others =>
				end case;				
			when WAITING =>
				TRANSMIT <= txIMU(idx);
				case idx is
				when 0 =>
				dataOut <= dataIMU0;
				when 1 =>
				dataOut <= dataIMU1;
				when 2 =>
				dataOut <= dataIMU2;
				when 3 =>
				dataOut <= dataIMU3;
				when 4 =>
				dataOut <= dataIMU4;
				when 5 =>
				dataOut <= dataIMU5;
				when others =>
				end case;
				
				if(r2sIMU(idx) = '0') then
					state <= SEARCH;
				end if;
			when others =>
			end case;
		end if;
	END PROCESS;
	
		process(state)
	begin
		case state is
			when SEARCH =>
				strtTx(idx) <= '0';
			when STRT =>
				strtTx(idx) <= '1';
			when WAITING =>
				strtTx(idx) <= '0';
			when others =>
		end case;
	end process;
end accessControl;