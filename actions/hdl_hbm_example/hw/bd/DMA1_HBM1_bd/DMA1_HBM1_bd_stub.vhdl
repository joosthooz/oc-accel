-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Mar 24 12:06:14 2021
-- Host        : tud211698.ws.tudelft.net running 64-bit openSUSE Leap 15.1
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jjhoozemans/workspaces/openCAPI/HBM/Block_designs/DMA1_HBM1/vivado_project/project_1/project_1.srcs/sources_1/bd/DMA1_HBM1_bd/DMA1_HBM1_bd_stub.vhdl
-- Design      : DMA1_HBM1_bd
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu37p-fsvh2892-2-e-es1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMA1_HBM1_bd is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arready : in STD_LOGIC;
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awready : in STD_LOGIC;
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m_axi_host_mem_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_host_mem_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_host_mem_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_host_mem_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_host_mem_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_host_mem_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_host_mem_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_host_mem_arready : in STD_LOGIC;
    m_axi_host_mem_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_host_mem_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_host_mem_arvalid : out STD_LOGIC;
    m_axi_host_mem_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_host_mem_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_host_mem_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_host_mem_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_host_mem_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_host_mem_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_host_mem_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_host_mem_awready : in STD_LOGIC;
    m_axi_host_mem_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_host_mem_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_host_mem_awvalid : out STD_LOGIC;
    m_axi_host_mem_bready : out STD_LOGIC;
    m_axi_host_mem_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_host_mem_bvalid : in STD_LOGIC;
    m_axi_host_mem_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_host_mem_rlast : in STD_LOGIC;
    m_axi_host_mem_rready : out STD_LOGIC;
    m_axi_host_mem_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_host_mem_rvalid : in STD_LOGIC;
    m_axi_host_mem_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_host_mem_wlast : out STD_LOGIC;
    m_axi_host_mem_wready : in STD_LOGIC;
    m_axi_host_mem_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_host_mem_wvalid : out STD_LOGIC;
    s_axi_control_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_control_arready : out STD_LOGIC;
    s_axi_control_arvalid : in STD_LOGIC;
    s_axi_control_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_control_awready : out STD_LOGIC;
    s_axi_control_awvalid : in STD_LOGIC;
    s_axi_control_bready : in STD_LOGIC;
    s_axi_control_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_bvalid : out STD_LOGIC;
    s_axi_control_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_rready : in STD_LOGIC;
    s_axi_control_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_rvalid : out STD_LOGIC;
    s_axi_control_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_wready : out STD_LOGIC;
    s_axi_control_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_wvalid : in STD_LOGIC
  );

end DMA1_HBM1_bd;

architecture stub of DMA1_HBM1_bd is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,m00_axi_araddr[63:0],m00_axi_arburst[1:0],m00_axi_arcache[3:0],m00_axi_arlen[7:0],m00_axi_arprot[2:0],m00_axi_arready,m00_axi_arsize[2:0],m00_axi_arvalid,m00_axi_awaddr[63:0],m00_axi_awburst[1:0],m00_axi_awcache[3:0],m00_axi_awlen[7:0],m00_axi_awprot[2:0],m00_axi_awready,m00_axi_awsize[2:0],m00_axi_awvalid,m00_axi_bready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_rdata[255:0],m00_axi_rlast,m00_axi_rready,m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_wdata[255:0],m00_axi_wlast,m00_axi_wready,m00_axi_wstrb[31:0],m00_axi_wvalid,m_axi_host_mem_araddr[63:0],m_axi_host_mem_arburst[1:0],m_axi_host_mem_arcache[3:0],m_axi_host_mem_arlen[7:0],m_axi_host_mem_arlock[0:0],m_axi_host_mem_arprot[2:0],m_axi_host_mem_arqos[3:0],m_axi_host_mem_arready,m_axi_host_mem_arregion[3:0],m_axi_host_mem_arsize[2:0],m_axi_host_mem_arvalid,m_axi_host_mem_awaddr[63:0],m_axi_host_mem_awburst[1:0],m_axi_host_mem_awcache[3:0],m_axi_host_mem_awlen[7:0],m_axi_host_mem_awlock[0:0],m_axi_host_mem_awprot[2:0],m_axi_host_mem_awqos[3:0],m_axi_host_mem_awready,m_axi_host_mem_awregion[3:0],m_axi_host_mem_awsize[2:0],m_axi_host_mem_awvalid,m_axi_host_mem_bready,m_axi_host_mem_bresp[1:0],m_axi_host_mem_bvalid,m_axi_host_mem_rdata[1023:0],m_axi_host_mem_rlast,m_axi_host_mem_rready,m_axi_host_mem_rresp[1:0],m_axi_host_mem_rvalid,m_axi_host_mem_wdata[1023:0],m_axi_host_mem_wlast,m_axi_host_mem_wready,m_axi_host_mem_wstrb[127:0],m_axi_host_mem_wvalid,s_axi_control_araddr[31:0],s_axi_control_arprot[2:0],s_axi_control_arready,s_axi_control_arvalid,s_axi_control_awaddr[31:0],s_axi_control_awprot[2:0],s_axi_control_awready,s_axi_control_awvalid,s_axi_control_bready,s_axi_control_bresp[1:0],s_axi_control_bvalid,s_axi_control_rdata[31:0],s_axi_control_rready,s_axi_control_rresp[1:0],s_axi_control_rvalid,s_axi_control_wdata[31:0],s_axi_control_wready,s_axi_control_wstrb[3:0],s_axi_control_wvalid";
begin
end;
