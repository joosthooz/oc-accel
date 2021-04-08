
################################################################
# This is a generated script based on design: DMA1_HBM1_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source DMA1_HBM1_bd_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu37p-fsvh2892-2-e-es1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name DMA1_HBM1_bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m00_axi [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m00_axi ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {256} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {0} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {0} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   ] $m00_axi

  set m_axi_host_mem [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi_host_mem ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.DATA_WIDTH {1024} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.PROTOCOL {AXI4} \
   ] $m_axi_host_mem

  set s_axi_control [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_control ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $s_axi_control


  # Create ports
  set ap_clk [ create_bd_port -dir I -type clk ap_clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {m00_axi:m01_axi:s_axi_control:m02_axi:m03_axi:m04_axi:m05_axi:m06_axi:m07_axi:m08_axi:m09_axi:m10_axi:m11_axi:m12_axi:m13_axi:m14_axi:m15_axi:m_axi_host_mem} \
   CONFIG.FREQ_HZ {250000000} \
 ] $ap_clk
  set ap_rst_n [ create_bd_port -dir I -type rst ap_rst_n ]

  # Create instance: axi_dma_capi2hbm_0, and set properties
  set axi_dma_capi2hbm_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_capi2hbm_0 ]
  set_property -dict [ list \
   CONFIG.c_addr_width {64} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_mm2s_data_width {256} \
   CONFIG.c_m_axi_s2mm_data_width {256} \
   CONFIG.c_m_axis_mm2s_tdata_width {256} \
   CONFIG.c_mm2s_burst_size {32} \
   CONFIG.c_s2mm_burst_size {32} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_single_interface {1} \
 ] $axi_dma_capi2hbm_0

  # Create instance: axi_dma_capi_0, and set properties
  set axi_dma_capi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_capi_0 ]
  set_property -dict [ list \
   CONFIG.c_addr_width {64} \
   CONFIG.c_include_s2mm {1} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_mm2s_data_width {1024} \
   CONFIG.c_m_axi_s2mm_data_width {1024} \
   CONFIG.c_m_axis_mm2s_tdata_width {256} \
   CONFIG.c_mm2s_burst_size {32} \
   CONFIG.c_s2mm_burst_size {32} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_single_interface {1} \
 ] $axi_dma_capi_0

  # Create instance: axi_register_slice_0, and set properties
  set axi_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_0 ]
  set_property -dict [ list \
   CONFIG.REG_AR {10} \
   CONFIG.REG_AW {10} \
   CONFIG.REG_B {10} \
   CONFIG.REG_R {10} \
   CONFIG.REG_W {10} \
 ] $axi_register_slice_0

  # Create instance: axi_register_slice_1, and set properties
  set axi_register_slice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_1 ]
  set_property -dict [ list \
   CONFIG.REG_AR {10} \
   CONFIG.REG_AW {10} \
   CONFIG.REG_B {10} \
   CONFIG.REG_R {10} \
   CONFIG.REG_W {10} \
 ] $axi_register_slice_1

  # Create instance: axi_register_slice_2, and set properties
  set axi_register_slice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 axi_register_slice_2 ]
  set_property -dict [ list \
   CONFIG.REG_AR {1} \
   CONFIG.REG_AW {1} \
   CONFIG.REG_B {1} \
 ] $axi_register_slice_2

  # Create instance: axis_register_slice_capi_0, and set properties
  set axis_register_slice_capi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 axis_register_slice_capi_0 ]
  set_property -dict [ list \
   CONFIG.NUM_SLR_CROSSINGS {1} \
   CONFIG.PIPELINES_MASTER {2} \
   CONFIG.PIPELINES_SLAVE {2} \
   CONFIG.REG_CONFIG {15} \
 ] $axis_register_slice_capi_0

  # Create instance: axis_register_slice_capi_1, and set properties
  set axis_register_slice_capi_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 axis_register_slice_capi_1 ]
  set_property -dict [ list \
   CONFIG.NUM_SLR_CROSSINGS {1} \
   CONFIG.PIPELINES_MASTER {2} \
   CONFIG.PIPELINES_SLAVE {2} \
   CONFIG.REG_CONFIG {15} \
 ] $axis_register_slice_capi_1

  # Create instance: axis_register_slice_hbm_0, and set properties
  set axis_register_slice_hbm_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 axis_register_slice_hbm_0 ]
  set_property -dict [ list \
   CONFIG.NUM_SLR_CROSSINGS {1} \
   CONFIG.PIPELINES_MASTER {2} \
   CONFIG.PIPELINES_SLAVE {2} \
   CONFIG.REG_CONFIG {15} \
 ] $axis_register_slice_hbm_0

  # Create instance: axis_register_slice_hbm_1, and set properties
  set axis_register_slice_hbm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 axis_register_slice_hbm_1 ]
  set_property -dict [ list \
   CONFIG.NUM_SLR_CROSSINGS {1} \
   CONFIG.PIPELINES_MASTER {2} \
   CONFIG.PIPELINES_SLAVE {2} \
   CONFIG.REG_CONFIG {15} \
 ] $axis_register_slice_hbm_1

  # Create instance: smartconnect_2, and set properties
  set smartconnect_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_2 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_2

  # Create interface connections
  connect_bd_intf_net -intf_net axi_dma_capi2hbm_0_M_AXI [get_bd_intf_ports m00_axi] [get_bd_intf_pins axi_dma_capi2hbm_0/M_AXI]
  connect_bd_intf_net -intf_net axi_dma_capi2hbm_0_M_AXIS_MM2S [get_bd_intf_pins axi_dma_capi2hbm_0/M_AXIS_MM2S] [get_bd_intf_pins axis_register_slice_hbm_1/S_AXIS]
  connect_bd_intf_net -intf_net axi_dma_capi_0_M_AXI [get_bd_intf_pins axi_dma_capi_0/M_AXI] [get_bd_intf_pins axi_register_slice_2/S_AXI]
  connect_bd_intf_net -intf_net axi_dma_capi_0_M_AXIS_MM2S [get_bd_intf_pins axi_dma_capi_0/M_AXIS_MM2S] [get_bd_intf_pins axis_register_slice_capi_0/S_AXIS]
  connect_bd_intf_net -intf_net axi_register_slice_0_M_AXI [get_bd_intf_pins axi_dma_capi2hbm_0/S_AXI_LITE] [get_bd_intf_pins axi_register_slice_0/M_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_1_M_AXI [get_bd_intf_pins axi_dma_capi_0/S_AXI_LITE] [get_bd_intf_pins axi_register_slice_1/M_AXI]
  connect_bd_intf_net -intf_net axi_register_slice_2_M_AXI [get_bd_intf_ports m_axi_host_mem] [get_bd_intf_pins axi_register_slice_2/M_AXI]
  connect_bd_intf_net -intf_net axis_register_slice_0_M_AXIS [get_bd_intf_pins axis_register_slice_capi_0/M_AXIS] [get_bd_intf_pins axis_register_slice_hbm_0/S_AXIS]
  connect_bd_intf_net -intf_net axis_register_slice_1_M_AXIS [get_bd_intf_pins axis_register_slice_capi_1/S_AXIS] [get_bd_intf_pins axis_register_slice_hbm_1/M_AXIS]
  connect_bd_intf_net -intf_net axis_register_slice_2_M_AXIS [get_bd_intf_pins axi_dma_capi2hbm_0/S_AXIS_S2MM] [get_bd_intf_pins axis_register_slice_hbm_0/M_AXIS]
  connect_bd_intf_net -intf_net axis_register_slice_3_M_AXIS [get_bd_intf_pins axi_dma_capi_0/S_AXIS_S2MM] [get_bd_intf_pins axis_register_slice_capi_1/M_AXIS]
  connect_bd_intf_net -intf_net s_axi_control_1 [get_bd_intf_ports s_axi_control] [get_bd_intf_pins smartconnect_2/S00_AXI]
  connect_bd_intf_net -intf_net smartconnect_2_M00_AXI [get_bd_intf_pins axi_register_slice_1/S_AXI] [get_bd_intf_pins smartconnect_2/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_2_M01_AXI [get_bd_intf_pins axi_register_slice_0/S_AXI] [get_bd_intf_pins smartconnect_2/M01_AXI]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_ports ap_clk] [get_bd_pins axi_dma_capi2hbm_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_capi2hbm_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_capi2hbm_0/s_axi_lite_aclk] [get_bd_pins axi_dma_capi_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_capi_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_capi_0/s_axi_lite_aclk] [get_bd_pins axi_register_slice_0/aclk] [get_bd_pins axi_register_slice_1/aclk] [get_bd_pins axi_register_slice_2/aclk] [get_bd_pins axis_register_slice_capi_0/aclk] [get_bd_pins axis_register_slice_capi_1/aclk] [get_bd_pins axis_register_slice_hbm_0/aclk] [get_bd_pins axis_register_slice_hbm_1/aclk] [get_bd_pins smartconnect_2/aclk]
  connect_bd_net -net ap_rst_n_1 [get_bd_ports ap_rst_n] [get_bd_pins axi_dma_capi2hbm_0/axi_resetn] [get_bd_pins axi_dma_capi_0/axi_resetn] [get_bd_pins axi_register_slice_0/aresetn] [get_bd_pins axi_register_slice_1/aresetn] [get_bd_pins axi_register_slice_2/aresetn] [get_bd_pins axis_register_slice_capi_0/aresetn] [get_bd_pins axis_register_slice_capi_1/aresetn] [get_bd_pins axis_register_slice_hbm_0/aresetn] [get_bd_pins axis_register_slice_hbm_1/aresetn] [get_bd_pins smartconnect_2/aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x64000000 [get_bd_addr_spaces axi_dma_capi2hbm_0/Data] [get_bd_addr_segs m00_axi/Reg] SEG_m00_axi_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x60000000 [get_bd_addr_spaces axi_dma_capi_0/Data] [get_bd_addr_segs m_axi_host_mem/Reg] SEG_m_axi_host_mem_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces s_axi_control] [get_bd_addr_segs axi_dma_capi2hbm_0/S_AXI_LITE/Reg] SEG_axi_dma_capi2hbm_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41E00000 [get_bd_addr_spaces s_axi_control] [get_bd_addr_segs axi_dma_capi_0/S_AXI_LITE/Reg] SEG_axi_dma_capi_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


