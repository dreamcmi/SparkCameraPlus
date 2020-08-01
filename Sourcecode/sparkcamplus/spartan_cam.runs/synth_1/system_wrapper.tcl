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
create_project -in_memory -part xc7s15ftgb196-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.cache/wt [current_project]
set_property parent.project_path C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_Dilate_V1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_move_en_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_Erode_V1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/IP/csi2_d_phy_rx_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/IP/if
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_ColorDetect_V1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_debounce_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_cam_ov7670_ov7725_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_PWM_gen_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/IP/rgb2dvi_v1_2
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_RGB24_16_V1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_IICctrl_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/IP/csi_to_axis_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_ram_read_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_RGB16_24_V1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_ov7725_regData_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_servo_ctrl_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_region_cut_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_vga_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/XUP_xadc_1.0
  c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/UDP_IP/xup_rgb2hsv_top_1.0
} [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.sdk/spartan_cam/Release/spartan_cam.elf
set_property SCOPED_TO_REF system [get_files -all C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.sdk/spartan_cam/Release/spartan_cam.elf]
set_property SCOPED_TO_CELLS microblaze_0 [get_files -all C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.sdk/spartan_cam/Release/spartan_cam.elf]
read_verilog -library xil_defaultlib C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/hdl/system_wrapper.v
add_files C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_csi2_d_phy_rx_0_1/hdl/csi2_d_phy_rx.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_csi_to_axis_0_1/hdl/csi_to_axis.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_mdm_1_0/system_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_mdm_1_0/system_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_0_200M_0/system_rst_clk_wiz_0_200M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_0_200M_0/system_rst_clk_wiz_0_200M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_0_200M_0/system_rst_clk_wiz_0_200M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_dlmb_bram_if_cntlr_0/system_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_ilmb_bram_if_cntlr_0/system_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_lmb_bram_0/system_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_axi_iic_0_0/system_axi_iic_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_csi2dvp_0_0/system_csi2dvp_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_clk_wiz_1_0/system_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_bayer2rgb_0_0/system_bayer2rgb_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb2dvi_0_1/src/rgb2dvi.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb2dvi_0_1/src/rgb2dvi_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb2dvi_0_1/src/rgb2dvi_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/constrs_1/new/system.xdc
set_property used_in_implementation false [get_files C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/constrs_1/new/system.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top system_wrapper -part xc7s15ftgb196-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
