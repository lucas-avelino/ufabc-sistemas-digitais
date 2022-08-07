LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY gerador_vhd_tst IS
END gerador_vhd_tst;
ARCHITECTURE gerador_arch OF gerador_vhd_tst IS
  -- constants                                                 
  -- signals                                                   
  SIGNAL clk : STD_LOGIC;
  SIGNAL resetn : STD_LOGIC;
  SIGNAL seq : STD_LOGIC;
  SIGNAL setNewMessageIntoBuffer : STD_LOGIC;
  COMPONENT gerador
    PORT (
      clk : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      seq : BUFFER STD_LOGIC
    );
  END COMPONENT;

  COMPONENT GeneratorController IS
    PORT (
      clk : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      setNewMessageIntoBuffer : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN
  i1 : gerador
  PORT MAP(
    clk => clk,
    resetn => resetn,
    seq => seq
  );

  controller : GeneratorController
  PORT MAP(
    clk => clk,
    resetn => resetn,
    setNewMessageIntoBuffer => setNewMessageIntoBuffer
  );

  init : PROCESS
    -- variable declarations                                     
  BEGIN
    -- code that executes only once                      
    WAIT;
  END PROCESS init;
  always : PROCESS

  BEGIN
    resetn <= '1';

    FOR k IN 0 TO 30 LOOP
      clk <= '0';
      WAIT FOR 20ns;
      clk <= '1';
      WAIT FOR 20ns;
    END LOOP;

    clk <= '0';
    resetn <= '0';
    WAIT FOR 20ns;
    resetn <= '1';
    clk <= '1';
  
    WAIT FOR 20ns;
    FOR k IN 0 TO 50 LOOP
      clk <= '0';
      WAIT FOR 20ns;
      clk <= '1';
      WAIT FOR 20ns;
    END LOOP;

    WAIT;
  END PROCESS always;
END gerador_arch;