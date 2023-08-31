--=================================================================================================
-- File Name                           : send_data.vhd


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
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

--=================================================================================================
-- send_data entity declaration
--=================================================================================================
ENTITY send_data IS

PORT (
-- Port list
    -- System reset
    reset_i                            : IN  STD_LOGIC;

    -- System clock
    sys_clk_i                          : IN  STD_LOGIC;

    -- Data received signal from COREUART
    tx_rdy_i 		                   : IN STD_LOGIC;

    -- Send trigger
    start_i 		                   : IN STD_LOGIC;
    
    -- Data input
	data_cha_i		                   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_chb_i		                   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_chc_i		                   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_chd_i		                   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    status_i                           : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    -- Output enable signal to CoreUART
    wen_o                              : OUT STD_LOGIC;

    -- Address output
    data_o                             : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    
);
END send_data;


--=================================================================================================
-- send_data architecture body
--=================================================================================================
ARCHITECTURE send_data OF send_data IS

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
TYPE UART_FSM IS                    	(IDLE,
                                         SEND_DATA_0,
                                         SEND_DATA_0I,
                                         SEND_DATA_1,
                                         SEND_DATA_1I,
                                         SEND_DATA_2,
                                         SEND_DATA_2I,
                                         SEND_DATA_3,
                                         SEND_DATA_3I,
                                         SEND_DATA_4,
                                         SEND_DATA_4I,
                                         SEND_DATA_5,
                                         SEND_DATA_5I,
                                         SEND_DATA_6,
                                         SEND_DATA_6I,
                                         SEND_DATA_7,
                                         SEND_DATA_7I,
                                         SEND_DATA_8,
                                         SEND_DATA_8I,
                                         SEND_DATA_9,
                                         SEND_DATA_9I,
                                         SEND_DATA_10,
                                         SEND_DATA_10I
                                        );
SIGNAL state            : UART_FSM;

SIGNAL wen_s            : STD_LOGIC;
SIGNAL s_start_dtc      : STD_LOGIC;
SIGNAL s_start_dly      : STD_LOGIC;
SIGNAL s_status         : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out_s       : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s_data_cha       : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL s_data_chb       : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL s_data_chc       : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL s_data_chd       : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN

--=================================================================================================
-- Top level output port assignments
--=================================================================================================
wen_o       <= wen_s;
data_o      <= data_out_s;
--=================================================================================================
-- Generate blocks
--=================================================================================================
--NA--

--=================================================================================================
-- Asynchronous blocks
--=================================================================================================
s_start_dtc <= NOT(s_start_dly) AND start_i;
--=================================================================================================
-- Synchronous blocks
--=================================================================================================
--------------------------------------------------------------------------
-- Name       : DELAY_PROC
-- Description: This process generates the slave select signal
--------------------------------------------------------------------------
DELAY_PROC:
    PROCESS(reset_i,sys_clk_i)
    BEGIN
        IF (reset_i = '0') THEN
            s_start_dly <= '0';
        ELSIF rising_edge(sys_clk_i) THEN
            s_start_dly <= start_i;
        END IF;
    END PROCESS;


--------------------------------------------------------------------------
-- Name       : LATCH_PROC
-- Description: This process latches inputs at the start trigger
--------------------------------------------------------------------------
LATCH_PROC:
    PROCESS(reset_i,sys_clk_i)
    BEGIN
        IF (reset_i = '0') THEN
            s_data_cha <= (OTHERS => '0');
            s_data_chb <= (OTHERS => '0');
            s_data_chc <= (OTHERS => '0');
            s_data_chd <= (OTHERS => '0');
            s_status   <= (OTHERS => '0');
        ELSIF rising_edge(sys_clk_i) THEN
            IF(s_start_dtc = '1')THEN
                s_data_cha <= data_cha_i;
                s_data_chb <= data_chb_i;
                s_data_chc <= data_chc_i;
                s_data_chd <= data_chd_i;
                s_status   <= status_i;
            END IF;
        END IF;
    END PROCESS;
--------------------------------------------------------------------------
-- Name       : FSM_PROC
-- Description: This process implements the UART interface FSM
--------------------------------------------------------------------------
FSM_PROC:
    PROCESS(sys_clk_i,reset_i)
    BEGIN
        IF reset_i = '0' THEN
			state       <= IDLE;
			wen_s       <= '1';
			data_out_s  <= x"CC";
        ELSIF RISING_EDGE(sys_clk_i) THEN
            CASE state IS
