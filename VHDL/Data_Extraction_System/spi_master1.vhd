library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_master1 is

	generic (dw : positive := 16;			--dw - data width
				delay : positive := 20000;	--delay between transactions
				CPHA	: std_logic := '1';	--Clock Phase
				CPOL	: std_logic := '0'	--Clock Polarity
						);		
	
	port 
	(
		clk	   : in std_logic;		--input clock
		MISO		: in std_logic;		--Master In Slave Out.
		tx_data	: in std_logic_vector((dw - 1) downto 0); --Data to be transmitted input
		transmit : in std_logic;		--SPI is activated when there is data to transmit
		CS			: out std_logic;		--Chip Select 
		CLKO		: out std_logic;		--Clock Output. Master clock to the slave is output here.
		rx_data : out std_logic_vector((dw - 1) downto 0); --received data is output here.
		MOSI     : out std_logic		--Master Out Slave In.
	);

end entity;

architecture spi_master1 of spi_master1 is

	type state_CS  is (CSLOW, CSHIGH);
	type state_clock is (CLKH, CLKL);
	type state_spi	is (IDLE, BUSY);
	type state_transaction is (trSTRT, trSTP);
	signal state_csh   : state_CS;
	signal state_csl   : state_CS;
	signal state_clk	 : state_clock;
	signal state_tr	 : state_transaction;
	signal state 		 : state_spi;
	signal CSD : std_logic;		       --Signal related to the CS pin. Set H/L on falling edges. D stands for Down indicating changes on falling edges.
	signal CSU : std_logic;		 		 --Signal related to the CS pin. Set H/L on rising edges. U stands for Up indicating changes on rising edges.
	signal wt : std_logic := '0';		 --wt - wait. This signal is high when the delay between transactions is ongoing.
	signal rtc : std_logic;				 --rtc - run the clock. Signal used to enable/disable the clock output to the slave.
	signal rxd   : std_logic;  		 --rxd- recieve data. Signal used to start/stop receiving from the slave.
	signal clkx  : std_logic;  		 --clock used in clock control and tx/rx control sections. This clock is derived from the input clock.
	signal clky  : std_logic;			 --clock used in clock control, chip select control anf delay procedure. This clock is derived from the input clock.
	signal clkz  : std_logic; 	 		 --clock used in data transmission/receiving sections. This clock is derived from the input clock.
	signal txCPHA    : std_logic; 	 --txCPHA - tx CPHA ('1'). Signal used to decide when data will start being transmitted to the slave.
	signal txNCPHA   : std_logic := '1';		 --txNCPHA - tx NOT CPHA ('0'). Signal used to decide when data will start being transmitted to the slave.
	signal CPOLmode  : std_logic;     --Clock Polarity Mode. This signal is used to control the level of the clock when transaction ended and controls the polarity of clkx with respect to clky.
	signal SPImode	  : std_logic;	  	 --used to control the polarity of clkz with respect to clkx.
	signal dwReg : std_logic_vector((dw - 1) downto 0);	--Recieve register. Data from slave is saved here.
	signal rtl   : std_logic;   		 --rtl - ready to load. This signal goes high when data has been received from the slave.
	signal done	 : std_logic;

begin

  --Select polarity of clkx based on CPOL
  CPOLmode <= CPOL;  
   WITH CPOLmode SELECT
   clkX <= clk WHEN '1',
   NOT clk WHEN OTHERS;
	
	--Select polarity of clkz based on CPHA and CPOL
	SPImode <= CPHA xor CPOL;  
	 WITH SPImode SELECT
    clkz <= clk WHEN '1',
    NOT clk WHEN OTHERS;
	
	--clky remains the same as clk 
	clky <= clk;
	
