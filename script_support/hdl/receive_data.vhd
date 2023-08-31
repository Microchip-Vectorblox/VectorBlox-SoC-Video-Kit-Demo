--=================================================================================================
-- File Name                           : receive_data.vhd

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
-- adc_interface entity declaration
--=================================================================================================
ENTITY receive_data IS
PORT (
-- Port list
    -- System reset
    reset_i                            : IN  STD_LOGIC;

    -- System clock
    sys_clk_i                          : IN  STD_LOGIC;

    -- Data received signal from COREUART
    rx_rdy_i 		                   : IN STD_LOGIC;
    
    -- Data input
	data_i		                       : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    -- Output enable signal to CoreUART
    oen_o                               : OUT STD_LOGIC;

    -- Data sync output
    data_rdy_o                          : OUT STD_LOGIC;

    -- Address output
    addr_o                             : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- Data output
    data_o                             : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    
);
END receive_data;


--=================================================================================================
-- adc_interface architecture body
--=================================================================================================
ARCHITECTURE receive_data OF receive_data IS

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
                                         GET_1,
                                         SET_DATA_0,
                                         SET_DATA_0_I1,
                                         SET_DATA_0_I2,
                                         SET_DATA_0_I3,
                                         SET_DATA_0_I4,
                                         SET_DATA_0_I5,
                                         SET_DATA_1,
                                         SET_DATA_1_I1,
                                         SET_DATA_1_I2,
                                         SET_DATA_2,
                                         SET_DATA_2_I1,
                                         SET_DATA_2_I2,
                                         SET_DATA_3,
                                         SET_DATA_3_I1,
                                         SET_DATA_3_I2,                                      
                                         SET_DATA_4,
                                         SET_DATA_4_I1,
                                         SET_DATA_4_I2
                                        );
SIGNAL state            : UART_FSM;

SIGNAL oen_s            : STD_LOGIC;
SIGNAL s_data_rdy       : STD_LOGIC;
SIGNAL s_addr           : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL s_data           : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

--=================================================================================================
-- Top level output port assignments
--=================================================================================================
addr_o      <= s_addr;
data_o      <= s_data;
data_rdy_o  <= s_data_rdy;
oen_o       <= oen_s;
--=================================================================================================
-- Generate blocks
--=================================================================================================
--NA--

--=================================================================================================
-- Asynchronous blocks
--=================================================================================================

--------------------------------------------------------------------------
-- Name       : FSM_PROC
-- Description: This process implements the UART interface FSM
--------------------------------------------------------------------------
FSM_PROC:
    PROCESS(sys_clk_i,reset_i)
    BEGIN
        IF reset_i = '0' THEN
			state       <= IDLE;
			oen_s       <= '1';
			s_data_rdy  <= '0';
			s_addr      <= (OTHERS => '1');
			s_data      <= (OTHERS => '0');
        ELSIF RISING_EDGE(sys_clk_i) THEN
            CASE state IS
------------------
-- IDLE state
------------------
                WHEN IDLE             =>
                    s_data_rdy  <= '0';
                    IF (rx_rdy_i = '1') THEN
                        IF(data_i = x"AA")THEN --Handshake signal
                           state            <= GET_1;
                           oen_s               <= '0';
                        ELSE
                           state            <= IDLE;
						END IF;
                    ELSE
                        oen_s               <= '1';
                        state               <= IDLE;
                    END IF;

------------------
-- GET_1 state
------------------
                WHEN GET_1           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        IF(data_i = x"BB")THEN
                            state           <= SET_DATA_0;
                        ELSE
                            state           <= IDLE;
                        END IF;
                    ELSE
                        oen_s               <= '1'; 
                        state               <= GET_1;
                    END IF;

------------------
-- SET_DATA_0 state
------------------
                WHEN SET_DATA_0           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_0_I1;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_0;
                    END IF;

------------------
-- SET_DATA_0_I1 state
------------------
                WHEN SET_DATA_0_I1           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_0_I2;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_0_I1;
                    END IF;

