--=================================================================================================
-- Libraries
--=================================================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

--=================================================================================================
-- alpha_blender entity declaration
--=================================================================================================
entity alpha_blender is
  generic
  (
    -- Generic List
    -- Specifies the bit width of each pixel
    G_PIXEL_WIDTH : integer range 8 to 16 := 8
  );
  port
  (
    -- Port list
    -- System reset
    RESETN_I      : in std_logic;

    -- System clock
    SYS_CLK_I     : in std_logic;

    --Data valid	
    DATA_VALID_I  : in std_logic;

    CH1_R_I       : in std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
    CH1_G_I       : in std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
    CH1_B_I       : in std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);

    CH2_R_I       : in std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
    CH2_G_I       : in std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
    CH2_B_I       : in std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);

    EN_I          : in std_logic;

    -- -- Channel 1 data
    -- CH1_DATA_I    : in std_logic_vector(3 * G_PIXEL_WIDTH - 1 downto 0);

    -- --Channel 2 data
    -- CH2_DATA_I    : in std_logic_vector(3 * G_PIXEL_WIDTH - 1 downto 0);

    --Alpha input
    ALPHA_I       : in std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);

    --Output valid
    DATA_VALID_O  : out std_logic;

    --Alpha blended output
    R_O           : out std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
    G_O           : out std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
    B_O           : out std_logic_vector(G_PIXEL_WIDTH - 1 downto 0)

    -- -- Alpha blended output
    -- DATA_O        : out std_logic_vector(3 * G_PIXEL_WIDTH - 1 downto 0)

  );
end alpha_blender;

--=================================================================================================
-- alpha_blender architecture body
--=================================================================================================

architecture alpha_blender_arch of alpha_blender is

  --=================================================================================================
  -- Component declarations
  --=================================================================================================
  --NA--
  --=================================================================================================
  -- Synthesis Attributes
  --=================================================================================================
  --NA--
  --=================================================================================================
  -- Signal declarations
  --=================================================================================================

  signal s_dvalid           : std_logic;
  signal s_dvalid2          : std_logic;
  signal s_dvalid3          : std_logic;
  signal s_one_minus_alpha  : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
  signal s_alpha            : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
  signal s_in1_r            : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
  signal s_in2_r            : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
  signal s_in1_g            : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
  signal s_in2_g            : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
  signal s_in1_b            : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
  signal s_in2_b            : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);

  signal s_term2_r          : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);
  signal s_term1_g          : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);
  signal s_term1_r          : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);
  signal s_term2_g          : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);
  signal s_term1_b          : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);
  signal s_term2_b          : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);

  signal s_rmix             : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);
  signal s_gmix             : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);
  signal s_bmix             : std_logic_vector(2 * G_PIXEL_WIDTH - 1 downto 0);

  signal s_alpha_en         : std_logic_vector(G_PIXEL_WIDTH - 1 downto 0);
