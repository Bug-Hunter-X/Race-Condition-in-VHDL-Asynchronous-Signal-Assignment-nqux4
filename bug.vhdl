```vhdl
ENTITY my_entity IS
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF my_entity IS
  SIGNAL temp : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
BEGIN
  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      temp <= data_in;
      data_out <= temp;
    END IF;
  END PROCESS;
END ARCHITECTURE;
```