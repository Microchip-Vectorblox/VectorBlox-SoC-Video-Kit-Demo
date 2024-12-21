--=================================================================================================
-- File Name                           : apb3_if.vhd

-- Targeted device                     : Microsemi-SoC
-- Author                              : India Solutions Team
--
-- COPYRIGHT 2019 BY MICROSEMI
-- THE INFORMATION CONTAINED IN THIS DOCUMENT IS SUBJECT TO LICENSING RESTRICTIONS FROM MICROSEMI
-- CORP. IF YOU ARE NOT IN POSSESSION OF WRITTEN AUTHORIZATION FROM MICROSEMI FOR USE OF THIS
-- FILE, THEN THE FILE SHOULD BE IMMEDIATELY DESTROYED AND NO BACK-UP OF THE FILE SHOULD BE MADE.
--
--=================================================================================================

--=================================================================================================
-- Libraries
--=================================================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

--=================================================================================================
-- apb3_if entity declaration
--=================================================================================================
entity apb3_if is
  generic (
    -- Specifies pwdata_i,prdata_o signal width
    g_APB3_IF_DATA_WIDTH        : integer := 32;

    -- Specifies the width of constants
    g_CONST_WIDTH               : integer := 12
    );
  port (
-- Port list
    -- APB reset
    preset_i                    : in std_logic;
    -- APB clock
    pclk_i                      : in std_logic;

    -- APB slave interface
    psel_i                      : in  std_logic;
    pwrite_i                    : in  std_logic;
    penable_i                   : in  std_logic;
    paddr_i                     : in  std_logic_vector(g_APB3_IF_DATA_WIDTH-1 downto 0);
    pwdata_i                    : in  std_logic_vector(g_APB3_IF_DATA_WIDTH-1 downto 0);
    pready_o                    : out std_logic;
    pslverr_o                   : out std_logic;
    frame_end_i                 : in std_logic;
    prdata_o                    : out std_logic_vector(g_APB3_IF_DATA_WIDTH-1 downto 0);
    RED_MEAN_I                  : in  std_logic_vector(31 downto 0);
    GRN_MEAN_I                  : in  std_logic_vector(31 downto 0);
    BLU_MEAN_I                  : in  std_logic_vector(31 downto 0);
    RED_VAR_I                   : in  std_logic_vector(31 downto 0);
    GRN_VAR_I                   : in  std_logic_vector(31 downto 0);
    BLU_VAR_I                   : in  std_logic_vector(31 downto 0);
    INTENSITY_SUM_I             : in  std_logic_vector(31 downto 0);

    PROCESSING_FB_ADDR_I        : in std_logic_vector(31 downto 0);
    PROCESSING_NEXT_FB_ADDR_I   : in std_logic_vector(31 downto 0);
    PROCESSING_NEXT2_FB_ADDR_I  : in std_logic_vector(31 downto 0);

    FRAME_BLANKER_DONE_I        : in std_logic;
    OVERLAY_DRAW_ADDR_I         : in  std_logic_vector(7 downto 0);
    OVERLAY_DISPLAY_ADDR_I      : in  std_logic_vector(7 downto 0);
    OVERLAY_BLANK_ADDR_I        : in  std_logic_vector(7 downto 0);

    rconst_o                    : out std_logic_vector(9 downto 0);
    gconst_o                    : out std_logic_vector(9 downto 0);
    bconst_o                    : out std_logic_vector(9 downto 0);
    second_const_o              : out std_logic_vector(19 downto 0);

    DDR_READ_FRAME_START_ADDR_O : out std_logic_vector(31 downto 0);

    SWAP_SAVED_FB_O             : out std_logic;
    HORZ_RES_IN_O               : out std_logic_vector(15 downto 0);
    VERT_RES_IN_O               : out std_logic_vector(15 downto 0);
    HORZ_RES_OUT_O              : out std_logic_vector(15 downto 0);
    VERT_RES_OUT_O              : out std_logic_vector(15 downto 0);
    SCALE_FACTOR_HORZ_O         : out std_logic_vector(15 downto 0);
    SCALE_FACTOR_VERT_O         : out std_logic_vector(15 downto 0);
    SCALAR_RESET_O              : out std_logic;

    LINE_GAP_O                  : out std_logic_vector(15 downto 0);
    RED_DDR_FRAME_ADDR_O        : out std_logic_vector(31 downto 0);
    GREEN_DDR_FRAME_ADDR_O      : out std_logic_vector(31 downto 0);
    BLUE_DDR_FRAME_ADDR_O       : out std_logic_vector(31 downto 0);

    MIN_LATENCY_SEL_O           : out std_logic;
    FRAME_BLANKER_EN_O          : out std_logic;
    ALPHA_BLEND_EN_O            : out std_logic;
    FB_FRAME_START_ADDR_O       : out std_logic_vector(7 downto 0)

    );
