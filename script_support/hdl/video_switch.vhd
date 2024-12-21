library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;

entity video_switch is
  generic (
    DATA_WIDTH          : positive := 8
    );
  port (
    clk        : in std_logic;
    resetn     : in std_logic;

    mode_i    : in std_logic;  -- 1 - immediate de-select; 0 - smart on active video switching
    sel_i     : in std_logic;  -- 0 - source 0; 1 - source 1
    idle_o    : out std_logic;

    s0_data_i          : in std_logic_vector(DATA_WIDTH-1 downto 0);
    s0_data_valid_i    : in std_logic;
    s0_frame_sync_i    : in std_logic;

    s1_data_i          : in std_logic_vector(DATA_WIDTH-1 downto 0);
    s1_data_valid_i    : in std_logic;
    s1_frame_sync_i    : in std_logic;

    data_o          : out std_logic_vector(DATA_WIDTH-1 downto 0);
    data_valid_o    : out std_logic;
    frame_sync_o    : out std_logic
  );
end entity video_switch;

architecture rtl of video_switch is

  type state_type is (IDLE, SEL0, SEL1);
  signal switch_state  : state_type;

  signal switch_mode : std_logic;
  signal switch_sel  : std_logic;

  signal s0_data             : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s0_data_valid       : std_logic;
  signal s0_frame_sync       : std_logic;
  signal s0_frame_sync_re    : std_logic;
  signal s0_frame_sync_fe    : std_logic;

  signal s1_data             : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal s1_data_valid       : std_logic;
  signal s1_frame_sync       : std_logic;
  signal s1_frame_sync_re    : std_logic;
  signal s1_frame_sync_fe    : std_logic;

  signal mux_sel  : std_logic_vector(1 downto 0);

begin

  ------------------------------------------------------------------------------------------------
  -- Input registers
  ------------------------------------------------------------------------------------------------
  process (clk) is
  begin
    if rising_edge(clk) then
      switch_mode <= mode_i;
      switch_sel <= sel_i;

      s0_data        <= s0_data_i;
      s0_data_valid  <= s0_data_valid_i;
      s0_frame_sync  <= s0_frame_sync_i;

      s1_data        <= s1_data_i;
      s1_data_valid  <= s1_data_valid_i;
      s1_frame_sync  <= s1_frame_sync_i;

      if resetn = '0' then
        switch_mode <= '0';
        switch_sel <= sel_i;
        s0_data_valid  <= '0';
        s0_frame_sync  <= '0';
        s1_data_valid  <= '0';
        s1_frame_sync  <= '0';
      end if;
    end if;
  end process;

  s0_frame_sync_re    <= s0_frame_sync_i and (not s0_frame_sync);
  s0_frame_sync_fe    <= (not s0_frame_sync_i) and s0_frame_sync;

  s1_frame_sync_re    <= s1_frame_sync_i and (not s1_frame_sync);
  s1_frame_sync_fe    <= (not s1_frame_sync_i) and s1_frame_sync;


  ------------------------------------------------------------------------------------------------
  -- Switching Controller
  ------------------------------------------------------------------------------------------------
  process (clk) is
  begin
    if rising_edge(clk) then
      case switch_state is
        when IDLE =>
          idle_o <= '1';
          mux_sel <= "00";
          if (switch_sel = '0' and s0_frame_sync_re = '1') then
            mux_sel <= "01";
            switch_state  <= SEL0;
          elsif (switch_sel = '1' and s1_frame_sync_re = '1') then
            mux_sel <= "10";
            switch_state  <= SEL1;
          end if;
        when SEL0 =>
          idle_o <= '0';
          if (switch_sel = '1' and (s0_frame_sync_fe = '1' or switch_mode = '1')) then
            mux_sel <= "00";
            switch_state  <= IDLE;
          end if;
        when SEL1 =>
          idle_o <= '0';
          if (switch_sel = '0' and (s1_frame_sync_fe = '1' or switch_mode = '1')) then
            mux_sel <= "00";
            switch_state  <= IDLE;
          end if;
        when others =>
          report "Video Switch Bad State" severity failure;
      end case;

      if resetn = '0' then
        switch_state <= IDLE;
        mux_sel <= "00";
        idle_o <= '1';
      end if;
    end if;
  end process;


  ------------------------------------------------------------------------------------------------
  -- Switching MUX
  ------------------------------------------------------------------------------------------------
  process (clk) is
  begin
    if rising_edge(clk) then
      if mux_sel = "01" then 
        data_o          <= s0_data;
        data_valid_o    <= s0_data_valid;
        frame_sync_o    <= s0_frame_sync;
      elsif mux_sel = "10" then
        data_o          <= s1_data;
        data_valid_o    <= s1_data_valid;
        frame_sync_o    <= s1_frame_sync;
      else
        data_o          <= (others => '0');
        data_valid_o    <= '0';
        frame_sync_o    <= '0';
      end if;

      if(resetn = '0') then
        data_valid_o <= '0';
        frame_sync_o <= '0';
      end if;
    end if;
  end process;

end architecture rtl;   