--------------------------------------------CHIP-SELECT-CONTROL-------------------------------------
	process (clky)
		variable EC : integer := 0;	--EC - Edge Counter
	begin
		if (rising_edge(clky) and wt = '0' and done = '0') then
			case state_csh is
				when CSLOW =>
					CSU <= '0';						--Send signal to set CS pin LOW.
					EC := EC + 1;					--Increment edge counter to track how long the CS pin has remained LOW.
					if(EC = (dw + 1)) then		--Once 17 rising edges have been detected the state is changed so on 18th clock edge the CS can go HIGH.
						state_csh <= CSHIGH;		--Change the state
						EC := 0;						--Reset edge counter
					end if; --(dw + 1)
				when CSHIGH =>
					CSU <= '1';						--Send signal to set CS pin HIGH
					EC := EC + 1;					--Increment edge counter to track how long the CS pin has remained HIGH.
					if(EC = 2) then				--Once 2 rising edges have been detected the CS pin can go Low again on the next clock edge
						state_csh <= CSLOW;		--Change state to set CS pin LOW
						EC := 0;						--Reset edge counter.
					end if; --(EC = 2)
			end case;	
		end if; --(rising_edge(clky) and wt = '0')
	end process;
	
	process (clky)
		variable EC : integer := 0;	--EC - Edge Counter
	begin
		if (falling_edge(clky) and wt = '0' and done = '0') then
			case state_csl is
				when CSLOW =>						
					CSD <= '0';						--Send signal to set CS pin LOW
					EC := EC + 1;					--Increment edge counter to track how long the CS pin has remained LOW.
					if(EC = (dw + 1)) then		--Once 17 falling edges have been detected the state is changed so on 18th clock edge the CS can go HIGH.
						state_csl <= CSHIGH;		--Send signal to set CS pin HIGH
						EC := 0;						--Reset edge counter.
					end if; --(dw + 1)
				when CSHIGH =>						
					CSD <= '1';						--Send signal to set CS pin HIGH
					EC := EC + 1;					--Increment edge counter to track how long the CS pin has remained HIGH.
					if(EC = 2) then				--Once 2 falling edges have been detected the CS pin can go Low again on the next clock edge
						state_csl <= CSLOW;		--Change state to set CS pin LOW
						EC := 0;						--Reset edge counter.
					end if; --(EC = 2)
			end case;
		end if; --(falling_edge(clky) and wt = '0')
	end process;
	
	--The combination of the two signals makes the CS pin go low on rising edges and high on falling edges.
	process (CSD,CSU)
	begin
		CS <= CSD and CSU;	
	end process;
--------------------------------------------CHIP-SELECT-CONTROL-------------------------------------

----------------------------------------------CLOCK-CONTROL-----------------------------------------

	--The reason why the clock to the slave is controlled on falling edges is that if it was controlled
	--on rising edges a glitch would appear when the clock is being switched off. This happens because
	--the siignal is being fed to a AND gate outside of the component which then allows the clock signal
	--to be fed to the slave. When the signal is fed on rising edge there is a brief moment where the 
	--clock signal still passes through the gate before the signal from the component closes the AND gate.
	--This glitch looks like a spike and was treated like a rising edge which made the master clock out
	--data and as a result errors occured.
	
	process (clkx)
		variable CC	: integer := 0;	--CC - Clock Counter
	begin
		if (rising_edge(clkx) and wt = '0' and done = '0') then
			case state_clk is
				when CLKH =>						--CLKH - refers to the enabled state of the clock
					rtc <= '1';						--send signal to enable the master clock
					CC := CC + 1;					--Increment clock counter to track the transaction progress
					if(CC = dw) then				--After 16 clok cycles change state to set the clock LOW 
						state_clk <= CLKL;		--Change state
						CC := 0;						--reset clock counter when transaction has been completed
					end if; --(CC = dw)
				when CLKL =>						--CLKL - refers to the disabled state of the clock
					rtc <= '0';						--send signal to disable the master clock
					CC := CC + 1;					--Increment the clock counter to track when CS pin goes low
					if(CC = 3) then				--Wait for 3 clock cycles (so that CS can go low again) and change state to feed the clock to the slave
						state_clk <= CLKH;		--Change state
						CC := 0;						--Reset the clock counter to get it ready to track the next transaction
					end if; --(CC = 3)
			end case;
		end if; --(rising_edge(clkx) and wt = '0')
	end process;
	
	process (clky)					--This process runs on clky to keep the clock signal synchronised with respect to the CS which also uses clky
	begin
		if (rtc = '1') then
			CLKO <= clky;			--Assign clock signal to the output
		else
			CLKO <= CPOL;			--Disable the clock output with inactive level determined by CPOL
		end if; -- (rtc = '1') 
	end process;
