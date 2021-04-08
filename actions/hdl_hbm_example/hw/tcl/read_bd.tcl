set root_dir        $::env(SNAP_HARDWARE_ROOT)
set action_root     $::env(ACTION_ROOT)
set action_ip_dir   $action_root/ip

set constraintfile $action_root/hw/custom_location_constraint.xdc

# Set IP repository paths
set obj [get_filesets sources_1]
if { $obj != {} } {
   # If the blockdesign needs IP cores, they should be in an IP repo that should be referenced here
   set_property "ip_repo_paths" "[file normalize "$action_ip_dir"]" $obj

   # Rebuild user ip_repo's index before adding any source files
   update_ip_catalog -rebuild
}

# Read the user blockdesign
read_bd [ list \
  $action_root/hw/bd/DMA1_HBM1_bd/DMA1_HBM1_bd.bd
]

add_files -fileset constrs_1 -norecurse $constraintfile
  set_property used_in_synthesis false [get_files $constraintfile]
  set_property used_in_implementation true [get_files $constraintfile]
  set_property PROCESSING_ORDER LATE [get_files $constraintfile]

