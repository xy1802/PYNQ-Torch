# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.cache/wt [current_project]
set_property parent.project_path C:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]
set_property ip_repo_paths {
  c:/Users/manoh/Desktop/ECTE451-458/sampleRNN_GRU
  c:/Users/manoh/Desktop/ECTE451-458/GRUCell_h/GRUCell_h
} [current_project]
set_property ip_output_repo c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/hdl/sampleRNN_GRU_wrapper.vhd
add_files C:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/sampleRNN_GRU.bd
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_processing_system7_0_0/sampleRNN_GRU_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_dma_0_0/sampleRNN_GRU_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_dma_0_0/sampleRNN_GRU_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_dma_0_0/sampleRNN_GRU_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_rst_ps7_0_100M_0/sampleRNN_GRU_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_rst_ps7_0_100M_0/sampleRNN_GRU_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_rst_ps7_0_100M_0/sampleRNN_GRU_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_sampleRNN_GRU_0_0/constraints/sampleRNN_GRU_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_10/bd_7ded_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_16/bd_7ded_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_20/bd_7ded_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_21/bd_7ded_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_22/bd_7ded_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_23/bd_7ded_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_24/bd_7ded_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_25/bd_7ded_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_17/bd_7ded_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_18/bd_7ded_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_19/bd_7ded_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_11/bd_7ded_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_12/bd_7ded_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_2/bd_7ded_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_3/bd_7ded_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_4/bd_7ded_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_5/bd_7ded_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_6/bd_7ded_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_1/bd_7ded_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/bd_0/ip/ip_1/bd_7ded_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_axi_smc_1/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/ip/sampleRNN_GRU_auto_pc_0/sampleRNN_GRU_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/ECTE433_LabFiles/sampleRNN_GRU/sampleRNN_GRU.srcs/sources_1/bd/sampleRNN_GRU/sampleRNN_GRU_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top sampleRNN_GRU_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef sampleRNN_GRU_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file sampleRNN_GRU_wrapper_utilization_synth.rpt -pb sampleRNN_GRU_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