------------------
-- IDLE state
------------------
                WHEN IDLE             =>

                    wen_s               <= '1';
                    IF (tx_rdy_i = '1') THEN
                        IF(s_start_dtc = '1')THEN --Start
                           state            <= SEND_DATA_0;
                        ELSE
                           state            <= IDLE;
						END IF;
                    ELSE
                        state               <= IDLE;
                    END IF;

------------------
-- SEND_DATA_0 state
------------------
                WHEN SEND_DATA_0           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_0I;
                            wen_s       <= '0';
                        ELSE        
                            state       <= SEND_DATA_0;
                            wen_s       <= '1';
                        END IF;  

------------------
-- SEND_DATA_0I state
------------------
                WHEN SEND_DATA_0I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_1;
                            data_out_s  <= x"AA";
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_0I;
                            wen_s       <= '1';
                        END IF; 

------------------
-- SEND_DATA_1 state
------------------
                WHEN SEND_DATA_1           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_1I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_1;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_1I state
------------------
                WHEN SEND_DATA_1I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_2;
                            data_out_s  <= x"BB";
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_1I;
                            wen_s       <= '1';
                        END IF;                    

------------------
-- SEND_DATA_2 state
------------------
                WHEN SEND_DATA_2           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_2I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_2;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_2I state
------------------
                WHEN SEND_DATA_2I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_3;
                            data_out_s  <= s_data_cha(15 DOWNTO 8);
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_2I;
                            wen_s       <= '1';
                        END IF;

------------------
-- SEND_DATA_3 state
------------------
                WHEN SEND_DATA_3           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_3I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_3;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_3I state
------------------
                WHEN SEND_DATA_3I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_4;
                            data_out_s  <= s_data_cha(7 DOWNTO 0);
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_3I;
                            wen_s       <= '1';
                        END IF; 

------------------
-- SEND_DATA_4 state
------------------
                WHEN SEND_DATA_4           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_4I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_4;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_4I state
------------------
                WHEN SEND_DATA_4I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_5;
                            data_out_s  <= s_data_chb(15 DOWNTO 8);
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_4I;
                            wen_s       <= '1';
                        END IF;

------------------
-- SEND_DATA_5 state
------------------
                WHEN SEND_DATA_5           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_5I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_5;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_5I state
------------------
                WHEN SEND_DATA_5I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_6;
                            data_out_s  <= s_data_chb(7 DOWNTO 0);
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_5I;
                            wen_s       <= '1';
                        END IF; 

------------------
-- SEND_DATA_6 state
------------------
                WHEN SEND_DATA_6           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_6I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_6;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_6I state
------------------
                WHEN SEND_DATA_6I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_7;
                            data_out_s  <= s_data_chc(15 DOWNTO 8);
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_6I;
                            wen_s       <= '1';
                        END IF;

------------------
-- SEND_DATA_7 state
------------------
                WHEN SEND_DATA_7           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_7I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_7;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_7I state
------------------
                WHEN SEND_DATA_7I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_8;
                            data_out_s  <= s_data_chc(7 DOWNTO 0);
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_7I;
                            wen_s       <= '1';
                        END IF; 

------------------
-- SEND_DATA_8 state
------------------
                WHEN SEND_DATA_8           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_8I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_8;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_8I state
------------------
                WHEN SEND_DATA_8I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_9;
                            data_out_s  <= s_data_chd(15 DOWNTO 8);
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_8I;
                            wen_s       <= '1';
                        END IF;

------------------
-- SEND_DATA_9 state
------------------
                WHEN SEND_DATA_9           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_9I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_9;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_9I state
------------------
                WHEN SEND_DATA_9I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_10;
                            data_out_s  <= s_data_chd(7 DOWNTO 0);
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_9I;
                            wen_s       <= '1';
                        END IF; 

------------------
-- SEND_DATA_10 state
------------------
                WHEN SEND_DATA_10           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= SEND_DATA_10I;
                            wen_s       <= '0';
                        ELSE        
                            state       <=  SEND_DATA_10;
                            wen_s       <= '1';
                        END IF;      

------------------
-- SEND_DATA_10I state
------------------
                WHEN SEND_DATA_10I           =>
                        IF (tx_rdy_i = '1') THEN
                            state       <= IDLE;
                            data_out_s  <= s_status;
                            wen_s       <= '0';
                        ELSE
                            state       <= SEND_DATA_10I;
                            wen_s       <= '1';
                        END IF; 

--------------------
-- OTHERS state
--------------------
                WHEN OTHERS           =>
                        wen_s           <= '1';
                        data_out_s      <= (OTHERS => '0');
                        state           <= IDLE;

            END CASE;
        END IF;
        
    END PROCESS;

--=================================================================================================
-- Component Instantiations
--=================================================================================================
--NA--

END send_data;