------------------
-- SET_DATA_0_I2 state
------------------
                WHEN SET_DATA_0_I2           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        s_addr(15 DOWNTO 8) <= data_i;
                        state               <= SET_DATA_0_I3;
                    ELSE
                        oen_s               <= '1'; 
                        state               <= SET_DATA_0_I2;
                    END IF;
------------------
-- SET_DATA_0_I3 state
------------------
                WHEN SET_DATA_0_I3           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_0_I4;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_0_I3;
                    END IF;

------------------
-- SET_DATA_0_I4 state
------------------
                WHEN SET_DATA_0_I4           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_0_I5;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_0_I4;
                    END IF;

------------------
-- SET_DATA_0_I5 state
------------------
                WHEN SET_DATA_0_I5           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        s_addr(7 DOWNTO 0) <= data_i;
                        state               <= SET_DATA_1;
                    ELSE
                        oen_s               <= '1'; 
                        state               <= SET_DATA_0_I5;
                    END IF;
------------------
-- SET_DATA_1 state
------------------
                WHEN SET_DATA_1           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_1_I1;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_1;
                    END IF;
------------------
-- SET_DATA_1_I1 state
------------------
                WHEN SET_DATA_1_I1           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_1_I2;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_1_I1;
                    END IF;
------------------
-- SET_DATA_1_I2 state
------------------
                WHEN SET_DATA_1_I2           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        s_data(31 DOWNTO 24)<= data_i;
                        state               <= SET_DATA_2;
                    ELSE    
                        oen_s               <= '1'; 
                        state               <= SET_DATA_1_I2;
                    END IF;

------------------
-- SET_DATA_2 state
------------------
                WHEN SET_DATA_2           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_2_I1;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_2;
                    END IF;
------------------
-- SET_DATA_2_I1 state
------------------
                WHEN SET_DATA_2_I1           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_2_I2;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_2_I1;
                    END IF;
------------------
-- SET_DATA_2_I2 state
------------------
                WHEN SET_DATA_2_I2           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        s_data(23 DOWNTO 16)<= data_i;
                        state               <= SET_DATA_3;
                    ELSE    
                        oen_s               <= '1'; 
                        state               <= SET_DATA_2_I2;
                    END IF;
------------------
-- SET_DATA_3 state
------------------
                WHEN SET_DATA_3           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_3_I1;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_3;
                    END IF;
------------------
-- SET_DATA_3_I1 state
------------------
                WHEN SET_DATA_3_I1           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_3_I2;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_3_I1;
                    END IF;
------------------
-- SET_DATA_3_I2 state
------------------
                WHEN SET_DATA_3_I2           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        s_data(15 DOWNTO 8)<= data_i;
                        state               <= SET_DATA_4;
                    ELSE    
                        oen_s               <= '1'; 
                        state               <= SET_DATA_3_I2;
                    END IF;
------------------
-- SET_DATA_4 state
------------------
                WHEN SET_DATA_4           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_4_I1;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_4;
                    END IF;
------------------
-- SET_DATA_4_I1 state
------------------
                WHEN SET_DATA_4_I1           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        state               <= SET_DATA_4_I2;
                    ELSE            
                        oen_s               <= '1'; 
                        state               <= SET_DATA_4_I1;
                    END IF;
------------------
-- SET_DATA_4_I2 state
------------------
                WHEN SET_DATA_4_I2           =>
                    IF (rx_rdy_i = '1') THEN
                        oen_s               <= '0';
                        s_data(7 DOWNTO 0)<= data_i;
                        s_data_rdy          <= '1';
                        state               <= IDLE;
                    ELSE    
                        oen_s               <= '1'; 
                        state               <= SET_DATA_4_I2;
                    END IF;
--------------------
-- OTHERS state
--------------------
                WHEN OTHERS           =>
                        oen_s           <= '1';
                        s_data          <= (OTHERS => '0');
                        s_addr          <= (OTHERS => '0');
                        state           <= IDLE;

            END CASE;
        END IF;
        
    END PROCESS;

--=================================================================================================
-- Component Instantiations
--=================================================================================================
--NA--

END receive_data;