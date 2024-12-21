library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;

entity video_cdc_fifo is
  generic (
    DATA_WIDTH          : positive := 24;
    LOG2_FIFO_DEPTH     : positive := 12 -- 2k
    );
  port (
    tclk                   : in std_logic;
    tresetn                : in std_logic;
    target_data_i          : in std_logic_vector(DATA_WIDTH-1 downto 0);
    target_data_valid_i    : in std_logic;
    target_frame_sync_i    : in std_logic;

    iclk                   : in std_logic; -- initiator clk >= target clk
    iresetn                : in std_logic;
    initiator_data_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
    initiator_data_valid_o : out std_logic;
    initiator_frame_sync_o : out std_logic
  );
end entity video_cdc_fifo;

architecture rtl of video_cdc_fifo is
  signal target_frame_sync       : std_logic;
  signal target_data_valid       : std_logic;
  signal target_data             : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal target_line_end         : std_logic;
  signal target_line_start       : std_logic;
  signal target_line_size        : std_logic_vector(LOG2_FIFO_DEPTH-1 downto 0);

  signal xd_frame_sync           : std_logic_vector(1 downto 0);

  signal fifo_write_resetn       : std_logic;
  signal fifo_write_full         : std_logic;
  signal fifo_write_count        : unsigned(LOG2_FIFO_DEPTH-1 downto 0);

  signal fifo_read_resetn        : std_logic;
  signal fifo_read_enable        : std_logic;
  signal fifo_read_empty         : std_logic;
  signal fifo_read_count         : unsigned(LOG2_FIFO_DEPTH-1 downto 0);

  signal initiator_line_start    : std_logic;
  signal initiator_line_size     : std_logic_vector(LOG2_FIFO_DEPTH-1 downto 0);
  signal initiator_frame_sync    : std_logic;
  signal initiator_data_valid    : std_logic;
  signal initiator_data          : std_logic_vector(DATA_WIDTH-1 downto 0);
 
begin

  ------------------------------------------------------------------------------------------------
  -- Input registers and input line size count
  ------------------------------------------------------------------------------------------------
  process (tclk) is
  begin
    if rising_edge(tclk) then
      target_frame_sync <= target_frame_sync_i;
      target_data_valid <= target_data_valid_i;
      target_data       <= target_data_i;

      if target_line_start = '1' then
        fifo_write_count <= (others => '0');
      elsif target_data_valid = '1' then
        fifo_write_count <= fifo_write_count + to_unsigned(1, fifo_write_count'length);
      end if;

      if tresetn = '0' then
        target_frame_sync <= '0';
        target_data_valid <= '0';
        fifo_write_count <= (others => '0');
      end if;
    end if;
  end process;

  target_line_start <= (target_data_valid_i) and (not target_data_valid);
  target_line_end   <= (not target_data_valid_i) and target_data_valid;
  target_line_size  <= std_logic_vector(fifo_write_count);

  ------------------------------------------------------------------------------------------------
  -- Data FIFO
  ------------------------------------------------------------------------------------------------
  fifo_write_resetn <= tresetn and (not target_frame_sync);
  fifo_read_resetn  <= iresetn and (not initiator_frame_sync);
  
  vbx_cm_async_fifo : entity work.vbx_cm_async_fifo
    generic map (
      ADDRESS_WIDTH => LOG2_FIFO_DEPTH,
      DATA_WIDTH    => DATA_WIDTH
      )
    port map (
      wclock_i         => tclk,
      wresetn_i        => fifo_write_resetn,
      wfull_o          => fifo_write_full,
      wen_i            => target_data_valid,
      wdata_i          => target_data,
    
      rclock_i         => iclk,
	    rresetn_i        => fifo_read_resetn,
      rempty_o         => fifo_read_empty,
	    ren_i            => fifo_read_enable,
	    rdata_o          => initiator_data,
      rdata_rdy_o      => initiator_data_valid
    );


  ------------------------------------------------------------------------------------------------
  -- Clock Domain Crossing
  ------------------------------------------------------------------------------------------------
  vbx_cm_cdc : entity work.vbx_cm_cdc
    generic map(
      DATA_WIDTH => LOG2_FIFO_DEPTH
    )
    port map(
      from_clk            => tclk,
      from_resetn         => tresetn,
      from_valid_pulse_i  => target_line_end,
      from_data_i         => target_line_size,
      
      to_clk              => iclk,
      to_resetn           => iresetn,
      to_valid_pulse_o    => initiator_line_start,
      to_data_o           => initiator_line_size
    );

  process (iclk) is
  begin
    if rising_edge(iclk) then
      xd_frame_sync <= (xd_frame_sync(0) & target_frame_sync); --2 register clock sync
    end if;
  end process;
    
  initiator_frame_sync <= xd_frame_sync(1);

  ------------------------------------------------------------------------------------------------
  -- Output Register and output line size count
  ------------------------------------------------------------------------------------------------
  process (iclk) is
  begin
    if rising_edge(iclk) then
      if initiator_line_start = '1' then
        fifo_read_enable <= '1'; 
        fifo_read_count <= unsigned(initiator_line_size);
      elsif  fifo_read_enable = '1' then
        fifo_read_count <= fifo_read_count - to_unsigned(1, fifo_read_count'length);
        if fifo_read_count = to_unsigned(0, fifo_read_count'length) then
          fifo_read_enable <= '0';
        end if;
      end if;

      initiator_data_o          <= initiator_data;
      initiator_data_valid_o    <= initiator_data_valid;
      initiator_frame_sync_o    <= initiator_frame_sync;

      if(iresetn = '0') then
        fifo_read_enable <= '0';
        initiator_data_valid_o    <= '0';
        initiator_frame_sync_o    <= '0';
      end if;
    end if;
  end process;

end architecture rtl;   