----------------------------------------------CLOCK-CONTROL-----------------------------------------

--------------------------------------------DATA-tx/rx-CONTROL--------------------------------------
	
	--When CPHA = 0, data is captured on the first edge of the transaction. This means that first bit
	--of the data frame needs to be put on the output even before the transaction begins. When CPHA = 1
	--data is captured on the second edge of the transaction. This means I can put the first bit on the
	--output on the first edge of the transaction. Because of this fact, I have two separate signals sent 
	--to start the transmission when CPHA = 0 and when CPHA = 1. The reason behind this is that I must
	--put the fitst bit on the output when the transmission is in its inactive state when CPHA = 0 compared
	--to putting the first bit on the line when the transmission is in its active state when CPHA = 1. The only
	--way I have found so far to solve this problem and make the transmission work in all 4 modes is to have 
	--two separate signals for when CPHA = 0  and for when CPHA = 1.
	--The possible improvement of this section would be to have one signal for starting transmission for all 4 modes.
	
	--The waveform diagrams from the testbench will show how the transmission works in both modes.
	
	--The signals are being sent using clkx as the control signals need to be synchronised with the output clock.
	process (clkx)
		variable CC	: integer := 0;	--CC - Clock Counter
	begin
		if (rising_edge(clkx) and wt = '0' and done = '0') then
			case state_tr is
				when trSTRT =>
					rxd <= '1';						--Send signal to begin clocking in the data from the slave
					txCPHA <= '1';					--Signal to start transmission is sent at this point when CPHA = 1
					CC := CC + 1;					--Increment clock counter to track the transaction progress
					if(CC = dw) then
						state_tr <= trSTP;		--After 16 clok cycles change state stop the transmission and wait until the next transaction brgins
						CC := 0;						--reset clock counter when transaction has been completed
						txNCPHA <= '0';			--Signal to stop transmission is sent at this point when CPHA = 0
					end if; --(CC = 16)
				when trSTP =>
					rxd <= '0';						--Send signal to stop clocking in the data as transaction has been completed
					txCPHA <= '0';					--Signal to stop transmission is sent at this point when CPHA = 1
					CC := CC + 1;					--Increment the clock counter to track when the transaction will begin again.
					if(CC = 3) then				--Wait for 3 clock cycles (so that CS can go low again) for the transaction to begin.
						txNCPHA <= '1';			--Signal to start transmission is sent at this point when CPHA = 0
						state_tr <= trSTRT;		--Switch state to start transmitting.
						CC := 0;						--Reset the clock counter to get it ready to track the next transaction
					end if; --(CC = 3)
			end case;
		end if; --(rising_edge(clkx) and wt = '0')
	end process;
--------------------------------------------DATA-tx/rx-CONTROL--------------------------------------

