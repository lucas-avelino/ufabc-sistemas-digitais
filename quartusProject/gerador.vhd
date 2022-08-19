LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY gerador IS
  PORT (
    clk : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    seq : OUT STD_LOGIC
  );
END ENTITY gerador;

ARCHITECTURE arch OF gerador IS
  COMPONENT GeneratorController IS
    PORT (
      clk : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      setNewMessageIntoBuffer : OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT Header IS
    PORT (
      messageBeforeHeader : IN STD_LOGIC_VECTOR(0 TO 9);
      transmissionBus : OUT STD_LOGIC_VECTOR(0 TO 12)
    );
  END COMPONENT;

  COMPONENT Message IS
    PORT (
      nextMessage, resetn : IN STD_LOGIC;
      message : OUT STD_LOGIC_VECTOR(0 TO 9)
    );
  END COMPONENT;

  COMPONENT transmissor IS
    PORT (
      clk, resetn, set : IN STD_LOGIC;
      transmissionBuffer : IN STD_LOGIC_VECTOR(0 TO 12);
      bitSerial : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL nextMessage : STD_LOGIC; --nextMessage cable on diagram
  SIGNAL messageWithoutHeader : STD_LOGIC_VECTOR(0 TO 9); --messageWithoutHeader cable on diagram
  SIGNAL transmissionBus : STD_LOGIC_VECTOR(0 TO 12); --transmissionBus cable on diagram
BEGIN
  control : GeneratorController PORT MAP(clk => clk, resetn => resetn, setNewMessageIntoBuffer => nextMessage);
  m : Message PORT MAP(nextMessage => nextMessage, message => messageWithoutHeader, resetn => resetn);
  h : Header PORT MAP(transmissionBus => transmissionBus, messageBeforeHeader => messageWithoutHeader);
  t : transmissor PORT MAP(clk => clk, resetn => resetn, set => nextMessage, transmissionBuffer => transmissionBus, bitSerial => seq);
END arch; -- arch