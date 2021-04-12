//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Mar 24 11:43:34 2021
//Host        : tud211698.ws.tudelft.net running 64-bit openSUSE Leap 15.1
//Command     : generate_target DMA1_HBM1_bd.bd
//Design      : DMA1_HBM1_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "DMA1_HBM1_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DMA1_HBM1_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "DMA1_HBM1_bd.hwdef" *) 
module DMA1_HBM1_bd
   (ap_clk,
    ap_rst_n,
    m00_axi_araddr,
    m00_axi_arburst,
    m00_axi_arcache,
    m00_axi_arlen,
    m00_axi_arprot,
    m00_axi_arready,
    m00_axi_arsize,
    m00_axi_arvalid,
    m00_axi_awaddr,
    m00_axi_awburst,
    m00_axi_awcache,
    m00_axi_awlen,
    m00_axi_awprot,
    m00_axi_awready,
    m00_axi_awsize,
    m00_axi_awvalid,
    m00_axi_bready,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_rdata,
    m00_axi_rlast,
    m00_axi_rready,
    m00_axi_rresp,
    m00_axi_rvalid,
    m00_axi_wdata,
    m00_axi_wlast,
    m00_axi_wready,
    m00_axi_wstrb,
    m00_axi_wvalid,
    m_axi_host_mem_araddr,
    m_axi_host_mem_arburst,
    m_axi_host_mem_arcache,
    m_axi_host_mem_arlen,
    m_axi_host_mem_arlock,
    m_axi_host_mem_arprot,
    m_axi_host_mem_arqos,
    m_axi_host_mem_arready,
    m_axi_host_mem_arregion,
    m_axi_host_mem_arsize,
    m_axi_host_mem_arvalid,
    m_axi_host_mem_awaddr,
    m_axi_host_mem_awburst,
    m_axi_host_mem_awcache,
    m_axi_host_mem_awlen,
    m_axi_host_mem_awlock,
    m_axi_host_mem_awprot,
    m_axi_host_mem_awqos,
    m_axi_host_mem_awready,
    m_axi_host_mem_awregion,
    m_axi_host_mem_awsize,
    m_axi_host_mem_awvalid,
    m_axi_host_mem_bready,
    m_axi_host_mem_bresp,
    m_axi_host_mem_bvalid,
    m_axi_host_mem_rdata,
    m_axi_host_mem_rlast,
    m_axi_host_mem_rready,
    m_axi_host_mem_rresp,
    m_axi_host_mem_rvalid,
    m_axi_host_mem_wdata,
    m_axi_host_mem_wlast,
    m_axi_host_mem_wready,
    m_axi_host_mem_wstrb,
    m_axi_host_mem_wvalid,
    s_axi_control_araddr,
    s_axi_control_arprot,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awprot,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m00_axi:m01_axi:s_axi_control:m02_axi:m03_axi:m04_axi:m05_axi:m06_axi:m07_axi:m08_axi:m09_axi:m10_axi:m11_axi:m12_axi:m13_axi:m14_axi:m15_axi:m_axi_host_mem, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN DMA1_HBM1_bd_ap_clk, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN DMA1_HBM1_bd_ap_clk, DATA_WIDTH 256, FREQ_HZ 250000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 32, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARBURST" *) output [1:0]m00_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARCACHE" *) output [3:0]m00_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARLEN" *) output [7:0]m00_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARSIZE" *) output [2:0]m00_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWADDR" *) output [63:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWBURST" *) output [1:0]m00_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWCACHE" *) output [3:0]m00_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWLEN" *) output [7:0]m00_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWSIZE" *) output [2:0]m00_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RDATA" *) input [255:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RLAST" *) input m00_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RREADY" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WDATA" *) output [255:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WLAST" *) output m00_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WSTRB" *) output [31:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_host_mem, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN DMA1_HBM1_bd_ap_clk, DATA_WIDTH 1024, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 32, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_host_mem_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARBURST" *) output [1:0]m_axi_host_mem_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARCACHE" *) output [3:0]m_axi_host_mem_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARLEN" *) output [7:0]m_axi_host_mem_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARLOCK" *) output [0:0]m_axi_host_mem_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARPROT" *) output [2:0]m_axi_host_mem_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARQOS" *) output [3:0]m_axi_host_mem_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARREADY" *) input m_axi_host_mem_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARREGION" *) output [3:0]m_axi_host_mem_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARSIZE" *) output [2:0]m_axi_host_mem_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem ARVALID" *) output m_axi_host_mem_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWADDR" *) output [63:0]m_axi_host_mem_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWBURST" *) output [1:0]m_axi_host_mem_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWCACHE" *) output [3:0]m_axi_host_mem_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWLEN" *) output [7:0]m_axi_host_mem_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWLOCK" *) output [0:0]m_axi_host_mem_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWPROT" *) output [2:0]m_axi_host_mem_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWQOS" *) output [3:0]m_axi_host_mem_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWREADY" *) input m_axi_host_mem_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWREGION" *) output [3:0]m_axi_host_mem_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWSIZE" *) output [2:0]m_axi_host_mem_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem AWVALID" *) output m_axi_host_mem_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem BREADY" *) output m_axi_host_mem_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem BRESP" *) input [1:0]m_axi_host_mem_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem BVALID" *) input m_axi_host_mem_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem RDATA" *) input [1023:0]m_axi_host_mem_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem RLAST" *) input m_axi_host_mem_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem RREADY" *) output m_axi_host_mem_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem RRESP" *) input [1:0]m_axi_host_mem_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem RVALID" *) input m_axi_host_mem_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem WDATA" *) output [1023:0]m_axi_host_mem_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem WLAST" *) output m_axi_host_mem_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem WREADY" *) input m_axi_host_mem_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem WSTRB" *) output [127:0]m_axi_host_mem_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_host_mem WVALID" *) output m_axi_host_mem_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN DMA1_HBM1_bd_ap_clk, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARPROT" *) input [2:0]s_axi_control_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [31:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWPROT" *) input [2:0]s_axi_control_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_wvalid;

  wire ap_clk_1;
  wire ap_rst_n_1;
  wire [255:0]axi_dma_capi2hbm_0_M_AXIS_MM2S_TDATA;
  wire [31:0]axi_dma_capi2hbm_0_M_AXIS_MM2S_TKEEP;
  wire axi_dma_capi2hbm_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_capi2hbm_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_capi2hbm_0_M_AXIS_MM2S_TVALID;
  wire [63:0]axi_dma_capi2hbm_0_M_AXI_ARADDR;
  wire [1:0]axi_dma_capi2hbm_0_M_AXI_ARBURST;
  wire [3:0]axi_dma_capi2hbm_0_M_AXI_ARCACHE;
  wire [7:0]axi_dma_capi2hbm_0_M_AXI_ARLEN;
  wire [2:0]axi_dma_capi2hbm_0_M_AXI_ARPROT;
  wire axi_dma_capi2hbm_0_M_AXI_ARREADY;
  wire [2:0]axi_dma_capi2hbm_0_M_AXI_ARSIZE;
  wire axi_dma_capi2hbm_0_M_AXI_ARVALID;
  wire [63:0]axi_dma_capi2hbm_0_M_AXI_AWADDR;
  wire [1:0]axi_dma_capi2hbm_0_M_AXI_AWBURST;
  wire [3:0]axi_dma_capi2hbm_0_M_AXI_AWCACHE;
  wire [7:0]axi_dma_capi2hbm_0_M_AXI_AWLEN;
  wire [2:0]axi_dma_capi2hbm_0_M_AXI_AWPROT;
  wire axi_dma_capi2hbm_0_M_AXI_AWREADY;
  wire [2:0]axi_dma_capi2hbm_0_M_AXI_AWSIZE;
  wire axi_dma_capi2hbm_0_M_AXI_AWVALID;
  wire axi_dma_capi2hbm_0_M_AXI_BREADY;
  wire [1:0]axi_dma_capi2hbm_0_M_AXI_BRESP;
  wire axi_dma_capi2hbm_0_M_AXI_BVALID;
  wire [255:0]axi_dma_capi2hbm_0_M_AXI_RDATA;
  wire axi_dma_capi2hbm_0_M_AXI_RLAST;
  wire axi_dma_capi2hbm_0_M_AXI_RREADY;
  wire [1:0]axi_dma_capi2hbm_0_M_AXI_RRESP;
  wire axi_dma_capi2hbm_0_M_AXI_RVALID;
  wire [255:0]axi_dma_capi2hbm_0_M_AXI_WDATA;
  wire axi_dma_capi2hbm_0_M_AXI_WLAST;
  wire axi_dma_capi2hbm_0_M_AXI_WREADY;
  wire [31:0]axi_dma_capi2hbm_0_M_AXI_WSTRB;
  wire axi_dma_capi2hbm_0_M_AXI_WVALID;
  wire [255:0]axi_dma_capi_0_M_AXIS_MM2S_TDATA;
  wire [31:0]axi_dma_capi_0_M_AXIS_MM2S_TKEEP;
  wire axi_dma_capi_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_capi_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_capi_0_M_AXIS_MM2S_TVALID;
  wire [63:0]axi_dma_capi_0_M_AXI_ARADDR;
  wire [1:0]axi_dma_capi_0_M_AXI_ARBURST;
  wire [3:0]axi_dma_capi_0_M_AXI_ARCACHE;
  wire [7:0]axi_dma_capi_0_M_AXI_ARLEN;
  wire [2:0]axi_dma_capi_0_M_AXI_ARPROT;
  wire axi_dma_capi_0_M_AXI_ARREADY;
  wire [2:0]axi_dma_capi_0_M_AXI_ARSIZE;
  wire axi_dma_capi_0_M_AXI_ARVALID;
  wire [63:0]axi_dma_capi_0_M_AXI_AWADDR;
  wire [1:0]axi_dma_capi_0_M_AXI_AWBURST;
  wire [3:0]axi_dma_capi_0_M_AXI_AWCACHE;
  wire [7:0]axi_dma_capi_0_M_AXI_AWLEN;
  wire [2:0]axi_dma_capi_0_M_AXI_AWPROT;
  wire axi_dma_capi_0_M_AXI_AWREADY;
  wire [2:0]axi_dma_capi_0_M_AXI_AWSIZE;
  wire axi_dma_capi_0_M_AXI_AWVALID;
  wire axi_dma_capi_0_M_AXI_BREADY;
  wire [1:0]axi_dma_capi_0_M_AXI_BRESP;
  wire axi_dma_capi_0_M_AXI_BVALID;
  wire [1023:0]axi_dma_capi_0_M_AXI_RDATA;
  wire axi_dma_capi_0_M_AXI_RLAST;
  wire axi_dma_capi_0_M_AXI_RREADY;
  wire [1:0]axi_dma_capi_0_M_AXI_RRESP;
  wire axi_dma_capi_0_M_AXI_RVALID;
  wire [1023:0]axi_dma_capi_0_M_AXI_WDATA;
  wire axi_dma_capi_0_M_AXI_WLAST;
  wire axi_dma_capi_0_M_AXI_WREADY;
  wire [127:0]axi_dma_capi_0_M_AXI_WSTRB;
  wire axi_dma_capi_0_M_AXI_WVALID;
  wire [9:0]axi_register_slice_0_M_AXI_ARADDR;
  wire axi_register_slice_0_M_AXI_ARREADY;
  wire axi_register_slice_0_M_AXI_ARVALID;
  wire [9:0]axi_register_slice_0_M_AXI_AWADDR;
  wire axi_register_slice_0_M_AXI_AWREADY;
  wire axi_register_slice_0_M_AXI_AWVALID;
  wire axi_register_slice_0_M_AXI_BREADY;
  wire [1:0]axi_register_slice_0_M_AXI_BRESP;
  wire axi_register_slice_0_M_AXI_BVALID;
  wire [31:0]axi_register_slice_0_M_AXI_RDATA;
  wire axi_register_slice_0_M_AXI_RREADY;
  wire [1:0]axi_register_slice_0_M_AXI_RRESP;
  wire axi_register_slice_0_M_AXI_RVALID;
  wire [31:0]axi_register_slice_0_M_AXI_WDATA;
  wire axi_register_slice_0_M_AXI_WREADY;
  wire axi_register_slice_0_M_AXI_WVALID;
  wire [9:0]axi_register_slice_1_M_AXI_ARADDR;
  wire axi_register_slice_1_M_AXI_ARREADY;
  wire axi_register_slice_1_M_AXI_ARVALID;
  wire [9:0]axi_register_slice_1_M_AXI_AWADDR;
  wire axi_register_slice_1_M_AXI_AWREADY;
  wire axi_register_slice_1_M_AXI_AWVALID;
  wire axi_register_slice_1_M_AXI_BREADY;
  wire [1:0]axi_register_slice_1_M_AXI_BRESP;
  wire axi_register_slice_1_M_AXI_BVALID;
  wire [31:0]axi_register_slice_1_M_AXI_RDATA;
  wire axi_register_slice_1_M_AXI_RREADY;
  wire [1:0]axi_register_slice_1_M_AXI_RRESP;
  wire axi_register_slice_1_M_AXI_RVALID;
  wire [31:0]axi_register_slice_1_M_AXI_WDATA;
  wire axi_register_slice_1_M_AXI_WREADY;
  wire axi_register_slice_1_M_AXI_WVALID;
  wire [63:0]axi_register_slice_2_M_AXI_ARADDR;
  wire [1:0]axi_register_slice_2_M_AXI_ARBURST;
  wire [3:0]axi_register_slice_2_M_AXI_ARCACHE;
  wire [7:0]axi_register_slice_2_M_AXI_ARLEN;
  wire [0:0]axi_register_slice_2_M_AXI_ARLOCK;
  wire [2:0]axi_register_slice_2_M_AXI_ARPROT;
  wire [3:0]axi_register_slice_2_M_AXI_ARQOS;
  wire axi_register_slice_2_M_AXI_ARREADY;
  wire [3:0]axi_register_slice_2_M_AXI_ARREGION;
  wire [2:0]axi_register_slice_2_M_AXI_ARSIZE;
  wire axi_register_slice_2_M_AXI_ARVALID;
  wire [63:0]axi_register_slice_2_M_AXI_AWADDR;
  wire [1:0]axi_register_slice_2_M_AXI_AWBURST;
  wire [3:0]axi_register_slice_2_M_AXI_AWCACHE;
  wire [7:0]axi_register_slice_2_M_AXI_AWLEN;
  wire [0:0]axi_register_slice_2_M_AXI_AWLOCK;
  wire [2:0]axi_register_slice_2_M_AXI_AWPROT;
  wire [3:0]axi_register_slice_2_M_AXI_AWQOS;
  wire axi_register_slice_2_M_AXI_AWREADY;
  wire [3:0]axi_register_slice_2_M_AXI_AWREGION;
  wire [2:0]axi_register_slice_2_M_AXI_AWSIZE;
  wire axi_register_slice_2_M_AXI_AWVALID;
  wire axi_register_slice_2_M_AXI_BREADY;
  wire [1:0]axi_register_slice_2_M_AXI_BRESP;
  wire axi_register_slice_2_M_AXI_BVALID;
  wire [1023:0]axi_register_slice_2_M_AXI_RDATA;
  wire axi_register_slice_2_M_AXI_RLAST;
  wire axi_register_slice_2_M_AXI_RREADY;
  wire [1:0]axi_register_slice_2_M_AXI_RRESP;
  wire axi_register_slice_2_M_AXI_RVALID;
  wire [1023:0]axi_register_slice_2_M_AXI_WDATA;
  wire axi_register_slice_2_M_AXI_WLAST;
  wire axi_register_slice_2_M_AXI_WREADY;
  wire [127:0]axi_register_slice_2_M_AXI_WSTRB;
  wire axi_register_slice_2_M_AXI_WVALID;
  wire [255:0]axis_register_slice_0_M_AXIS_TDATA;
  wire [31:0]axis_register_slice_0_M_AXIS_TKEEP;
  wire axis_register_slice_0_M_AXIS_TLAST;
  wire axis_register_slice_0_M_AXIS_TREADY;
  wire axis_register_slice_0_M_AXIS_TVALID;
  wire [255:0]axis_register_slice_1_M_AXIS_TDATA;
  wire [31:0]axis_register_slice_1_M_AXIS_TKEEP;
  wire axis_register_slice_1_M_AXIS_TLAST;
  wire axis_register_slice_1_M_AXIS_TREADY;
  wire axis_register_slice_1_M_AXIS_TVALID;
  wire [255:0]axis_register_slice_2_M_AXIS_TDATA;
  wire [31:0]axis_register_slice_2_M_AXIS_TKEEP;
  wire axis_register_slice_2_M_AXIS_TLAST;
  wire axis_register_slice_2_M_AXIS_TREADY;
  wire axis_register_slice_2_M_AXIS_TVALID;
  wire [255:0]axis_register_slice_3_M_AXIS_TDATA;
  wire [31:0]axis_register_slice_3_M_AXIS_TKEEP;
  wire axis_register_slice_3_M_AXIS_TLAST;
  wire axis_register_slice_3_M_AXIS_TREADY;
  wire axis_register_slice_3_M_AXIS_TVALID;
  wire [31:0]s_axi_control_1_ARADDR;
  wire [2:0]s_axi_control_1_ARPROT;
  wire s_axi_control_1_ARREADY;
  wire s_axi_control_1_ARVALID;
  wire [31:0]s_axi_control_1_AWADDR;
  wire [2:0]s_axi_control_1_AWPROT;
  wire s_axi_control_1_AWREADY;
  wire s_axi_control_1_AWVALID;
  wire s_axi_control_1_BREADY;
  wire [1:0]s_axi_control_1_BRESP;
  wire s_axi_control_1_BVALID;
  wire [31:0]s_axi_control_1_RDATA;
  wire s_axi_control_1_RREADY;
  wire [1:0]s_axi_control_1_RRESP;
  wire s_axi_control_1_RVALID;
  wire [31:0]s_axi_control_1_WDATA;
  wire s_axi_control_1_WREADY;
  wire [3:0]s_axi_control_1_WSTRB;
  wire s_axi_control_1_WVALID;
  wire [9:0]smartconnect_2_M00_AXI_ARADDR;
  wire [2:0]smartconnect_2_M00_AXI_ARPROT;
  wire smartconnect_2_M00_AXI_ARREADY;
  wire smartconnect_2_M00_AXI_ARVALID;
  wire [9:0]smartconnect_2_M00_AXI_AWADDR;
  wire [2:0]smartconnect_2_M00_AXI_AWPROT;
  wire smartconnect_2_M00_AXI_AWREADY;
  wire smartconnect_2_M00_AXI_AWVALID;
  wire smartconnect_2_M00_AXI_BREADY;
  wire [1:0]smartconnect_2_M00_AXI_BRESP;
  wire smartconnect_2_M00_AXI_BVALID;
  wire [31:0]smartconnect_2_M00_AXI_RDATA;
  wire smartconnect_2_M00_AXI_RREADY;
  wire [1:0]smartconnect_2_M00_AXI_RRESP;
  wire smartconnect_2_M00_AXI_RVALID;
  wire [31:0]smartconnect_2_M00_AXI_WDATA;
  wire smartconnect_2_M00_AXI_WREADY;
  wire [3:0]smartconnect_2_M00_AXI_WSTRB;
  wire smartconnect_2_M00_AXI_WVALID;
  wire [9:0]smartconnect_2_M01_AXI_ARADDR;
  wire [2:0]smartconnect_2_M01_AXI_ARPROT;
  wire smartconnect_2_M01_AXI_ARREADY;
  wire smartconnect_2_M01_AXI_ARVALID;
  wire [9:0]smartconnect_2_M01_AXI_AWADDR;
  wire [2:0]smartconnect_2_M01_AXI_AWPROT;
  wire smartconnect_2_M01_AXI_AWREADY;
  wire smartconnect_2_M01_AXI_AWVALID;
  wire smartconnect_2_M01_AXI_BREADY;
  wire [1:0]smartconnect_2_M01_AXI_BRESP;
  wire smartconnect_2_M01_AXI_BVALID;
  wire [31:0]smartconnect_2_M01_AXI_RDATA;
  wire smartconnect_2_M01_AXI_RREADY;
  wire [1:0]smartconnect_2_M01_AXI_RRESP;
  wire smartconnect_2_M01_AXI_RVALID;
  wire [31:0]smartconnect_2_M01_AXI_WDATA;
  wire smartconnect_2_M01_AXI_WREADY;
  wire [3:0]smartconnect_2_M01_AXI_WSTRB;
  wire smartconnect_2_M01_AXI_WVALID;

  assign ap_clk_1 = ap_clk;
  assign ap_rst_n_1 = ap_rst_n;
  assign axi_dma_capi2hbm_0_M_AXI_ARREADY = m00_axi_arready;
  assign axi_dma_capi2hbm_0_M_AXI_AWREADY = m00_axi_awready;
  assign axi_dma_capi2hbm_0_M_AXI_BRESP = m00_axi_bresp[1:0];
  assign axi_dma_capi2hbm_0_M_AXI_BVALID = m00_axi_bvalid;
  assign axi_dma_capi2hbm_0_M_AXI_RDATA = m00_axi_rdata[255:0];
  assign axi_dma_capi2hbm_0_M_AXI_RLAST = m00_axi_rlast;
  assign axi_dma_capi2hbm_0_M_AXI_RRESP = m00_axi_rresp[1:0];
  assign axi_dma_capi2hbm_0_M_AXI_RVALID = m00_axi_rvalid;
  assign axi_dma_capi2hbm_0_M_AXI_WREADY = m00_axi_wready;
  assign axi_register_slice_2_M_AXI_ARREADY = m_axi_host_mem_arready;
  assign axi_register_slice_2_M_AXI_AWREADY = m_axi_host_mem_awready;
  assign axi_register_slice_2_M_AXI_BRESP = m_axi_host_mem_bresp[1:0];
  assign axi_register_slice_2_M_AXI_BVALID = m_axi_host_mem_bvalid;
  assign axi_register_slice_2_M_AXI_RDATA = m_axi_host_mem_rdata[1023:0];
  assign axi_register_slice_2_M_AXI_RLAST = m_axi_host_mem_rlast;
  assign axi_register_slice_2_M_AXI_RRESP = m_axi_host_mem_rresp[1:0];
  assign axi_register_slice_2_M_AXI_RVALID = m_axi_host_mem_rvalid;
  assign axi_register_slice_2_M_AXI_WREADY = m_axi_host_mem_wready;
  assign m00_axi_araddr[63:0] = axi_dma_capi2hbm_0_M_AXI_ARADDR;
  assign m00_axi_arburst[1:0] = axi_dma_capi2hbm_0_M_AXI_ARBURST;
  assign m00_axi_arcache[3:0] = axi_dma_capi2hbm_0_M_AXI_ARCACHE;
  assign m00_axi_arlen[7:0] = axi_dma_capi2hbm_0_M_AXI_ARLEN;
  assign m00_axi_arprot[2:0] = axi_dma_capi2hbm_0_M_AXI_ARPROT;
  assign m00_axi_arsize[2:0] = axi_dma_capi2hbm_0_M_AXI_ARSIZE;
  assign m00_axi_arvalid = axi_dma_capi2hbm_0_M_AXI_ARVALID;
  assign m00_axi_awaddr[63:0] = axi_dma_capi2hbm_0_M_AXI_AWADDR;
  assign m00_axi_awburst[1:0] = axi_dma_capi2hbm_0_M_AXI_AWBURST;
  assign m00_axi_awcache[3:0] = axi_dma_capi2hbm_0_M_AXI_AWCACHE;
  assign m00_axi_awlen[7:0] = axi_dma_capi2hbm_0_M_AXI_AWLEN;
  assign m00_axi_awprot[2:0] = axi_dma_capi2hbm_0_M_AXI_AWPROT;
  assign m00_axi_awsize[2:0] = axi_dma_capi2hbm_0_M_AXI_AWSIZE;
  assign m00_axi_awvalid = axi_dma_capi2hbm_0_M_AXI_AWVALID;
  assign m00_axi_bready = axi_dma_capi2hbm_0_M_AXI_BREADY;
  assign m00_axi_rready = axi_dma_capi2hbm_0_M_AXI_RREADY;
  assign m00_axi_wdata[255:0] = axi_dma_capi2hbm_0_M_AXI_WDATA;
  assign m00_axi_wlast = axi_dma_capi2hbm_0_M_AXI_WLAST;
  assign m00_axi_wstrb[31:0] = axi_dma_capi2hbm_0_M_AXI_WSTRB;
  assign m00_axi_wvalid = axi_dma_capi2hbm_0_M_AXI_WVALID;
  assign m_axi_host_mem_araddr[63:0] = axi_register_slice_2_M_AXI_ARADDR;
  assign m_axi_host_mem_arburst[1:0] = axi_register_slice_2_M_AXI_ARBURST;
  assign m_axi_host_mem_arcache[3:0] = axi_register_slice_2_M_AXI_ARCACHE;
  assign m_axi_host_mem_arlen[7:0] = axi_register_slice_2_M_AXI_ARLEN;
  assign m_axi_host_mem_arlock[0] = axi_register_slice_2_M_AXI_ARLOCK;
  assign m_axi_host_mem_arprot[2:0] = axi_register_slice_2_M_AXI_ARPROT;
  assign m_axi_host_mem_arqos[3:0] = axi_register_slice_2_M_AXI_ARQOS;
  assign m_axi_host_mem_arregion[3:0] = axi_register_slice_2_M_AXI_ARREGION;
  assign m_axi_host_mem_arsize[2:0] = axi_register_slice_2_M_AXI_ARSIZE;
  assign m_axi_host_mem_arvalid = axi_register_slice_2_M_AXI_ARVALID;
  assign m_axi_host_mem_awaddr[63:0] = axi_register_slice_2_M_AXI_AWADDR;
  assign m_axi_host_mem_awburst[1:0] = axi_register_slice_2_M_AXI_AWBURST;
  assign m_axi_host_mem_awcache[3:0] = axi_register_slice_2_M_AXI_AWCACHE;
  assign m_axi_host_mem_awlen[7:0] = axi_register_slice_2_M_AXI_AWLEN;
  assign m_axi_host_mem_awlock[0] = axi_register_slice_2_M_AXI_AWLOCK;
  assign m_axi_host_mem_awprot[2:0] = axi_register_slice_2_M_AXI_AWPROT;
  assign m_axi_host_mem_awqos[3:0] = axi_register_slice_2_M_AXI_AWQOS;
  assign m_axi_host_mem_awregion[3:0] = axi_register_slice_2_M_AXI_AWREGION;
  assign m_axi_host_mem_awsize[2:0] = axi_register_slice_2_M_AXI_AWSIZE;
  assign m_axi_host_mem_awvalid = axi_register_slice_2_M_AXI_AWVALID;
  assign m_axi_host_mem_bready = axi_register_slice_2_M_AXI_BREADY;
  assign m_axi_host_mem_rready = axi_register_slice_2_M_AXI_RREADY;
  assign m_axi_host_mem_wdata[1023:0] = axi_register_slice_2_M_AXI_WDATA;
  assign m_axi_host_mem_wlast = axi_register_slice_2_M_AXI_WLAST;
  assign m_axi_host_mem_wstrb[127:0] = axi_register_slice_2_M_AXI_WSTRB;
  assign m_axi_host_mem_wvalid = axi_register_slice_2_M_AXI_WVALID;
  assign s_axi_control_1_ARADDR = s_axi_control_araddr[31:0];
  assign s_axi_control_1_ARPROT = s_axi_control_arprot[2:0];
  assign s_axi_control_1_ARVALID = s_axi_control_arvalid;
  assign s_axi_control_1_AWADDR = s_axi_control_awaddr[31:0];
  assign s_axi_control_1_AWPROT = s_axi_control_awprot[2:0];
  assign s_axi_control_1_AWVALID = s_axi_control_awvalid;
  assign s_axi_control_1_BREADY = s_axi_control_bready;
  assign s_axi_control_1_RREADY = s_axi_control_rready;
  assign s_axi_control_1_WDATA = s_axi_control_wdata[31:0];
  assign s_axi_control_1_WSTRB = s_axi_control_wstrb[3:0];
  assign s_axi_control_1_WVALID = s_axi_control_wvalid;
  assign s_axi_control_arready = s_axi_control_1_ARREADY;
  assign s_axi_control_awready = s_axi_control_1_AWREADY;
  assign s_axi_control_bresp[1:0] = s_axi_control_1_BRESP;
  assign s_axi_control_bvalid = s_axi_control_1_BVALID;
  assign s_axi_control_rdata[31:0] = s_axi_control_1_RDATA;
  assign s_axi_control_rresp[1:0] = s_axi_control_1_RRESP;
  assign s_axi_control_rvalid = s_axi_control_1_RVALID;
  assign s_axi_control_wready = s_axi_control_1_WREADY;
  DMA1_HBM1_bd_axi_dma_capi2hbm_0_0 axi_dma_capi2hbm_0
       (.axi_resetn(ap_rst_n_1),
        .m_axi_mm2s_aclk(ap_clk_1),
        .m_axi_mm2s_araddr(axi_dma_capi2hbm_0_M_AXI_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_capi2hbm_0_M_AXI_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_capi2hbm_0_M_AXI_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_capi2hbm_0_M_AXI_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_capi2hbm_0_M_AXI_ARPROT),
        .m_axi_mm2s_arready(axi_dma_capi2hbm_0_M_AXI_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_capi2hbm_0_M_AXI_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_capi2hbm_0_M_AXI_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_capi2hbm_0_M_AXI_RDATA),
        .m_axi_mm2s_rlast(axi_dma_capi2hbm_0_M_AXI_RLAST),
        .m_axi_mm2s_rready(axi_dma_capi2hbm_0_M_AXI_RREADY),
        .m_axi_mm2s_rresp(axi_dma_capi2hbm_0_M_AXI_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_capi2hbm_0_M_AXI_RVALID),
        .m_axi_s2mm_aclk(ap_clk_1),
        .m_axi_s2mm_awaddr(axi_dma_capi2hbm_0_M_AXI_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_capi2hbm_0_M_AXI_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_capi2hbm_0_M_AXI_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_capi2hbm_0_M_AXI_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_capi2hbm_0_M_AXI_AWPROT),
        .m_axi_s2mm_awready(axi_dma_capi2hbm_0_M_AXI_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_capi2hbm_0_M_AXI_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_capi2hbm_0_M_AXI_AWVALID),
        .m_axi_s2mm_bready(axi_dma_capi2hbm_0_M_AXI_BREADY),
        .m_axi_s2mm_bresp(axi_dma_capi2hbm_0_M_AXI_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_capi2hbm_0_M_AXI_BVALID),
        .m_axi_s2mm_wdata(axi_dma_capi2hbm_0_M_AXI_WDATA),
        .m_axi_s2mm_wlast(axi_dma_capi2hbm_0_M_AXI_WLAST),
        .m_axi_s2mm_wready(axi_dma_capi2hbm_0_M_AXI_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_capi2hbm_0_M_AXI_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_capi2hbm_0_M_AXI_WVALID),
        .m_axis_mm2s_tdata(axi_dma_capi2hbm_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_capi2hbm_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_capi2hbm_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_capi2hbm_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_capi2hbm_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(ap_clk_1),
        .s_axi_lite_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .s_axi_lite_arready(axi_register_slice_0_M_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .s_axi_lite_awready(axi_register_slice_0_M_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .s_axi_lite_bready(axi_register_slice_0_M_AXI_BREADY),
        .s_axi_lite_bresp(axi_register_slice_0_M_AXI_BRESP),
        .s_axi_lite_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .s_axi_lite_rdata(axi_register_slice_0_M_AXI_RDATA),
        .s_axi_lite_rready(axi_register_slice_0_M_AXI_RREADY),
        .s_axi_lite_rresp(axi_register_slice_0_M_AXI_RRESP),
        .s_axi_lite_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .s_axi_lite_wdata(axi_register_slice_0_M_AXI_WDATA),
        .s_axi_lite_wready(axi_register_slice_0_M_AXI_WREADY),
        .s_axi_lite_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_register_slice_2_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_register_slice_2_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_register_slice_2_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_register_slice_2_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_register_slice_2_M_AXIS_TVALID));
  DMA1_HBM1_bd_axi_dma_capi_0_0 axi_dma_capi_0
       (.axi_resetn(ap_rst_n_1),
        .m_axi_mm2s_aclk(ap_clk_1),
        .m_axi_mm2s_araddr(axi_dma_capi_0_M_AXI_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_capi_0_M_AXI_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_capi_0_M_AXI_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_capi_0_M_AXI_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_capi_0_M_AXI_ARPROT),
        .m_axi_mm2s_arready(axi_dma_capi_0_M_AXI_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_capi_0_M_AXI_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_capi_0_M_AXI_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_capi_0_M_AXI_RDATA),
        .m_axi_mm2s_rlast(axi_dma_capi_0_M_AXI_RLAST),
        .m_axi_mm2s_rready(axi_dma_capi_0_M_AXI_RREADY),
        .m_axi_mm2s_rresp(axi_dma_capi_0_M_AXI_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_capi_0_M_AXI_RVALID),
        .m_axi_s2mm_aclk(ap_clk_1),
        .m_axi_s2mm_awaddr(axi_dma_capi_0_M_AXI_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_capi_0_M_AXI_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_capi_0_M_AXI_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_capi_0_M_AXI_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_capi_0_M_AXI_AWPROT),
        .m_axi_s2mm_awready(axi_dma_capi_0_M_AXI_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_capi_0_M_AXI_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_capi_0_M_AXI_AWVALID),
        .m_axi_s2mm_bready(axi_dma_capi_0_M_AXI_BREADY),
        .m_axi_s2mm_bresp(axi_dma_capi_0_M_AXI_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_capi_0_M_AXI_BVALID),
        .m_axi_s2mm_wdata(axi_dma_capi_0_M_AXI_WDATA),
        .m_axi_s2mm_wlast(axi_dma_capi_0_M_AXI_WLAST),
        .m_axi_s2mm_wready(axi_dma_capi_0_M_AXI_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_capi_0_M_AXI_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_capi_0_M_AXI_WVALID),
        .m_axis_mm2s_tdata(axi_dma_capi_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_capi_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_capi_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_capi_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_capi_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(ap_clk_1),
        .s_axi_lite_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .s_axi_lite_arready(axi_register_slice_1_M_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .s_axi_lite_awready(axi_register_slice_1_M_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .s_axi_lite_bready(axi_register_slice_1_M_AXI_BREADY),
        .s_axi_lite_bresp(axi_register_slice_1_M_AXI_BRESP),
        .s_axi_lite_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .s_axi_lite_rdata(axi_register_slice_1_M_AXI_RDATA),
        .s_axi_lite_rready(axi_register_slice_1_M_AXI_RREADY),
        .s_axi_lite_rresp(axi_register_slice_1_M_AXI_RRESP),
        .s_axi_lite_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .s_axi_lite_wdata(axi_register_slice_1_M_AXI_WDATA),
        .s_axi_lite_wready(axi_register_slice_1_M_AXI_WREADY),
        .s_axi_lite_wvalid(axi_register_slice_1_M_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_register_slice_3_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_register_slice_3_M_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_register_slice_3_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_register_slice_3_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_register_slice_3_M_AXIS_TVALID));
  DMA1_HBM1_bd_axi_register_slice_0_2 axi_register_slice_0
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axi_araddr(axi_register_slice_0_M_AXI_ARADDR),
        .m_axi_arready(axi_register_slice_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_0_M_AXI_AWADDR),
        .m_axi_awready(axi_register_slice_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_0_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_0_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_0_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_0_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_0_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_0_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_0_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_0_M_AXI_WREADY),
        .m_axi_wvalid(axi_register_slice_0_M_AXI_WVALID),
        .s_axi_araddr(smartconnect_2_M01_AXI_ARADDR),
        .s_axi_arprot(smartconnect_2_M01_AXI_ARPROT),
        .s_axi_arready(smartconnect_2_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_2_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_2_M01_AXI_AWADDR),
        .s_axi_awprot(smartconnect_2_M01_AXI_AWPROT),
        .s_axi_awready(smartconnect_2_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_2_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_2_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_2_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_2_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_2_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_2_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_2_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_2_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_2_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_2_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_2_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_2_M01_AXI_WVALID));
  DMA1_HBM1_bd_axi_register_slice_0_3 axi_register_slice_1
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axi_araddr(axi_register_slice_1_M_AXI_ARADDR),
        .m_axi_arready(axi_register_slice_1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_register_slice_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_1_M_AXI_AWADDR),
        .m_axi_awready(axi_register_slice_1_M_AXI_AWREADY),
        .m_axi_awvalid(axi_register_slice_1_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_1_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_1_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_1_M_AXI_RDATA),
        .m_axi_rready(axi_register_slice_1_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_1_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_1_M_AXI_WDATA),
        .m_axi_wready(axi_register_slice_1_M_AXI_WREADY),
        .m_axi_wvalid(axi_register_slice_1_M_AXI_WVALID),
        .s_axi_araddr(smartconnect_2_M00_AXI_ARADDR),
        .s_axi_arprot(smartconnect_2_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_2_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .s_axi_awprot(smartconnect_2_M00_AXI_AWPROT),
        .s_axi_awready(smartconnect_2_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_2_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_2_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_2_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_2_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_2_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_2_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_2_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_2_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_2_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_2_M00_AXI_WVALID));
  DMA1_HBM1_bd_axi_register_slice_2_0 axi_register_slice_2
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axi_araddr(axi_register_slice_2_M_AXI_ARADDR),
        .m_axi_arburst(axi_register_slice_2_M_AXI_ARBURST),
        .m_axi_arcache(axi_register_slice_2_M_AXI_ARCACHE),
        .m_axi_arlen(axi_register_slice_2_M_AXI_ARLEN),
        .m_axi_arlock(axi_register_slice_2_M_AXI_ARLOCK),
        .m_axi_arprot(axi_register_slice_2_M_AXI_ARPROT),
        .m_axi_arqos(axi_register_slice_2_M_AXI_ARQOS),
        .m_axi_arready(axi_register_slice_2_M_AXI_ARREADY),
        .m_axi_arregion(axi_register_slice_2_M_AXI_ARREGION),
        .m_axi_arsize(axi_register_slice_2_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_register_slice_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_register_slice_2_M_AXI_AWADDR),
        .m_axi_awburst(axi_register_slice_2_M_AXI_AWBURST),
        .m_axi_awcache(axi_register_slice_2_M_AXI_AWCACHE),
        .m_axi_awlen(axi_register_slice_2_M_AXI_AWLEN),
        .m_axi_awlock(axi_register_slice_2_M_AXI_AWLOCK),
        .m_axi_awprot(axi_register_slice_2_M_AXI_AWPROT),
        .m_axi_awqos(axi_register_slice_2_M_AXI_AWQOS),
        .m_axi_awready(axi_register_slice_2_M_AXI_AWREADY),
        .m_axi_awregion(axi_register_slice_2_M_AXI_AWREGION),
        .m_axi_awsize(axi_register_slice_2_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_register_slice_2_M_AXI_AWVALID),
        .m_axi_bready(axi_register_slice_2_M_AXI_BREADY),
        .m_axi_bresp(axi_register_slice_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_register_slice_2_M_AXI_BVALID),
        .m_axi_rdata(axi_register_slice_2_M_AXI_RDATA),
        .m_axi_rlast(axi_register_slice_2_M_AXI_RLAST),
        .m_axi_rready(axi_register_slice_2_M_AXI_RREADY),
        .m_axi_rresp(axi_register_slice_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_register_slice_2_M_AXI_RVALID),
        .m_axi_wdata(axi_register_slice_2_M_AXI_WDATA),
        .m_axi_wlast(axi_register_slice_2_M_AXI_WLAST),
        .m_axi_wready(axi_register_slice_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_register_slice_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_register_slice_2_M_AXI_WVALID),
        .s_axi_araddr(axi_dma_capi_0_M_AXI_ARADDR),
        .s_axi_arburst(axi_dma_capi_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_dma_capi_0_M_AXI_ARCACHE),
        .s_axi_arlen(axi_dma_capi_0_M_AXI_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(axi_dma_capi_0_M_AXI_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(axi_dma_capi_0_M_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(axi_dma_capi_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_dma_capi_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_dma_capi_0_M_AXI_AWADDR),
        .s_axi_awburst(axi_dma_capi_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_dma_capi_0_M_AXI_AWCACHE),
        .s_axi_awlen(axi_dma_capi_0_M_AXI_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(axi_dma_capi_0_M_AXI_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(axi_dma_capi_0_M_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(axi_dma_capi_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_dma_capi_0_M_AXI_AWVALID),
        .s_axi_bready(axi_dma_capi_0_M_AXI_BREADY),
        .s_axi_bresp(axi_dma_capi_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_dma_capi_0_M_AXI_BVALID),
        .s_axi_rdata(axi_dma_capi_0_M_AXI_RDATA),
        .s_axi_rlast(axi_dma_capi_0_M_AXI_RLAST),
        .s_axi_rready(axi_dma_capi_0_M_AXI_RREADY),
        .s_axi_rresp(axi_dma_capi_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_dma_capi_0_M_AXI_RVALID),
        .s_axi_wdata(axi_dma_capi_0_M_AXI_WDATA),
        .s_axi_wlast(axi_dma_capi_0_M_AXI_WLAST),
        .s_axi_wready(axi_dma_capi_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_dma_capi_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_dma_capi_0_M_AXI_WVALID));
  DMA1_HBM1_bd_axis_register_slice_0_0 axis_register_slice_capi_0
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(axi_dma_capi_0_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_capi_0_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_capi_0_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_capi_0_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_capi_0_M_AXIS_MM2S_TVALID));
  DMA1_HBM1_bd_axis_register_slice_1_0 axis_register_slice_capi_1
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata(axis_register_slice_3_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_3_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_3_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_3_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_3_M_AXIS_TVALID),
        .s_axis_tdata(axis_register_slice_1_M_AXIS_TDATA),
        .s_axis_tkeep(axis_register_slice_1_M_AXIS_TKEEP),
        .s_axis_tlast(axis_register_slice_1_M_AXIS_TLAST),
        .s_axis_tready(axis_register_slice_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_register_slice_1_M_AXIS_TVALID));
  DMA1_HBM1_bd_axis_register_slice_0_2 axis_register_slice_hbm_0
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata(axis_register_slice_2_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_2_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_2_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_2_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_2_M_AXIS_TVALID),
        .s_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .s_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .s_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .s_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID));
  DMA1_HBM1_bd_axis_register_slice_0_1 axis_register_slice_hbm_1
       (.aclk(ap_clk_1),
        .aresetn(ap_rst_n_1),
        .m_axis_tdata(axis_register_slice_1_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_1_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_1_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_1_M_AXIS_TVALID),
        .s_axis_tdata(axi_dma_capi2hbm_0_M_AXIS_MM2S_TDATA),
        .s_axis_tkeep(axi_dma_capi2hbm_0_M_AXIS_MM2S_TKEEP),
        .s_axis_tlast(axi_dma_capi2hbm_0_M_AXIS_MM2S_TLAST),
        .s_axis_tready(axi_dma_capi2hbm_0_M_AXIS_MM2S_TREADY),
        .s_axis_tvalid(axi_dma_capi2hbm_0_M_AXIS_MM2S_TVALID));
  DMA1_HBM1_bd_smartconnect_2_0 smartconnect_2
       (.M00_AXI_araddr(smartconnect_2_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_2_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_2_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_2_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_2_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_2_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_2_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_2_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_2_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_2_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_2_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_2_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_2_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_2_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_2_M01_AXI_ARADDR),
        .M01_AXI_arprot(smartconnect_2_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_2_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_2_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_2_M01_AXI_AWADDR),
        .M01_AXI_awprot(smartconnect_2_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_2_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_2_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_2_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_2_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_2_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_2_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_2_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_2_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_2_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_2_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_2_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_2_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_2_M01_AXI_WVALID),
        .S00_AXI_araddr(s_axi_control_1_ARADDR),
        .S00_AXI_arprot(s_axi_control_1_ARPROT),
        .S00_AXI_arready(s_axi_control_1_ARREADY),
        .S00_AXI_arvalid(s_axi_control_1_ARVALID),
        .S00_AXI_awaddr(s_axi_control_1_AWADDR),
        .S00_AXI_awprot(s_axi_control_1_AWPROT),
        .S00_AXI_awready(s_axi_control_1_AWREADY),
        .S00_AXI_awvalid(s_axi_control_1_AWVALID),
        .S00_AXI_bready(s_axi_control_1_BREADY),
        .S00_AXI_bresp(s_axi_control_1_BRESP),
        .S00_AXI_bvalid(s_axi_control_1_BVALID),
        .S00_AXI_rdata(s_axi_control_1_RDATA),
        .S00_AXI_rready(s_axi_control_1_RREADY),
        .S00_AXI_rresp(s_axi_control_1_RRESP),
        .S00_AXI_rvalid(s_axi_control_1_RVALID),
        .S00_AXI_wdata(s_axi_control_1_WDATA),
        .S00_AXI_wready(s_axi_control_1_WREADY),
        .S00_AXI_wstrb(s_axi_control_1_WSTRB),
        .S00_AXI_wvalid(s_axi_control_1_WVALID),
        .aclk(ap_clk_1),
        .aresetn(ap_rst_n_1));
endmodule