--------------------------------------------DATA-TRANSMISSION---------------------------------------
	--The data transmission process also uses a clock that can change polarity based on CPHA and CPOL settings
	--to enable the SPI master to transmit data in all 4 modes.
	--The clkz shifts with respect to CLKO and clky such that rising edge of clkz is the falling edge of CLKO/clky and vice versa.
	--This happens when CPHA = CPOL = 1/0 otherwise when CPHA /= CPOL the clkz is in phase with CLKO and clky.
	--when clkz is shifted the data is clocked out on falling edges from the perspective of CLKO even though the 
	--data is still clocked out on rising edges from the perspective of clkz. This method works since data has
	--to be clocked out on falling edges of the master clock when CPHA = CPOL = 1/0 since data is captured by the slave
	--on rising edges in these two modes.
	--In the other two modes, when CPHA /= CPOL, CLKO and clkz are in phase and therefore data is clocked out on
	-- rising edges. This is correct since in the modes where CPHA /= CPOL the data is captured by the slave on falling
	--edges of the master clock.
	--Using this method I reduce the amount of code I have to write due to the fact that every mode can be run in one 
	--process block
	process (clkz)
	variable CC	: integer := 0;	--CC - Clock Counter
	variable	DTS	: std_logic_vector((dw - 1) downto 0);	--DTS - Data To Send
	variable BP	: integer := 16;	--bp - bit pointer
	begin
		if (rising_edge(clkz) and wt = '0' and done = '0') then
			if ((txNCPHA = '1' and CPHA = '0') or (txCPHA = '1' and CPHA = '1')) then
				BP := BP - 1;						--point to the next lower bit to be transmitted
				MOSI <= DTS(BP);					--Transmit the bit
				if(BP = 0) then					--Once all the bits have been transmitted the bit pointer is reset and new data is loaded.
					BP := dw;						--bit pointer is reset to match the frame size setting
					DTS := tx_data;				--New data is loaded into the shift register to be transmitted during next transaction.
				end if; -- (BP = 0)
			end if; -- ((tx = '1' and CPHA = '0') or (rtc = '1' and CPHA = '1'))
		end if; -- (rising_edge(clkz) and wt = '0')
	end process;
--------------------------------------------DATA-TRANSMISSION---------------------------------------
	
----------------------------------------------DATA-RECEIVING----------------------------------------
	--Data receiving process also uses clkz on the same priniple as data transmission.
	--Based on the setting of CPOL and CPHA, the clock is in phase or shifted with respect to CLKO/clky 
	--such that the bits are clocked in on the correct edge (rising/falling).
	process (clkz)
		variable PP	: integer := dw;	--PP - Position Pointer
	begin
		if (falling_edge(clkz) and wt = '0' and done = '0') then
			if (rxd = '1') then			--Once rxd signal is set to '1', start clockig in data from the master.
				PP := PP - 1;				--Decrement position pointer to point to the next position where the bit will be placed
				dwReg(PP) <= MISO;		--Place the incoming bit into the shift register. The position is indicated by position pointer.
				if(PP = 0) then			--Once position pointer reaches zero all the bits from the slave have been received.
					rtl <= '1';				--Set rtl (ready to load) signal to '1' so that the received data can be output.
					PP := dw;				--Reset position pointer to valaue of data widith to prepare the master to receive another piece of data.
				end if; -- (PP = 0)
			else
				rtl <= '0';					--While data is being received data cannot change on the output.
			end if; -- (rtc = '1') 
		end if; -- (falling_edge(clkz) and wt = '0')
	end process;
	
	Process(clkz) is
	begin
		if(rtl = '1' and falling_edge(clkz)) then		--if new data is ready to be loaded and falling edge is detected
			rx_data <= dwReg;				--Assert newly received data on the output.
		end if; --(reset = '0')
	end process;
----------------------------------------------DATA-RECEIVING----------------------------------------
	
----------------------------------------------DELAY-PROCEDURE---------------------------------------	
  --The dealy signal is used to give some time for the slave component to react to the sent data.
	Process(clky) is
		variable delay_counter : integer := 0;
	begin
		if(falling_edge(clky)) then
			if((CSD and CSU) = '1') then	--Once the CS pin goes high send a signal to initiate the delay procedure
				wt <= '1';						--Set wt to '1' to start counting
			end if; -- ((CSD and CSU) = '1')
			
			if(wt <= '1') then
				delay_counter := delay_counter + 1;	-- start counting when the delay procedure signal is sent
			end if; -- (wt <= '1')
			
			if(delay_counter = delay) then 	--Once the delacy counter reaches the desired delay time, send signal to stop to delay procedure
				wt <= '0';						   --Set wt to 0 to stop counting.
				delay_counter := 0;	--Reset delay_counter
			end if; -- (delay_counter = delay)
		end if; --(reset = '0')
	end process;
----------------------------------------------DELAY-PROCEDURE---------------------------------------

process(wt, transmit) is
begin
	if(transmit = '1') then
		done <= '0';
	end if;
	
	if(wt = '1' and transmit = '0') then
		done <= '1';
	end if;
end process; 

end spi_master1;