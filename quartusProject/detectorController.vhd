LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DetectorController IS
  PORT (
    clk, resetn : IN STD_LOGIC;
    messageBuffer : IN STD_LOGIC_VECTOR(12 downto 0);
    validOut : OUT STD_LOGIC
  );
END DetectorController;

ARCHITECTURE arch OF DetectorController IS

BEGIN

  PROCESS (clk, resetn)
    VARIABLE countClock : INTEGER := 0;
		VARIABLE headerFound : STD_LOGIC := '0';
  BEGIN
    IF resetn = '0' THEN
      countClock := 0;
      headerFound := '0';
		
    ELSIF rising_edge(clk) THEN
      countClock := countClock + 1;
      IF messageBuffer(4 downto 0) = "11001" OR messageBuffer(4 downto 0) = "01011" OR messageBuffer(4 downto 0) = "01110" THEN --Found header 
        countClock := 7;
        headerFound := '1';
      END IF;

      IF countClock = 11 AND headerFound = '1' THEN -- Recieve a message
        validOut <= '1';
        countClock := 0;
        headerFound := '0';
      ELSE
        validOut <= '0';
      END IF;

    END IF;
  END PROCESS; --    
END ARCHITECTURE; -- arch