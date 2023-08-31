--=================================================================================================
-- File Name                           : timer.vhd


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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.std_logic_1164.ALL;

ENTITY timer IS
PORT (
    -- Reset signal
	reset_i 	    : IN STD_LOGIC;
    -- System reset
    sys_clk_i 	    : IN STD_LOGIC;
    -- Output pulse
    tick_o          : OUT STD_LOGIC;
    pulse_o         : OUT STD_LOGIC
);
END timer;

--=================================================================================================
-- Architecture body
--=================================================================================================
ARCHITECTURE t1 OF timer IS
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
SIGNAL s_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL s_pulse : STD_LOGIC;


BEGIN
--=================================================================================================
-- Top level output port assignments
--=================================================================================================
pulse_o <= s_pulse;
--=================================================================================================
-- Synchronous blocks
--=================================================================================================
DELAY_PROC:
    PROCESS(reset_i,sys_clk_i)
    BEGIN
        IF (reset_i = '0') THEN
            s_out <= (OTHERS => '0');
            tick_o  <= '0';
            s_pulse <= '0';
        ELSIF rising_edge(sys_clk_i) THEN
            IF(s_out(15 DOWNTO 0) = x"2710")THEN--50MHz clock, x"4C0000" counts = 99.61ms//2FA//C350 -> 1ms//2710 -> 0.2ms
                s_out <= (OTHERS => '0');
                tick_o <= '1';
                s_pulse <= NOT(s_pulse);
            ELSE
                tick_o <= '0';
                s_out  <= s_out + '1';
            END IF;
        END IF;
    END PROCESS;


--=================================================================================================
-- Component Instantiations
--=================================================================================================
--NA--
end t1;