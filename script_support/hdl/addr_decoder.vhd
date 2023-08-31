--=================================================================================================
-- File Name                           : addr_decoder.vhd

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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

--=================================================================================================
-- addr_decoder entity declaration
--=================================================================================================
ENTITY addr_decoder IS
GENERIC (
-- Generic list
    -- Specifies the width of constants
    g_CONST_WIDTH                      : INTEGER := 8
);
PORT (
-- Port list
    -- Reset
    reset_i                             : IN  STD_LOGIC;
    -- System clock
    sys_clk_i                           : IN  STD_LOGIC;

    --UART interface
    --Data ready
    data_rdy_i                          : IN STD_LOGIC;
    
    --Address input
    addr_i                              : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    --Data input
    data_i                              : IN STD_LOGIC_VECTOR(31 DOWNTO 0);

    --PIP source select
    pip_select_o                        : OUT STD_LOGIC;

    --Bayer or edge detection output select
    bayer_edge_sel_o                    : OUT STD_LOGIC;

    --Selects the auto or manual movement of PIP
    pip_mode_sel_o                      : OUT STD_LOGIC;

    --B-gain
    step_o                              : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

    --Alpha
    alpha_o                             : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

    --R-gain
    rgain_o                             : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

    --G-gain
    ggain_o                             : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

    --B-gain
    bgain_o                             : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

    --Brightness
    brightness_o                        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

    --Contrast
    contrast_o                          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

    --Brightness
    h_shift_o                           : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);

    --Contrast
    v_shift_o                           : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);

    --Horizontal PAN of Camera 1
    h_pan_c1_o                             : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);

    --Vertical PAN of Camera 1
    v_pan_c1_o                             : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);

    --Horizontal PAN of Camera 2
    h_pan_c2_o                             : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);

    --Vertical PAN of Camera 2
    v_pan_c2_o                             : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    
    --Histogram curve address
    curve_addr_o                           : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    --Histogram curve data
    curve_data_o                           : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    --Histogram curve valid
    curve_valid_o                          : OUT STD_LOGIC;

    -- Data Output specifies the parameter to be selected for sending UART data
    ch_selector_o                       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);

    bayer_format0_o                      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);

    bayer_format1_o                      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);

    bayer_format2_o                      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
);
END addr_decoder;

--=================================================================================================
-- addr_decoder architecture body
--=================================================================================================

ARCHITECTURE addr_decoder OF addr_decoder IS

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
CONSTANT C_ALPHA_ADDR                  : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"00";
CONSTANT C_CONTRAST_ADDR               : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"01";
CONSTANT C_BRIGHTNESS_ADDR             : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"02";
CONSTANT C_RGAIN_ADDR                  : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"03";
CONSTANT C_GGAIN_ADDR                  : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"04";
CONSTANT C_BGAIN_ADDR                  : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"05";
CONSTANT C_HOR_ADDR                    : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"06";
CONSTANT C_VER_ADDR                    : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"07";
CONSTANT C_PIPSEL_ADDR                 : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"09";
CONSTANT C_BAYER_EDGE_SEL_ADDR         : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"0A";
CONSTANT C_PIP_MODE_SEL_ADDR           : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"0B";
CONSTANT C_AUTO_MODE_STEP_ADDR         : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"0C";
CONSTANT C_BAYER_FORMAT_ADDR           : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"0D";
-- Camera image panning
CONSTANT C_HORIZ_PAN_C1_ADDR           : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"10";
CONSTANT C_VERT_PAN_C1_ADDR            : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"11";
CONSTANT C_HORIZ_PAN_C2_ADDR           : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"12";
CONSTANT C_VERT_PAN_C2_ADDR            : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"13";
-- Histogram
CONSTANT C_HIST_CURVE_ADDR                  : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"72";
--Selector for Plotting
CONSTANT C_SELECTOR_CHA_ADDR           : STD_LOGIC_VECTOR(g_CONST_WIDTH-1 DOWNTO 0) := x"C0";


BEGIN


--=================================================================================================
-- Top level output port assignments
--=================================================================================================


--=================================================================================================
-- Generate blocks
--=================================================================================================
--NA--

--=================================================================================================
-- Asynchronous blocks
--=================================================================================================

--=================================================================================================
-- Synchronous blocks
--=================================================================================================
--------------------------------------------------------------------------
-- Name       : WRITE_DECODE_PROC
-- Description: Process implements the APB write operation
--------------------------------------------------------------------------
WRITE_DECODE_PROC:
    PROCESS (reset_i, sys_clk_i)
    BEGIN
        IF(reset_i = '0')THEN
            pip_select_o                         <= '0';
            pip_mode_sel_o                       <= '1';
            bayer_edge_sel_o                     <= '0';
            step_o                               <= x"01";
            alpha_o                              <= x"38";
            contrast_o                           <= x"80";
            brightness_o                         <= x"80";
            rgain_o                              <= x"7A";
            ggain_o                              <= x"64";
            bgain_o                              <= x"8A";
            ch_selector_o                        <=	x"24142C68";
            h_shift_o                            <= x"0014";
            v_shift_o                            <=	x"0000";
            h_pan_c1_o                           <=	x"3C0";
            v_pan_c1_o                           <=	x"21C";
            h_pan_c2_o                           <=	x"3C0";
            v_pan_c2_o                           <=	x"21C";
            bayer_format0_o                      <=	"10";
            bayer_format1_o                      <=	"10";
            bayer_format2_o                      <=	"10";
            curve_addr_o                         <= x"00";
            curve_data_o                         <= x"00";
            curve_valid_o                        <= '1';
           
        ELSIF (RISING_EDGE(sys_clk_i)) THEN
            IF (data_rdy_i = '1') THEN
                CASE addr_i(7 DOWNTO 0)  IS
