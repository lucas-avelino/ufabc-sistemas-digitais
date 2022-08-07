LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Header IS
  PORT (
    messageBeforeHeader : IN STD_LOGIC_VECTOR(0 TO 9);
    transmissionBus : OUT STD_LOGIC_VECTOR(0 TO 12)
  );
END Header;

ARCHITECTURE arch OF Header IS
BEGIN
  transmissionBus(0 TO 4) <=
  "11001" WHEN messageBeforeHeader(0 TO 1) = "00" ELSE
  "01011" WHEN messageBeforeHeader(0 TO 1) = "01" ELSE
  "01110" WHEN messageBeforeHeader(0 TO 1) = "10"; -- 

  transmissionBus(5 TO 12) <= messageBeforeHeader(2 TO 9);

END ARCHITECTURE; -- arch