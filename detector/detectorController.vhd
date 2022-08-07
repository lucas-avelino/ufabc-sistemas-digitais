LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DetectorController IS
  PORT (
    clk, resetn : IN STD_LOGIC;
    messageBuffer : IN STD_LOGIC_VECTOR(0 TO 12);
    validOut : OUT STD_LOGIC
  );
END DetectorController;

ARCHITECTURE arch OF DetectorController IS
  VARIABLE countClock : INTEGER := 0;
  VARIABLE headerFound : STD_LOGIC := '1';
BEGIN

  PROCESS (clk, resetn)
  BEGIN
    IF resetn = '0' THEN
      countClock := 0;
      headerFound := '0';
    ELSIF rising_edge(clock) THEN
      countClock := countClock + 1;

      IF messageBuffer(8 TO 12) = "11001" OR messageBuffer(8 TO 12) = "01011" OR messageBuffer(8 TO 12) = "01110" THEN --Found header 
        countClock := 0;
        headerFound := '1';
      END IF;

      IF countClock == 13 AND headerFound THEN -- Recieve a message
        validOut <= '1';
        countClock := 0;
        headerFound := '0';
      ELSE
        validOut <= '0';
      END IF;

    END IF;
  END PROCESS; --    
END ARCHITECTURE; -- arch