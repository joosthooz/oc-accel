#The ocxl-related logic is more timing-critical (it runs at a high clock rate of ~400MHz).
#It needs to be placed carefully, keeping the components tightly placed to reduce distances,
#and should not be interspersed with other logic

# Custom placement for ocxl-related logic
#create_pblock pblock_1
#resize_pblock pblock_1 -add CLOCKREGION_X0Y4:CLOCKREGION_X1Y5
#add_cells_to_pblock pblock_1 [get_cells [list bsp?/dlx_phy bsp?/DLx_phy_vio_0_inst bsp?/vio_reset_n_inst_tlx ]]
#remove_cells_from_pblock pblock_1 [get_cells bsp?/dlx_phy/BUFGCE_DIV_inst]
#create_pblock pblock_2
#resize_pblock pblock_2 -add CLOCKREGION_X1Y4:CLOCKREGION_X2Y6
#add_cells_to_pblock pblock_2 [get_cells [list bsp?/tlx ]]

#create_pblock pblock_3
#resize_pblock pblock_3 -add CLOCKREGION_X0Y4:CLOCKREGION_X3Y7
#resize_pblock pblock_3 -remove CLOCKREGION_X0Y4:CLOCKREGION_X0Y5
#add_cells_to_pblock pblock_3 [get_cells [list cfg? oc_func?/cfg_f1 oc_func?/fw_afu/desc oc_func?/fw_afu/mvio_soft_reset oc_func?/fw_afu/snap_core_i]]

#create_pblock pblock_4
#resize_pblock pblock_4 -add CLOCKREGION_X0Y6:CLOCKREGION_X3Y7
#add_cells_to_pblock pblock_4 [get_cells [list bsp?/FLASH bsp?/vpd cfg? oc_func?/cfg_f?]]


# Custom placement for user logic. 
create_pblock pblock_SLR0R
#resize_pblock pblock_SLR0 -add SLR0:SLR0
resize_pblock pblock_SLR0R -add CLOCKREGION_X4Y0:CLOCKREGION_X7Y3
add_cells_to_pblock pblock_SLR0R [get_cells oc_func?/fw_afu/action_w/action_0/blockdesign_i] -clear_locs
add_cells_to_pblock pblock_SLR0R [get_cells oc_func?/fw_afu/action_w/action_0/blockdesign_i/axis_register_slice_hbm_?] -clear_locs

create_pblock pblock_SLR1
resize_pblock pblock_SLR1 -add SLR1:SLR1
add_cells_to_pblock pblock_SLR1 [get_cells oc_func?/fw_afu/action_w/action_0/blockdesign_i/axi_register_slice_2] -clear_locs

create_pblock pblock_SLR1R
resize_pblock pblock_SLR1R -add CLOCKREGION_X4Y4:CLOCKREGION_X7Y7

add_cells_to_pblock pblock_SLR1R [get_cells oc_func?/fw_afu/action_w/action_0/blockdesign_i/axi_dma_capi_?] -clear_locs
add_cells_to_pblock pblock_SLR1R [get_cells oc_func?/fw_afu/action_w/action_0/blockdesign_i/axis_register_slice_capi_?] -clear_locs


#Connect dbg_hub (automatically generated inside the HBM IP by Vivado) to allow building with ILA disabled
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets oc_func0/fw_afu/hbm_top_wrapper_i/tx_clk_201MHz]
connect_debug_port dbg_hub/clk [get_nets oc0_clock_afu]

#connect dbg_hub clock to gnd
#connect_net -net myZeroNet -objects [get_pins myGNDCell/G]
#connect_debug_port dbg_hub/clk [get_nets myZeroNet]
