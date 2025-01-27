//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Mar 24 11:43:34 2021
//Host        : tud211698.ws.tudelft.net running 64-bit openSUSE Leap 15.1
//Command     : generate_target DMA1_HBM1_bd_wrapper.bd
//Design      : DMA1_HBM1_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DMA1_HBM1_bd_wrapper
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
  input ap_clk;
  input ap_rst_n;
  output [63:0]m00_axi_araddr;
  output [1:0]m00_axi_arburst;
  output [3:0]m00_axi_arcache;
  output [7:0]m00_axi_arlen;
  output [2:0]m00_axi_arprot;
  input m00_axi_arready;
  output [2:0]m00_axi_arsize;
  output m00_axi_arvalid;
  output [63:0]m00_axi_awaddr;
  output [1:0]m00_axi_awburst;
  output [3:0]m00_axi_awcache;
  output [7:0]m00_axi_awlen;
  output [2:0]m00_axi_awprot;
  input m00_axi_awready;
  output [2:0]m00_axi_awsize;
  output m00_axi_awvalid;
  output m00_axi_bready;
  input [1:0]m00_axi_bresp;
  input m00_axi_bvalid;
  input [255:0]m00_axi_rdata;
  input m00_axi_rlast;
  output m00_axi_rready;
  input [1:0]m00_axi_rresp;
  input m00_axi_rvalid;
  output [255:0]m00_axi_wdata;
  output m00_axi_wlast;
  input m00_axi_wready;
  output [31:0]m00_axi_wstrb;
  output m00_axi_wvalid;
  output [63:0]m_axi_host_mem_araddr;
  output [1:0]m_axi_host_mem_arburst;
  output [3:0]m_axi_host_mem_arcache;
  output [7:0]m_axi_host_mem_arlen;
  output [0:0]m_axi_host_mem_arlock;
  output [2:0]m_axi_host_mem_arprot;
  output [3:0]m_axi_host_mem_arqos;
  input m_axi_host_mem_arready;
  output [3:0]m_axi_host_mem_arregion;
  output [2:0]m_axi_host_mem_arsize;
  output m_axi_host_mem_arvalid;
  output [63:0]m_axi_host_mem_awaddr;
  output [1:0]m_axi_host_mem_awburst;
  output [3:0]m_axi_host_mem_awcache;
  output [7:0]m_axi_host_mem_awlen;
  output [0:0]m_axi_host_mem_awlock;
  output [2:0]m_axi_host_mem_awprot;
  output [3:0]m_axi_host_mem_awqos;
  input m_axi_host_mem_awready;
  output [3:0]m_axi_host_mem_awregion;
  output [2:0]m_axi_host_mem_awsize;
  output m_axi_host_mem_awvalid;
  output m_axi_host_mem_bready;
  input [1:0]m_axi_host_mem_bresp;
  input m_axi_host_mem_bvalid;
  input [1023:0]m_axi_host_mem_rdata;
  input m_axi_host_mem_rlast;
  output m_axi_host_mem_rready;
  input [1:0]m_axi_host_mem_rresp;
  input m_axi_host_mem_rvalid;
  output [1023:0]m_axi_host_mem_wdata;
  output m_axi_host_mem_wlast;
  input m_axi_host_mem_wready;
  output [127:0]m_axi_host_mem_wstrb;
  output m_axi_host_mem_wvalid;
  input [31:0]s_axi_control_araddr;
  input [2:0]s_axi_control_arprot;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [31:0]s_axi_control_awaddr;
  input [2:0]s_axi_control_awprot;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]m00_axi_araddr;
  wire [1:0]m00_axi_arburst;
  wire [3:0]m00_axi_arcache;
  wire [7:0]m00_axi_arlen;
  wire [2:0]m00_axi_arprot;
  wire m00_axi_arready;
  wire [2:0]m00_axi_arsize;
  wire m00_axi_arvalid;
  wire [63:0]m00_axi_awaddr;
  wire [1:0]m00_axi_awburst;
  wire [3:0]m00_axi_awcache;
  wire [7:0]m00_axi_awlen;
  wire [2:0]m00_axi_awprot;
  wire m00_axi_awready;
  wire [2:0]m00_axi_awsize;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire [255:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire [255:0]m00_axi_wdata;
  wire m00_axi_wlast;
  wire m00_axi_wready;
  wire [31:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire [63:0]m_axi_host_mem_araddr;
  wire [1:0]m_axi_host_mem_arburst;
  wire [3:0]m_axi_host_mem_arcache;
  wire [7:0]m_axi_host_mem_arlen;
  wire [0:0]m_axi_host_mem_arlock;
  wire [2:0]m_axi_host_mem_arprot;
  wire [3:0]m_axi_host_mem_arqos;
  wire m_axi_host_mem_arready;
  wire [3:0]m_axi_host_mem_arregion;
  wire [2:0]m_axi_host_mem_arsize;
  wire m_axi_host_mem_arvalid;
  wire [63:0]m_axi_host_mem_awaddr;
  wire [1:0]m_axi_host_mem_awburst;
  wire [3:0]m_axi_host_mem_awcache;
  wire [7:0]m_axi_host_mem_awlen;
  wire [0:0]m_axi_host_mem_awlock;
  wire [2:0]m_axi_host_mem_awprot;
  wire [3:0]m_axi_host_mem_awqos;
  wire m_axi_host_mem_awready;
  wire [3:0]m_axi_host_mem_awregion;
  wire [2:0]m_axi_host_mem_awsize;
  wire m_axi_host_mem_awvalid;
  wire m_axi_host_mem_bready;
  wire [1:0]m_axi_host_mem_bresp;
  wire m_axi_host_mem_bvalid;
  wire [1023:0]m_axi_host_mem_rdata;
  wire m_axi_host_mem_rlast;
  wire m_axi_host_mem_rready;
  wire [1:0]m_axi_host_mem_rresp;
  wire m_axi_host_mem_rvalid;
  wire [1023:0]m_axi_host_mem_wdata;
  wire m_axi_host_mem_wlast;
  wire m_axi_host_mem_wready;
  wire [127:0]m_axi_host_mem_wstrb;
  wire m_axi_host_mem_wvalid;
  wire [31:0]s_axi_control_araddr;
  wire [2:0]s_axi_control_arprot;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [31:0]s_axi_control_awaddr;
  wire [2:0]s_axi_control_awprot;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;

  DMA1_HBM1_bd DMA1_HBM1_bd_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_arburst(m00_axi_arburst),
        .m00_axi_arcache(m00_axi_arcache),
        .m00_axi_arlen(m00_axi_arlen),
        .m00_axi_arprot(m00_axi_arprot),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arsize(m00_axi_arsize),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awburst(m00_axi_awburst),
        .m00_axi_awcache(m00_axi_awcache),
        .m00_axi_awlen(m00_axi_awlen),
        .m00_axi_awprot(m00_axi_awprot),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awsize(m00_axi_awsize),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wlast(m00_axi_wlast),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid),
        .m_axi_host_mem_araddr(m_axi_host_mem_araddr),
        .m_axi_host_mem_arburst(m_axi_host_mem_arburst),
        .m_axi_host_mem_arcache(m_axi_host_mem_arcache),
        .m_axi_host_mem_arlen(m_axi_host_mem_arlen),
        .m_axi_host_mem_arlock(m_axi_host_mem_arlock),
        .m_axi_host_mem_arprot(m_axi_host_mem_arprot),
        .m_axi_host_mem_arqos(m_axi_host_mem_arqos),
        .m_axi_host_mem_arready(m_axi_host_mem_arready),
        .m_axi_host_mem_arregion(m_axi_host_mem_arregion),
        .m_axi_host_mem_arsize(m_axi_host_mem_arsize),
        .m_axi_host_mem_arvalid(m_axi_host_mem_arvalid),
        .m_axi_host_mem_awaddr(m_axi_host_mem_awaddr),
        .m_axi_host_mem_awburst(m_axi_host_mem_awburst),
        .m_axi_host_mem_awcache(m_axi_host_mem_awcache),
        .m_axi_host_mem_awlen(m_axi_host_mem_awlen),
        .m_axi_host_mem_awlock(m_axi_host_mem_awlock),
        .m_axi_host_mem_awprot(m_axi_host_mem_awprot),
        .m_axi_host_mem_awqos(m_axi_host_mem_awqos),
        .m_axi_host_mem_awready(m_axi_host_mem_awready),
        .m_axi_host_mem_awregion(m_axi_host_mem_awregion),
        .m_axi_host_mem_awsize(m_axi_host_mem_awsize),
        .m_axi_host_mem_awvalid(m_axi_host_mem_awvalid),
        .m_axi_host_mem_bready(m_axi_host_mem_bready),
        .m_axi_host_mem_bresp(m_axi_host_mem_bresp),
        .m_axi_host_mem_bvalid(m_axi_host_mem_bvalid),
        .m_axi_host_mem_rdata(m_axi_host_mem_rdata),
        .m_axi_host_mem_rlast(m_axi_host_mem_rlast),
        .m_axi_host_mem_rready(m_axi_host_mem_rready),
        .m_axi_host_mem_rresp(m_axi_host_mem_rresp),
        .m_axi_host_mem_rvalid(m_axi_host_mem_rvalid),
        .m_axi_host_mem_wdata(m_axi_host_mem_wdata),
        .m_axi_host_mem_wlast(m_axi_host_mem_wlast),
        .m_axi_host_mem_wready(m_axi_host_mem_wready),
        .m_axi_host_mem_wstrb(m_axi_host_mem_wstrb),
        .m_axi_host_mem_wvalid(m_axi_host_mem_wvalid),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arprot(s_axi_control_arprot),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awprot(s_axi_control_awprot),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid));
endmodule