begin

  --=================================================================================================
  -- Top level output port assignments
  --=================================================================================================
  DATA_VALID_O  <= s_dvalid3;
  -- DATA_O       <= s_rmix(2 * G_PIXEL_WIDTH - 1 downto G_PIXEL_WIDTH) & s_gmix(2 * G_PIXEL_WIDTH - 1 downto G_PIXEL_WIDTH) & s_bmix(2 * G_PIXEL_WIDTH - 1 downto G_PIXEL_WIDTH);
  R_O           <= s_rmix(2 * G_PIXEL_WIDTH - 1 downto G_PIXEL_WIDTH);
  G_O           <= s_gmix(2 * G_PIXEL_WIDTH - 1 downto G_PIXEL_WIDTH);
  B_O           <= s_bmix(2 * G_PIXEL_WIDTH - 1 downto G_PIXEL_WIDTH);

  --=================================================================================================
  -- Generate blocks
  --=================================================================================================
  -- NA--

  --=================================================================================================
  -- Asynchronous blocks
  --=================================================================================================
  s_one_minus_alpha <= not(s_alpha_en);
  s_alpha           <= s_alpha_en;
  -- s_in1_r           <= CH1_DATA_I(3 * G_PIXEL_WIDTH - 1 downto 2 * G_PIXEL_WIDTH);
  -- s_in2_r           <= CH2_DATA_I(3 * G_PIXEL_WIDTH - 1 downto 2 * G_PIXEL_WIDTH);
  -- s_in1_g           <= CH1_DATA_I(2 * G_PIXEL_WIDTH - 1 downto G_PIXEL_WIDTH);
  -- s_in2_g           <= CH2_DATA_I(2 * G_PIXEL_WIDTH - 1 downto G_PIXEL_WIDTH);
  -- s_in1_b           <= CH1_DATA_I(G_PIXEL_WIDTH - 1 downto 0);
  -- s_in2_b           <= CH2_DATA_I(G_PIXEL_WIDTH - 1 downto 0);

  --=================================================================================================
  -- Synchronous blocks
  --=================================================================================================
  --------------------------------------------------------------------------
  -- Name       : LATCH
  -- Description: Latches alpha input based enable signal
  --------------------------------------------------------------------------
  LATCH :
  process (SYS_CLK_I, RESETN_I)
  begin
    if RESETN_I = '0' then
      s_alpha_en <= (others => '0');
    elsif (rising_edge(SYS_CLK_I)) then
      if (EN_I = '1') then
        s_alpha_en <= ALPHA_I;
      else
        s_alpha_en <= (others => '0');
      end if;
    end if;
  end process;
  --------------------------------------------------------------------------
  -- Name       : DELAY
  -- Description: Process delays input signals
  --------------------------------------------------------------------------
  DELAY :
  process (SYS_CLK_I, RESETN_I)
  begin
    if RESETN_I = '0' then
      s_dvalid  <= '0';
      s_dvalid2 <= '0';
      s_dvalid3 <= '0';
    elsif rising_edge(SYS_CLK_I) then
      s_dvalid  <= DATA_VALID_I;
      s_dvalid2 <= s_dvalid;
      s_dvalid3 <= s_dvalid2;
    end if;
  end process;

  --------------------------------------------------------------------------
  -- Name       : H_COUNTER
  -- Description: Counter to count horizontal pixels
  --------------------------------------------------------------------------
  H_COUNTER :
  process (SYS_CLK_I, RESETN_I)
  begin
    if RESETN_I = '0' then
      s_term1_r <= (others => '0');
      s_term2_r <= (others => '0');
      s_term1_g <= (others => '0');
      s_term2_g <= (others => '0');
      s_term1_b <= (others => '0');
      s_term2_b <= (others => '0');
      s_rmix    <= (others => '0');
      s_gmix    <= (others => '0');
      s_bmix    <= (others => '0');
      s_in1_r   <= (others => '0');
      s_in2_r   <= (others => '0');
      s_in1_g   <= (others => '0');
      s_in2_g   <= (others => '0');
      s_in1_b   <= (others => '0');
      s_in2_b   <= (others => '0');
    elsif rising_edge(SYS_CLK_I) then
      if (DATA_VALID_I = '1') then 
        s_in1_r <= CH1_R_I;
        s_in2_r <= CH2_R_I;
        s_in1_g <= CH1_G_I;
        s_in2_g <= CH2_G_I;
        s_in1_b <= CH1_B_I;
        s_in2_b <= CH2_B_I;
      end if;
      if (s_dvalid = '1') then
        s_term1_r <= s_in1_r * s_one_minus_alpha;
        s_term2_r <= s_in2_r * s_alpha;
        s_term1_g <= s_in1_g * s_one_minus_alpha;
        s_term2_g <= s_in2_g * s_alpha;
        s_term1_b <= s_in1_b * s_one_minus_alpha;
        s_term2_b <= s_in2_b * s_alpha;
      end if;
      if (s_dvalid2 = '1') then
        s_rmix <= (s_term1_r + s_term2_r);
        s_gmix <= (s_term1_g + s_term2_g);
        s_bmix <= (s_term1_b + s_term2_b);
      end if;
    end if;
  end process;
  --=================================================================================================
  -- Component Instantiations
  --=================================================================================================
  --NA--
end alpha_blender_arch;--=================================================================================================