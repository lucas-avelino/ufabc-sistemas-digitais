LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY transmissor IS
  PORT (
    clk, resetn, set : IN STD_LOGIC;
    transmissionBuffer : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    bitSerial : OUT STD_LOGIC
  );
END transmissor;

ARCHITECTURE arch OF transmissor IS
  COMPONENT flipFlop
    PORT (
      dataIn, clk, resetn, setIn, set : IN STD_LOGIC;
      dataOut : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL s : STD_LOGIC_VECTOR(0 TO 13); -- this one have 13 to have a buffer before quiting data
BEGIN
  -- we need ignore the signal coming from the flip flops with set is enable for the first 13 one
  f0 : flipFlop PORT MAP(dataOut => s(1), dataIn => s(0), clk => clk, resetn => resetn, setIn => transmissionBuffer(0), set => set);
  f1 : flipFlop PORT MAP(dataOut => s(2), dataIn => s(1), clk => clk, resetn => resetn, setIn => transmissionBuffer(1), set => set);
  f2 : flipFlop PORT MAP(dataOut => s(3), dataIn => s(2), clk => clk, resetn => resetn, setIn => transmissionBuffer(2), set => set);
  f3 : flipFlop PORT MAP(dataOut => s(4), dataIn => s(3), clk => clk, resetn => resetn, setIn => transmissionBuffer(3), set => set);
  f4 : flipFlop PORT MAP(dataOut => s(5), dataIn => s(4), clk => clk, resetn => resetn, setIn => transmissionBuffer(4), set => set);
  f5 : flipFlop PORT MAP(dataOut => s(6), dataIn => s(5), clk => clk, resetn => resetn, setIn => transmissionBuffer(5), set => set);
  f6 : flipFlop PORT MAP(dataOut => s(7), dataIn => s(6), clk => clk, resetn => resetn, setIn => transmissionBuffer(6), set => set);
  f7 : flipFlop PORT MAP(dataOut => s(8), dataIn => s(7), clk => clk, resetn => resetn, setIn => transmissionBuffer(7), set => set);
  f8 : flipFlop PORT MAP(dataOut => s(9), dataIn => s(8), clk => clk, resetn => resetn, setIn => transmissionBuffer(8), set => set);
  f9 : flipFlop PORT MAP(dataOut => s(10), dataIn => s(9), clk => clk, resetn => resetn, setIn => transmissionBuffer(9), set => set);
  f10 : flipFlop PORT MAP(dataOut => s(11), dataIn => s(10), clk => clk, resetn => resetn, setIn => transmissionBuffer(10), set => set);
  f11 : flipFlop PORT MAP(dataOut => s(12), dataIn => s(11), clk => clk, resetn => resetn, setIn => transmissionBuffer(11), set => set);
  f12 : flipFlop PORT MAP(dataOut => s(13), dataIn => s(12), clk => clk, resetn => resetn, setIn => transmissionBuffer(12), set => set);
  serial : flipFlop PORT MAP(dataOut => bitSerial, dataIn => s(13), clk => clk, resetn => resetn, setIn => '0', set => '0');
END ARCHITECTURE;