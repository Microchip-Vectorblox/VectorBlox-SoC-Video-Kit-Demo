library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.ddr_dma_pkg.all;

entity ddr_dma_write_axi4 is
  generic (
    DATA_WIDTH          : positive := 8;
    ADDRESS_WIDTH       : positive := 32;
    MAX_BURST_LENGTH    : positive := 256;
    MAX_LINE_SIZE       : positive :=1920;
    STRIDE_ISBYTES      : natural := 0;

    AXI_ADDRESS_WIDTH       : positive := 32;
    AXI_DATA_WIDTH          : positive := 512;
    AXI_ID_WIDTH            : positive := 7
    );
  port (
    -- Video Native Target Intrface
    clk        : in std_logic;
    resetn     : in std_logic;

    config_frame_address_i   : in std_logic_vector(ADDRESS_WIDTH-1 downto 0);
    --config_frame_size_i      : in std_logic_vector(ADDRESS_WIDTH-1 downto 0);
    config_line_stride_i     : in std_logic_vector(ADDRESS_WIDTH-1 downto 0);
    --config_line_size_i       : in std_logic_vector(ADDRESS_WIDTH-1 downto 0);

    target_data_i          : in std_logic_vector(DATA_WIDTH-1 downto 0);
    target_data_valid_i    : in std_logic;
    target_frame_sync_i    : in std_logic;

    --Memory-Mapped Initiators
    aclk            : in std_logic;
    aresetn         : in std_logic;

    AWID    : out std_logic_vector(AXI_ID_WIDTH-1 downto 0);
    AWADDR  : out std_logic_vector(AXI_ADDRESS_WIDTH-1 downto 0);
    AWLEN   : out std_logic_vector(7 downto 0);
    AWSIZE  : out std_logic_vector(2 downto 0);
    AWBURST : out std_logic_vector(1 downto 0);
    AWCACHE : out std_logic_vector(3 downto 0);
    AWPROT  : out std_logic_vector(2 downto 0);
    AWVALID : out std_logic;
    AWREADY : in  std_logic;
      
    WSTRB  : out std_logic_vector((AXI_DATA_WIDTH/8)-1 downto 0);
    WVALID : out std_logic;
    WLAST  : out std_logic;
    WDATA  : out std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
    WREADY : in  std_logic;
      
    BID    : in  std_logic_vector(AXI_ID_WIDTH-1 downto 0) := (others => '-');
    BRESP  : in  std_logic_vector(1 downto 0);
    BVALID : in  std_logic;
    BREADY : out std_logic;
      
    ARID    : out std_logic_vector(AXI_ID_WIDTH-1 downto 0);
    ARADDR  : out std_logic_vector(AXI_ADDRESS_WIDTH-1 downto 0);
    ARLEN   : out std_logic_vector(7 downto 0);
    ARSIZE  : out std_logic_vector(2 downto 0);
    ARBURST : out std_logic_vector(1 downto 0);
    ARCACHE : out std_logic_vector(3 downto 0);
    ARPROT  : out std_logic_vector(2 downto 0);
    ARVALID : out std_logic;
    ARREADY : in  std_logic;
      
    RID    : in  std_logic_vector(AXI_ID_WIDTH-1 downto 0) := (others => '-');
    RDATA  : in  std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
    RRESP  : in  std_logic_vector(1 downto 0);
    RLAST  : in  std_logic;
    RVALID : in  std_logic;
    RREADY : out std_logic
  );
end entity ddr_dma_write_axi4;

architecture rtl of ddr_dma_write_axi4 is

  signal initiator_address            : std_logic_vector(AXI_ADDRESS_WIDTH-1 downto 0);
  signal initiator_burstlength        : std_logic_vector(7 downto 0);
  signal initiator_byteenable         : std_logic_vector(AXI_DATA_WIDTH/8-1 downto 0);
  signal initiator_requestvalid       : std_logic;
  signal initiator_waitrequest        : std_logic;
  signal initiator_writedata          : std_logic_vector(AXI_DATA_WIDTH-1 downto 0);
  signal initiator_writelast          : std_logic;
  signal initiator_writecomplete      : std_logic;

