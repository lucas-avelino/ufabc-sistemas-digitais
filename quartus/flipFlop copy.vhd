LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY flipFlop IS
  PORT (
    dataIn, clk, resetn, setIn, set : IN STD_LOGIC;
    dataOut : OUT STD_LOGIC
  );
END flipFlop;

ARCHITECTURE behaviour OF flipFlop IS
BEGIN
  PROCESS (clk, resetn)
    VARIABLE data : STD_LOGIC := '0';
  BEGIN
    IF resetn = '0' THEN
      data := '0';
    ELSIF set = '1' THEN
      data := setIn;
    ELSIF RISING_EDGE(clk) THEN
      data := dataIn;
    END IF;
    dataOut <= data;
  END PROCESS;
END ARCHITECTURE; -- arch