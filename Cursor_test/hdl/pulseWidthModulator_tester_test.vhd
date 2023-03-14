--
-- VHDL Architecture Cursor_test.pulseWidthModulator_tester.test
--
-- Created:
--          by - axel.amand.UNKNOWN (WE7860)
--          at - 11:10:54 14.03.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE test OF pulseWidthModulator_tester IS

  constant clockPeriod: time := 1.0/clockFrequency * 1 sec;
  signal sClock: std_uLogic := '1';

  signal testMode_int: std_uLogic;
  
  constant buttonsPulseWidth : time := 100 us;
  constant positionBitNb : integer := 17;
  constant pulsesPerTurn: integer := 2000;
  
  signal stepCount: unsigned(10 downto 0);
  signal position_int: signed(positionBitNb-1 downto 0) := (others => '0');
  
BEGIN

  ------------------------------------------------------------------------------
  -- clock and reset
  --
  reset <= '1', '0' after 2*clockPeriod;

  sClock <= not sClock after clockPeriod/2;
  clock <= transport sClock after clockPeriod*9/10;
  
  ------------------------------------------------------------------------------
  -- test sequence
  --
  process
  begin

    testMode_int <= '1';
    amplitude <= to_unsigned(0, amplitude'length);
	en <= '0';
    
    wait for 0.1 ms;
    
    ----------------------------------------------------------------------------
                                                    -- enable
    en <= '1';
    wait for 1 ms;
	
	----------------------------------------------------------------------------
                                                    -- set amplitude
	amplitude <= to_unsigned(2**counterBitNb / 4, amplitude'length);
	wait for 1 ms;
	amplitude <= to_unsigned(2**counterBitNb / 2, amplitude'length);
	wait for 1 ms;
	amplitude <= to_unsigned(2**counterBitNb - 1, amplitude'length);
	wait for 1 ms;
	
    wait;
  end process;
  
END ARCHITECTURE test;

