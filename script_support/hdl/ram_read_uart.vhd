--=================================================================================================
-- File Name                           : ram_read_uart.vhd
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
use IEEE.STD_LOGIC_UNSIGNED.all;

--=================================================================================================
-- ram_read_uart  entity declaration
--=================================================================================================
entity ram_read_uart is
  generic (
    -- Specifies width of all input and output ports
    g_RAM_ADDR_WIDTH : integer range 1 to 18 := 8
    );
  port (
-- Port list
    reset_i      : in  std_logic;       -- System clock    
    sys_clk_i    : in  std_logic;       -- System clock
    mem_rdy_i    : in  std_logic;       --from histogram IP
    timer_i      : in  std_logic;       --from external sync timer
    ram_data_i   : in  std_logic_vector(31 downto 0);  --lsram data
    start_send_o : out std_logic;
    ram_addr_o   : out std_logic_vector(g_RAM_ADDR_WIDTH-1 downto 0);  --lsram addr
    data1_msb_o  : out std_logic_vector(15 downto 0);
    data1_lsb_o  : out std_logic_vector(15 downto 0);
    data2_msb_o  : out std_logic_vector(15 downto 0);
    data2_lsb_o  : out std_logic_vector(15 downto 0);
    pkt_status_o : out std_logic_vector(7 downto 0)
    );
end ram_read_uart;

--=================================================================================================
-- apb3_if architecture body
--=================================================================================================

architecture ram_read_uart of ram_read_uart is

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

TYPE UART_FSM IS    	(IDLE,
						WAIT_START,
						READ_DATA1,
						READ_DATA2,
						SEND_DATA
						);
SIGNAL state        	: UART_FSM;
SIGNAL s_done           : STD_LOGIC;
SIGNAL s_mem_rdy_dly    : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL s_dummy_pkt_sent : STD_LOGIC;
SIGNAL s_mem_rdy_re     : STD_LOGIC;
SIGNAL s_data1          : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL s_data2          : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL s_ram_address	: STD_LOGIC_VECTOR(g_RAM_ADDR_WIDTH+3 DOWNTO 0);

begin

--=================================================================================================
-- Top level output port assignments
--=================================================================================================

data1_msb_o		<= s_data1(31 DOWNTO 16);
data1_lsb_o		<= s_data1(15 DOWNTO 0);
data2_msb_o		<= s_data2(31 DOWNTO 16);
data2_lsb_o		<= s_data2(15 DOWNTO 0);
ram_addr_o		<= s_ram_address(g_RAM_ADDR_WIDTH-1 DOWNTO 0);

--=================================================================================================
-- Generate blocks
--=================================================================================================
--NA--

--=================================================================================================
-- Asynchronous blocks
--=================================================================================================

s_mem_rdy_re	<= s_mem_rdy_dly(1) AND NOT(s_mem_rdy_dly(2));

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
            s_mem_rdy_dly 	<= (OTHERS => '0');
        ELSIF rising_edge(sys_clk_i) THEN
            s_mem_rdy_dly	<= s_mem_rdy_dly(1 DOWNTO 0) & mem_rdy_i;
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
                s_done          	<= '0';
                s_dummy_pkt_sent  	<= '0';
                s_data1     		<= (OTHERS => '0');
                s_data2     		<= (OTHERS => '0');
                s_ram_address  		<= (OTHERS => '0');
                pkt_status_o  		<= (OTHERS => '0');
                state           	<= IDLE;
        ELSIF RISING_EDGE(sys_clk_i) THEN
            CASE state IS
------------------
-- IDLE state
------------------
                WHEN IDLE =>
					s_ram_address  		<= (OTHERS => '0');
					pkt_status_o  		<= (OTHERS => '0');
					s_dummy_pkt_sent	<= '0';
					start_send_o		<= '0';
                    IF (s_mem_rdy_re = '1') THEN
                        state			<= WAIT_START;
                    ELSE
                        state       	<= IDLE;						
                    END IF;
------------------
-- WAIT_START state
------------------
                WHEN WAIT_START =>
					IF(s_ram_address >= x"0FF") THEN
						state 		<= IDLE;	
					ELSE
						IF (timer_i = '1') THEN
							IF(s_dummy_pkt_sent = '0') THEN
								pkt_status_o	<= x"01";
								s_data1			<= (OTHERS => '0');
								s_data2			<= (OTHERS => '0');
								s_dummy_pkt_sent<= '1';								
								start_send_o	<= '1';
							ELSE
								pkt_status_o	<= x"02";
								state       	<= READ_DATA1;
							END IF;
						ELSE
							start_send_o	<= '0';
						END IF;						
					END IF;
					
------------------
-- READ_DATA1 state
------------------
                WHEN READ_DATA1 =>
                    state           <= READ_DATA2;
					s_data1			<= ram_data_i;
					s_ram_address	<= s_ram_address + '1';
------------------
-- READ_DATA2 state
------------------
                WHEN READ_DATA2 =>
					state           <= SEND_DATA;
					s_data2			<= ram_data_i;
					s_ram_address	<= s_ram_address + '1';
------------------
-- SEND_DATA state
------------------
                WHEN SEND_DATA =>
					state           <= WAIT_START;
					start_send_o	<= '1';
--------------------
-- OTHERS state
--------------------
                WHEN OTHERS =>
                    s_done          <= '0';
					s_data1     	<= (OTHERS => '0');
					s_data1     	<= (OTHERS => '0');
					s_ram_address  	<= (OTHERS => '0');
					state           <= IDLE;
            END CASE;
        END IF;
        
    END PROCESS;

--=================================================================================================
-- Component Instantiations
--=================================================================================================
--NA--

end architecture ram_read_uart;