end apb3_if;

--=================================================================================================
-- apb3_if architecture body
--=================================================================================================

architecture apb3_if of apb3_if is

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
--ADC Register Addresses
  constant C_RCONST_REG_ADDR                    : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"004";
  constant C_GCONST_REG_ADDR                    : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"008";
  constant C_BCONST_REG_ADDR                    : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"00C";
  constant C_SECOND_CONST_ADDR                  : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"010";

  constant C_CONTRAST_ADDR                      : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"030";
  constant C_BRIGHTNESS_ADDR                    : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"034";
  constant INTENSITY_SUM_ADDR                 : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"038";

  constant RED_MEAN_ADDR                        : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"080";
  constant GREEN_MEAN_ADDR                      : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"084";
  constant BLUE_MEAN_ADDR                       : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"088";
  constant RED_VAR_ADDR                         : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"08C";
  constant GREEN_VAR_ADDR                       : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"100";
  constant BLUE_VAR_ADDR                        : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"104";

  constant DDR_READ_FRAME_START_ADDR            : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"108";

  constant PROCESSING_FRAME_START_ADDR          : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"110";
  constant PROCESSING_FRAME_NEXT_START_ADDR     : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"114";
  constant PROCESSING_FRAME_NEXT2_START_ADDR    : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"118";

  constant HORZ_RES_IN_ADDR                     : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"11C";
  constant VERT_RES_IN_ADDR                     : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"120";
  constant HORZ_RES_OUT_ADDR                    : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"124";
  constant VERT_RES_OUT_ADDR                    : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"128";
  constant SCALE_FACTOR_HORZ_ADDR               : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"12C";
  constant SCALE_FACTOR_VERT_ADDR               : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"130";
 
  constant LINE_GAP_ADDR                        : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"134";
  constant RED_DDR_FRAME_START_ADDR             : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"138";
  constant GREEN_DDR_FRAME_START_ADDR           : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"13C";
  constant BLUE_DDR_FRAME_START_ADDR            : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"140";
 
  constant FRAME_BLANKER_EN_ADDR                : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"144";
  constant FRAME_BLANKER_DONE_ADDR              : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"148";
  constant OVERLAY_DRAW_ADDR                    : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"14C";
  constant OVERLAY_DISPLAY_ADDR                 : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"150";
  constant OVERLAY_BLANK_ADDR                   : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"154";
  constant ALPHA_BLEND_EN_ADDR                  : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"158";
  constant FB_FRAME_START_ADDR                  : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"15C";
  constant MIN_LATENCY_SEL_ADDR                 : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"160";
  
  signal s_scaler_hres_in                       : std_logic_vector(15 downto 0);
  signal s_scaler_vres_in                       : std_logic_vector(15 downto 0);
  signal s_scaler_hres_out                      : std_logic_vector(15 downto 0);
  signal s_scaler_vres_out                      : std_logic_vector(15 downto 0);
  signal s_scaler_hscale                        : std_logic_vector(15 downto 0);
  signal s_scaler_vscale                        : std_logic_vector(15 downto 0);
  signal s_frame_end_fe                         : std_logic;
  signal s_frame_end_dly1                       : std_logic;
  signal s_frame_end_dly2                       : std_logic;

  signal s_swap_saved_fb                        : std_logic;
  signal paddr_s                                : std_logic_vector(g_CONST_WIDTH-1 downto 0);

  --- Added by Danielle Tchuinkou
  constant C_ID_ROM_3_0_ADDR   : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"500";
  constant C_ID_ROM_7_4_ADDR   : std_logic_vector(g_CONST_WIDTH-1 downto 0) := x"504";
  signal s_signature : std_logic_vector(63 downto 0) := x"48_32_36_34_32_33_30_36";--h264 2306
  --- End
  