--------------------
-- C_PIPSEL_ADDR
--------------------
                    WHEN C_PIPSEL_ADDR =>
                        pip_select_o <= data_i(0);
--------------------
-- C_PIP_MODE_SEL_ADDR
--------------------
                    WHEN C_PIP_MODE_SEL_ADDR =>
                        pip_mode_sel_o <= data_i(0);
--------------------
-- C_BAYER_EDGE_SEL_ADDR
--------------------
                    WHEN C_BAYER_EDGE_SEL_ADDR =>
                        bayer_edge_sel_o <= data_i(0);
--------------------
-- C_AUTO_MODE_STEP_ADDR
--------------------
                    WHEN C_AUTO_MODE_STEP_ADDR =>
                        step_o <= data_i(7 DOWNTO 0);

--------------------
-- C_ALPHA_ADDR
--------------------
                    WHEN C_ALPHA_ADDR =>
                        alpha_o <= data_i(7 DOWNTO 0);

--------------------
-- C_CONTRAST_ADDR
--------------------
                    WHEN C_CONTRAST_ADDR =>
                        contrast_o <= data_i(7 DOWNTO 0);
--------------------
-- C_BRIGHTNESS_ADDR
--------------------
                    WHEN C_BRIGHTNESS_ADDR =>
                        brightness_o <= data_i(7 DOWNTO 0);

--------------------
-- C_RGAIN_ADDR
--------------------
                    WHEN C_RGAIN_ADDR =>
                        rgain_o <= data_i(7 DOWNTO 0);

--------------------
-- C_GGAIN_ADDR
--------------------
                    WHEN C_GGAIN_ADDR =>
                        ggain_o <= data_i(7 DOWNTO 0);

--------------------
-- C_BGAIN_ADDR
--------------------
                    WHEN C_BGAIN_ADDR =>
                        bgain_o <= data_i(7 DOWNTO 0);
--------------------
-- C_HOR_ADDR
--------------------
                    WHEN C_HOR_ADDR =>
                        h_shift_o <= data_i(15 DOWNTO 0);

--------------------
-- C_VER_ADDR
--------------------
                    WHEN C_VER_ADDR =>
                        v_shift_o <= data_i(15 DOWNTO 0);

--------------------
-- C_HORIZ_PAN_C1_ADDR
--------------------
                    WHEN C_HORIZ_PAN_C1_ADDR =>
                        h_pan_c1_o <= data_i(11 DOWNTO 0);

--------------------
-- C_VERT_PAN_C1_ADDR
--------------------
                    WHEN C_VERT_PAN_C1_ADDR =>
                        v_pan_c1_o <= data_i(11 DOWNTO 0);

--------------------
-- C_HORIZ_PAN_C2_ADDR
--------------------
                    WHEN C_HORIZ_PAN_C2_ADDR =>
                        h_pan_c2_o <= data_i(11 DOWNTO 0);

--------------------
-- C_VERT_PAN_C2_ADDR
--------------------
                    WHEN C_VERT_PAN_C2_ADDR =>
                        v_pan_c2_o <= data_i(11 DOWNTO 0);

--------------------
-- C_SELECTOR_CHA_ADDR
--------------------
                    WHEN C_SELECTOR_CHA_ADDR =>
                        ch_selector_o <= data_i;


--------------------
-- C_BAYER_FORMAT_ADDR
--------------------
                    WHEN C_BAYER_FORMAT_ADDR =>
                        bayer_format0_o <= data_i(1 DOWNTO 0);
                        bayer_format1_o <= data_i(5 DOWNTO 4);
                        bayer_format2_o <= data_i(9 DOWNTO 8);
                        
--------------------
-- C_HIST_CURVE_ADDR
--------------------
                    WHEN C_HIST_CURVE_ADDR =>
                        curve_addr_o    <= data_i(31 DOWNTO 24);
                        curve_data_o    <= data_i(23 DOWNTO 16);
                        curve_valid_o   <= data_i(0); 

--------------------
-- OTHERS
--------------------
                    WHEN OTHERS =>
                        NULL;
                END CASE;
            END IF;
        END IF;
    END PROCESS;

--=================================================================================================
-- Component Instantiations
--=================================================================================================
--NA--

END ARCHITECTURE addr_decoder;