ENTITY Detector
  IS PORT (
    clk : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    input : IN STD_LOGIC;
    seqdec : OUT STD_LOGIC_VECTOR(0 TO 7);
    valid_out : OUT STD_LOGIC
  );
END ENTITY Detector;
COMPONENT Receptor IS
  PORT (
    clk, bitSerial : IN STD_LOGIC;
    messageBus : OUT STD_LOGIC_VECTOR(12 DOWNTO 0) -- Will invert message 
  );
END COMPONENT;

COMPONENT DetectorController IS
  PORT (
    clk, resetn, serialIn : IN STD_LOGIC;
    messageBuffer : IN STD_LOGIC_VECTOR(0 TO 12);
    validOut : OUT STD_LOGIC
  );
END COMPONENT;

COMPONENT Decodificador IS
  PORT (
    messageBus : IN STD_LOGIC_VECTOR(0 TO 12);
    decodedMessage : OUT STD_LOGIC_VECTOR(0 TO 7)
  );
END COMPONENT;
SIGNAL messageBus : STD_LOGIC_VECTOR(12 DOWNTO 0);

ARCHITECTURE arch OF Detector IS
BEGIN
  r: Receptor PORT MAP (clk => clk, bitSerial => input, messageBus => messageBus, resetn => resetn);
  c: DetectorController PORT MAP (clk => clk, messageBuffer => messageBus, validOut => valid_out, resetn = resetn);
  d: Decodificador PORT MAP (messageBus => messageBus, decodedMessage => secdeq);
  
END ARCHITECTURE; -- arch