begin
  paddr_s <= paddr_i(paddr_s'range);

--=================================================================================================
-- Top level output port assignments
--=================================================================================================
  pready_o  <= '1';  -- pready_o Is always ready,there will not be any
                      -- latency from the Fabric modules
  pslverr_o <= '0';  -- Slave error is always '0' as there will not be
                       --any slave error.
  with paddr_s select
    prdata_o <=
    PROCESSING_NEXT2_FB_ADDR_I when PROCESSING_FRAME_NEXT2_START_ADDR,
    PROCESSING_FB_ADDR_I when PROCESSING_FRAME_START_ADDR,
    PROCESSING_NEXT_FB_ADDR_I when PROCESSING_FRAME_NEXT_START_ADDR,
    red_mean_i       when RED_MEAN_ADDR,
    blu_mean_i       when BLUE_MEAN_ADDR,
    grn_mean_i       when GREEN_MEAN_ADDR,
    red_var_i when RED_VAR_ADDR,
    grn_var_i when GREEN_VAR_ADDR,
    INTENSITY_SUM_I when INTENSITY_SUM_ADDR,
    --- Added by Danielle Tchuinkou
    s_signature(63 downto 32) when C_ID_ROM_3_0_ADDR,
    s_signature(31 downto 0) when C_ID_ROM_7_4_ADDR,
    --- End
    (31 downto 24 => OVERLAY_DRAW_ADDR_I, others => '0')     when OVERLAY_DRAW_ADDR,
    (31 downto 24 => OVERLAY_DISPLAY_ADDR_I, others => '0')  when OVERLAY_DISPLAY_ADDR,
    (31 downto 24 => OVERLAY_BLANK_ADDR_I, others => '0')    when OVERLAY_BLANK_ADDR,
    (0 => FRAME_BLANKER_DONE_I, others => '0') when FRAME_BLANKER_DONE_ADDR,
    blu_var_i when others;
 
    swap_saved_fb_o <= s_swap_saved_fb;
--=================================================================================================
-- Generate blocks
--=================================================================================================

--=================================================================================================
-- Asynchronous blocks
--=================================================================================================

  s_frame_end_fe <= ((not (s_frame_end_dly1)) and s_frame_end_dly2);
--=================================================================================================
-- Synchronous blocks
--=================================================================================================
--------------------------------------------------------------------------
-- Name       : WRITE_DECODE_PROC
-- Description: Process implements the APB write operation
--------------------------------------------------------------------------
  WRITE_DECODE_PROC :
  process (preset_i, pclk_i)
  begin
    if(preset_i = '0')then
      rconst_o               <= "00"&x"7F";
      gconst_o               <= "00"&x"7F";
      bconst_o               <= "00"&x"7F";
      second_const_o         <= (others => '0');
      s_swap_saved_fb        <= '0';

      DDR_READ_FRAME_START_ADDR_O   <= X"0C000000";
      LINE_GAP_O                    <= X"1000";      
      RED_DDR_FRAME_ADDR_O          <= X"00000000";          
      GREEN_DDR_FRAME_ADDR_O        <= X"00000000";
      BLUE_DDR_FRAME_ADDR_O         <= X"00000000";

      MIN_LATENCY_SEL_O       <= '1';
      FRAME_BLANKER_EN_O      <= '0';
      ALPHA_BLEND_EN_O        <= '0';
      FB_FRAME_START_ADDR_O   <= X"78";
      
    elsif (pclk_i'event and pclk_i = '1') then
      if ((psel_i = '1') and (pwrite_i = '1') and (penable_i = '1')) then
        case paddr_s is
--------------------
-- C_RCONST_REG_ADDR
--------------------
          when C_RCONST_REG_ADDR =>
            rconst_o <= pwdata_i(9 downto 0);

--------------------
-- C_GCONST_REG_ADDR
--------------------
          when C_GCONST_REG_ADDR =>
            gconst_o <= pwdata_i(9 downto 0);
--------------------
-- C_BCONST_REG_ADDR
--------------------
          when C_BCONST_REG_ADDR =>
            bconst_o <= pwdata_i(9 downto 0);

--------------------
-- C_SECOND_CONST_ADDR
--------------------
          when C_SECOND_CONST_ADDR =>
            second_const_o <= pwdata_i(19 downto 0);

--------------------
-- DDR_READ_FRAME_START_ADD
--------------------
          when DDR_READ_FRAME_START_ADDR =>
            DDR_READ_FRAME_START_ADDR_O <= pwdata_i(31 downto 0);
            
--------------------
-- HORZ_RES_IN_ADDR
--------------------
          when HORZ_RES_IN_ADDR =>
            s_scaler_hres_in <= pwdata_i(15 downto 0);

--------------------
-- VERT_RES_IN_ADDR
--------------------
          when VERT_RES_IN_ADDR =>
            s_scaler_vres_in <= pwdata_i(15 downto 0);

--------------------
-- HORZ_RES_OUT_ADDR
--------------------
          when HORZ_RES_OUT_ADDR =>
            s_scaler_hres_out <= pwdata_i(15 downto 0);

--------------------
-- VERT_RES_OUT_ADDR
--------------------
          when VERT_RES_OUT_ADDR =>
            s_scaler_vres_out <= pwdata_i(15 downto 0);

--------------------
-- SCALE_FACTOR_HORZ_ADDR
--------------------
          when SCALE_FACTOR_HORZ_ADDR =>
            s_scaler_hscale <= pwdata_i(15 downto 0);

--------------------
-- SCALE_FACTOR_VERT_ADDR
--------------------
          when SCALE_FACTOR_VERT_ADDR =>
            s_scaler_vscale <= pwdata_i(15 downto 0);

--------------------
-- LINE_GAP_ADDR 
--------------------
          when LINE_GAP_ADDR  =>
            LINE_GAP_O  <= pwdata_i(15 downto 0);
            
--------------------
-- RED_DDR_FRAME_START_ADDR
--------------------
          when RED_DDR_FRAME_START_ADDR =>
            RED_DDR_FRAME_ADDR_O <= pwdata_i(31 downto 0);
            
--------------------
-- GREEN_DDR_FRAME_START_ADDR
--------------------
          when GREEN_DDR_FRAME_START_ADDR =>
            GREEN_DDR_FRAME_ADDR_O <= pwdata_i(31 downto 0);

--------------------
-- BLUE_DDR_FRAME_START_ADDR
--------------------
          when BLUE_DDR_FRAME_START_ADDR =>
            BLUE_DDR_FRAME_ADDR_O <= pwdata_i(31 downto 0);

--------------------
-- FRAME_BLANKER_EN
--------------------
when FRAME_BLANKER_EN_ADDR =>
FRAME_BLANKER_EN_O <= pwdata_i(0);

--------------------
-- ALPHA_BLEND_EN
--------------------
when ALPHA_BLEND_EN_ADDR =>
ALPHA_BLEND_EN_O <= pwdata_i(0);

--------------------
-- FB_FRAME_START_ADDR
--------------------
when FB_FRAME_START_ADDR =>
FB_FRAME_START_ADDR_O <= pwdata_i(7 downto 0);

--------------------
-- MIN LATENCY SELECT
--------------------
when MIN_LATENCY_SEL_ADDR =>
MIN_LATENCY_SEL_O <= pwdata_i(0);

--------------------
-- OTHERS
--------------------
          when PROCESSING_FRAME_START_ADDR =>
            s_swap_saved_fb <= not s_swap_saved_fb;
          when others =>
            null;
        end case;
      end if;
    end if;
  end process;


  --------------------------------------------------------------------------
-- Name       : scalar data assignment process
-- Description: Process implements the data write operation for scaler
--------------------------------------------------------------------------    
  proc : process (preset_i, pclk_i)
  begin
    if (preset_i = '0') then
      s_frame_end_dly1    <= '0';
      s_frame_end_dly2    <= '0';
      HORZ_RES_IN_O       <= x"0780";
      VERT_RES_IN_O       <= x"0438";
      HORZ_RES_OUT_O      <= x"03C0";
      VERT_RES_OUT_O      <= x"021C";
      SCALE_FACTOR_HORZ_O <= x"07FE";
      SCALE_FACTOR_VERT_O <= x"07FE";
      SCALAR_RESET_O      <= '1';
    elsif (pclk_i'event and pclk_i = '1') then
      s_frame_end_dly1 <= frame_end_i;
      s_frame_end_dly2 <= s_frame_end_dly1;

      if (s_frame_end_fe = '1') then
        HORZ_RES_IN_O       <= s_scaler_hres_in;
        VERT_RES_IN_O       <= s_scaler_vres_in;
        HORZ_RES_OUT_O      <= s_scaler_hres_out;
        VERT_RES_OUT_O      <= s_scaler_vres_out;
        SCALE_FACTOR_HORZ_O <= s_scaler_hscale;
        SCALE_FACTOR_VERT_O <= s_scaler_vscale;
        SCALAR_RESET_O      <= '0';
      else
        SCALAR_RESET_O <= '1';
      end if;
    end if;
  end process;

--=================================================================================================
-- Component Instantiations
--=================================================================================================
--NA--

end architecture apb3_if;
