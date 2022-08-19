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
    VARIABLE counter : INTEGER := 0;
    VARIABLE message1 : STD_LOGIC_VECTOR(0 TO 9) := "0011111111";
	 VARIABLE message2 : STD_LOGIC_VECTOR(0 TO 9) := "0011111000";
    VARIABLE message3 : STD_LOGIC_VECTOR(0 TO 9) := "0101001111";
	 VARIABLE message4 : STD_LOGIC_VECTOR(0 TO 9) := "0111111111"; -- 01011
    VARIABLE message5 : STD_LOGIC_VECTOR(0 TO 9) := "1000000001";
	 VARIABLE message6 : STD_LOGIC_VECTOR(0 TO 9) := "1011111111";
	 VARIABLE headerInData : STD_LOGIC_VECTOR(0 TO 9) := "1001110000";
  BEGIN
    IF resetn = '0' THEN
      counter := -1;
		message <= message1;
    ELSIF nextMessage = '1' THEN
		IF counter = 0 THEN
			message <= message1;
		 ELSIF counter = 1 THEN
			message <= message2;
		 ELSIF counter = 2 THEN
			message <= message3;
		 ELSIF counter = 3 THEN
			message <= message4;
		 ELSIF counter = 4 THEN
			message <= message5;
		 ELSIF counter = 5 THEN
			message <= message6;
		 ELSIF counter = 6 THEN
			message <= headerInData;
		 ELSE
			counter := 0;
			message <= message1;
		 END IF;
		 counter := counter + 1;
	END IF;
	 
  END PROCESS; --

END ARCHITECTURE; -- arch