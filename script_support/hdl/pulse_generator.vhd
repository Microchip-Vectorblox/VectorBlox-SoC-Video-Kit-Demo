library IEEE;
use IEEE.std_logic_1164.all;

entity pulse_generator is
  generic (
    METASTABILITY_STAGES : positive range 2 to 3 := 2
    );
  port (
    resetn : in std_logic;

    pulse_clk : in  std_logic;
    signal_in : in  std_logic;
    pulse_out : out std_logic
    );
end entity pulse_generator;

architecture rtl of pulse_generator is
  signal signal_in_d : std_logic_vector(METASTABILITY_STAGES+1 downto 0);
begin
  signal_in_d(0) <= signal_in;

  process (pulse_clk) is
  begin
    if rising_edge(pulse_clk) then
      signal_in_d(METASTABILITY_STAGES+1 downto 1) <= signal_in_d(METASTABILITY_STAGES downto 0);

      pulse_out <= signal_in_d(METASTABILITY_STAGES) and (not signal_in_d(METASTABILITY_STAGES+1));

      if resetn = '0' then
        signal_in_d(METASTABILITY_STAGES+1 downto 1) <= (others => '0');
        pulse_out                                    <= '0';
      end if;
    end if;
  end process;

end architecture rtl;


