###############################################################################################################
# Core-Level Timing Constraints for axi_register_slice Component "DMA1_HBM1_bd_axis_register_slice_0_1"
###############################################################################################################
#
# This component is configured in a multi-SLR or auto-pipelining mode.
# Some storage elements enter reset asynchronously to withstand long inter-SLR delays.
# The async clear (CLR) inputs of these flops are excluded from timing analysis by the following constraint:
set_false_path -through [get_pins -filter {REF_PIN_NAME=~CLR} -of_objects  [get_cells -hierarchical *asyncclear*]]
