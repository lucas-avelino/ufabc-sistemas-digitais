LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Message IS
  PORT (
    nextMessage, resetn : IN STD_LOGIC;
    message : OUT STD_LOGIC_VECTOR(0 TO 9)
  );
END Message;

ARCHITECTURE arch OF Message IS
BEGIN

  PROCESS (nextMessage, resetn)
    VARIABLE counter : INTEGER := - 1;
    VARIABLE firstMessage : STD_LOGIC_VECTOR(0 TO 9) := "0001001101";
    VARIABLE secondMessage : STD_LOGIC_VECTOR(0 TO 9) := "0101001111";
    VARIABLE thirdMessage : STD_LOGIC_VECTOR(0 TO 9) := "1001000001";
  BEGIN
    IF resetn = '0' THEN
      counter := - 1;
    ELSIF nextMessage = '1' THEN
      counter := counter + 1;
    END IF;

    IF counter = 0 THEN
      message <= firstMessage;
    ELSIF counter = 1 THEN
      message <= secondMessage;
    ELSIF counter = 2 THEN
      message <= thirdMessage;
    ELSE
      message <= "0000000000";
    END IF;
  END PROCESS; --

END ARCHITECTURE; -- arch