begin

  ------------------------------------------------------------------------------------------------
  -- Write Controller
  ------------------------------------------------------------------------------------------------
  ddr_dma_write : entity work.ddr_dma_write
    generic map (
      DATA_WIDTH             => DATA_WIDTH,  
      ADDRESS_WIDTH          => ADDRESS_WIDTH,
      MAX_LINE_SIZE          => MAX_LINE_SIZE,
      MAX_BURST_LENGTH       => MAX_BURST_LENGTH,
      STRIDE_ISBYTES         => STRIDE_ISBYTES,

      MEMORY_ADDRESS_WIDTH   => AXI_ADDRESS_WIDTH,
      MEMORY_DATA_WIDTH      => AXI_DATA_WIDTH
      )
    port map (
      -- Video Native Target Intrface
      clk      => clk,
      resetn   => resetn,
  
      config_frame_address_i  => config_frame_address_i,
      --config_frame_size_i     => config_frame_size_i,
      config_line_stride_i    => config_line_stride_i,
      --config_line_size_i      => config_line_size_i,
  
      target_data_i          => target_data_i,
      target_data_valid_i    => target_data_valid_i,
      target_frame_sync_i    => target_frame_sync_i,
  
      --Memory-Mapped Initiators
      aclk     => aclk,
      aresetn  => aresetn,
      initiator_waitrequest_i        => initiator_waitrequest,
      initiator_requestvalid_o       => initiator_requestvalid,
      initiator_address_o            => initiator_address,
      initiator_burstlength_o        => initiator_burstlength,
      initiator_writedata_o          => initiator_writedata,
      initiator_byteenable_o         => initiator_byteenable,
      initiator_writelast_o          => initiator_writelast,
      initiator_writecomplete_i      => initiator_writecomplete
      );

  ------------------------------------------------------------------------------------------------
   -- AXI Converter
  ------------------------------------------------------------------------------------------------
  ddr_dma_to_axi : entity work.ddr_dma_to_axi
    generic map(
      ADDRESS_WIDTH            => AXI_ADDRESS_WIDTH,
      DATA_WIDTH               => AXI_DATA_WIDTH,
      LOG2_BURSTLENGTH         => 8,
      MAX_OUTSTANDING_REQUESTS => 0,
      REQUEST_REGISTER         => OFF,
      RETURN_REGISTER          => FALSE,
      ID_BITS                  => AXI_ID_WIDTH,
      READ_WRITE_FENCE         => FALSE
      )
    port map(
      clk    => aclk,
      resetn => aresetn,

      oimm_address            => initiator_address,
      oimm_burstlength_minus1 => initiator_burstlength,
      oimm_byteenable         => initiator_byteenable,
      oimm_requestvalid       => initiator_requestvalid,
      oimm_requestvalid_id    => (others => '0'),
      oimm_readnotwrite       => '0',
      oimm_waitrequest        => initiator_waitrequest,

      oimm_writedata          => initiator_writedata,
      oimm_writelast          => initiator_writelast,
      oimm_writecomplete      => initiator_writecomplete,
      oimm_writecomplete_id   => open,

      oimm_readdata           => open,
      oimm_readdatavalid      => open,
      oimm_readdatavalid_id   => open,
      oimm_readlast           => open,

      --AXI memory-mapped initiator
      AWID    => AWID,
      AWADDR  => AWADDR,
      AWLEN   => AWLEN,
      AWSIZE  => AWSIZE,
      AWBURST => AWBURST,
      AWCACHE => AWCACHE,
      AWPROT  => AWPROT,
      AWVALID => AWVALID,
      AWREADY => AWREADY,
      
      WSTRB  => WSTRB,
      WVALID => WVALID,
      WLAST  => WLAST,
      WDATA  => WDATA,
      WREADY => WREADY,
      
      BID    => BID,
      BRESP  => BRESP,
      BVALID => BVALID,
      BREADY => BREADY,
      
      ARID    => ARID,
      ARADDR  => ARADDR,
      ARLEN   => ARLEN,
      ARSIZE  => ARSIZE,
      ARBURST => ARBURST,
      ARCACHE => ARCACHE,
      ARPROT  => ARPROT,
      ARVALID => ARVALID,
      ARREADY => ARREADY,
      
      RID    => RID,
      RDATA  => RDATA,
      RRESP  => RRESP,
      RLAST  => RLAST,
      RVALID => RVALID,
      RREADY => RREADY
      );

end architecture rtl;   