LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY GeneratorController IS
  PORT (
    clk : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    setNewMessageIntoBuffer : OUT STD_LOGIC
  );
END GeneratorController;

ARCHITECTURE arch OF GeneratorController IS
BEGIN
  PROCESS (clk)
    VARIABLE counter : INTEGER := 0;
    VARIABLE state : STD_LOGIC := '1';
  BEGIN
    IF resetn = '0' THEN
      counter := 0;
      state := '1';
    ELSIF rising_edge(clk) THEN
      counter := counter + 1;
      state := '0';
      IF counter = 14 THEN
        counter := 0;
        state := '1';
      END IF;
    END IF;

    setNewMessageIntoBuffer <= state;
  END PROCESS;
END ARCHITECTURE; -- arch