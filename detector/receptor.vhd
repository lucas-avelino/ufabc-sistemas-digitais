LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Receptor IS
  PORT (
    clk, bitSerial : IN STD_LOGIC;
    messageBus : OUT STD_LOGIC_VECTOR(12 DOWNTO 0) -- Will invert message 
  );
END Receptor;

ARCHITECTURE arch OF Receptor IS
  COMPONENT flipFlop
    PORT (
      dataIn, clk, resetn, setIn, set : IN STD_LOGIC;
      dataOut : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL s : STD_LOGIC_VECTOR(0 TO 12);
BEGIN
  f0 : flipFlop PORT MAP(dataOut => s(0), dataIn => bitSerial, clk => clk, resetn => resetn, setIn => '0', set => '0');
  f1 : flipFlop PORT MAP(dataOut => s(1), dataIn => s(0), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f2 : flipFlop PORT MAP(dataOut => s(2), dataIn => s(1), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f3 : flipFlop PORT MAP(dataOut => s(3), dataIn => s(2), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f4 : flipFlop PORT MAP(dataOut => s(4), dataIn => s(3), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f5 : flipFlop PORT MAP(dataOut => s(5), dataIn => s(4), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f6 : flipFlop PORT MAP(dataOut => s(6), dataIn => s(5), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f7 : flipFlop PORT MAP(dataOut => s(7), dataIn => s(6), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f8 : flipFlop PORT MAP(dataOut => s(8), dataIn => s(7), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f9 : flipFlop PORT MAP(dataOut => s(9), dataIn => s(8), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f10 : flipFlop PORT MAP(dataOut => s(10), dataIn => s(9), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f11 : flipFlop PORT MAP(dataOut => s(11), dataIn => s(10), clk => clk, resetn => resetn, setIn => '0', set => '0');
  f12 : flipFlop PORT MAP(dataOut => s(12), dataIn => s(11), clk => clk, resetn => resetn, setIn => '0', set => '0');
  messageBus <= s;
END ARCHITECTURE; -- arch