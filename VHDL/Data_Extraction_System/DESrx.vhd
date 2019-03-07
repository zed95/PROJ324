library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity DESrx is
	generic (lastAddress : integer := 12
				);
	port 
	(
		--Inputs
		CLK	    		 : in std_logic;	
		bufferEmpty		 : in std_logic;	--This should just be a one clock cycle pulse from the buffer controller to notify this controller that buffer is free and should be filled.
		DONErx		 	 : in std_logic;	--This signal comes from the SPI to notify the controller that data piece has been extracted
		
		--Outputs
		EXTRACT 		: OUT std_logic; --Sends a signal to the SPI to begin extracting data piece until it extracts data from all the required registers
		NEXT_ADD		: OUT std_logic; --Sends a signal to the address register to send out new data to the SPI from which data is to be extracted
		STORE			: OUT std_logic --Sends a signal to the Storage buffer controller to notify it to store newly extracted data.

	);
end entity;


architecture DESrx of DESrx is	
type state_extraction  is (IDLE, NXTADDR, STRTrx, WAITINGrx, STOREstate, W4BFFRrx);	
signal state   : state_extraction;				
begin	
	process(CLK)
	variable addNo :  integer := 0;
	variable nextTx :  integer := 0;
	variable wtCnt : integer := 0;
	BEGIN
		if(rising_edge(CLK)) then
			case state is
				when IDLE =>
					if(bufferEmpty = '1') then
						state <= NXTADDR;
					end if;
-----------------------------------------------------------------------Load Next Address						
				when NXTADDR =>
						state <= STRTrx;
-----------------------------------------------------------------------START RX				
				when STRTrx =>
					state <= WAITINGrx;
					
				when WAITINGrx =>
					if(DONErx = '1') then
						state <= STOREstate;
					end if; 
-----------------------------------------------------------------------NEXT RX
				--The previous problem with the samples sending being out of line that has been fixed by moving the intialised position of the addNo variables
				--in the address block component from zero to 1 might have been caused by the if statement here. when the 11th sample is read in, the if statement
				--checks whether the addNo is equal to 11 before the addNo is incremented. This causes the controller to assume that 12 samples havent been read in
				--yet whereas they have and this causes the controller to instruct the SPI to extract one more sample to be placed into the buffer causing the overall
				--number of samples read to be 13 (suppose to read 0 to 11 which equals 12 samples but reads in 0 to 12 which is 13 samples). The address block can only
			   --cycle through 12 addresses before it gets reset to address 0. This is what happens when the 13th sample is read in. This causes misalignement of 
			   --sample pieces in the Fifo buffer (for example lower byte of gyro x will be mixed with higher byte of gyro y) which are then sent to the nucleo and when
				--they are concatenated they will yeild incorrect results due to this.
				--Make the storestate increment the addNo before it checks whether 12 samples have been read in and that should fix the problem. Test it to see if the
				--hypothesis is correct. Remember to change the initial address block addNo variable back to 0 when performing the testing. 
				when STOREstate =>
					if(addNo = (lastAddress - 1)) then -- The max is last address - 1 because at the start of process next address gets incremented in the address block by sending a signal to it.
						state <= W4BFFRrx;
						addNo := 0;
					else
						state <= NXTADDR;
						addNo := AddNo + 1;
					end if;
-----------------------------------------------------------------------WAIT FOR BUFFER RECEIVE ALL					
				when W4BFFRrx =>
					if(bufferEmpty = '0') then
						state <= IDLE;
					else
						state <= W4BFFRrx;
					end if;				
				when others =>
					state <= IDLE;
			end case;
		end if;
	END PROCESS;
	
	process(state)
	begin
		case state is
			when IDLE =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
				
			when NXTADDR =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '1';
				
			when STRTrx =>
				EXTRACT <= '1';
				STORE <= '0';
				NEXT_ADD <= '0';
				
			when WAITINGrx =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';

			when STOREstate =>
				EXTRACT <= '0';
				STORE <= '1';
				NEXT_ADD <= '0';

			when W4BFFRrx =>
				EXTRACT <= '0';
				STORE <= '0';
				NEXT_ADD <= '0';
-------------------------------------							
			when others =>
		end case;
	end process;
end DESrx;