ENTITY DetectorAndGenerator IS
  PORT (
    clk, resetn : IN STD_LOGIC;
    valid_out : OUT STD_LOGIC;
    message : OUT STD_LOGIC_VECTOR(0 TO 7)
  );
END DetectorAndGenerator;

ARCHITECTURE arch OF DetectorAndGenerator IS
  COMPONENT gerador IS
    PORT (
      clk : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      seq : OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT Detector
    IS PORT (
      clk : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      input : IN STD_LOGIC;
      seqdec : OUT STD_LOGIC_VECTOR(0 TO 7);
      valid_out : OUT STD_LOGIC
    );
  END COMPONENT Detector;

  SIGNAL bitSerial : STD_LOGIC;
BEGIN
  g : gerador PORT MAP(clk => clk, resetn => resetn, seq => bitSerial);
  d : Detector PORT MAP(clk => clk, resetn => resetn, input => bitSerial, seqdec => message, valid_out => valid_out);

END ARCHITECTURE; -- arch