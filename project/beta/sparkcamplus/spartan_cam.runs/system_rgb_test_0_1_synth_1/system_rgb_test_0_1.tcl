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
set_msg_config -id {HDL-1065} -limit 10000
set_param project.vivado.isBlockSynthRun true
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
read_verilog -library xil_defaultlib {
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/hdmi_num_test.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num0.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num1.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/new/num10.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num2.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num3.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num4.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num5.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num6.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num7.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num8.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/imports/new/num9.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/new/rgb2gray.v
  C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/new/rgb_test.v
}
read_ip -quiet C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.runs/system_rgb_test_0_1_synth_1 -new_name system_rgb_test_0_1 -ip [get_ips system_rgb_test_0_1]]

if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

synth_design -top system_rgb_test_0_1 -part xc7s15ftgb196-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix system_rgb_test_0_1_ system_rgb_test_0_1.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rgb_test_0_1_stub.v
 lappend ipCachedFiles system_rgb_test_0_1_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rgb_test_0_1_stub.vhdl
 lappend ipCachedFiles system_rgb_test_0_1_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rgb_test_0_1_sim_netlist.v
 lappend ipCachedFiles system_rgb_test_0_1_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rgb_test_0_1_sim_netlist.vhdl
 lappend ipCachedFiles system_rgb_test_0_1_sim_netlist.vhdl
set TIME_taken [expr [clock seconds] - $TIME_start]

 config_ip_cache -add -dcp system_rgb_test_0_1.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips system_rgb_test_0_1]
}

rename_ref -prefix_all system_rgb_test_0_1_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_rgb_test_0_1.dcp
create_report "system_rgb_test_0_1_synth_1_synth_report_utilization_0" "report_utilization -file system_rgb_test_0_1_utilization_synth.rpt -pb system_rgb_test_0_1_utilization_synth.pb"

if { [catch {
  file copy -force C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.runs/system_rgb_test_0_1_synth_1/system_rgb_test_0_1.dcp C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.runs/system_rgb_test_0_1_synth_1/system_rgb_test_0_1.dcp C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.runs/system_rgb_test_0_1_synth_1/system_rgb_test_0_1_stub.v C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.runs/system_rgb_test_0_1_synth_1/system_rgb_test_0_1_stub.vhdl C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.runs/system_rgb_test_0_1_synth_1/system_rgb_test_0_1_sim_netlist.v C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.runs/system_rgb_test_0_1_synth_1/system_rgb_test_0_1_sim_netlist.vhdl C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.ip_user_files/ip/system_rgb_test_0_1]} {
  catch { 
    file copy -force C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_stub.v C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.ip_user_files/ip/system_rgb_test_0_1
  }
}

if {[file isdir C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.ip_user_files/ip/system_rgb_test_0_1]} {
  catch { 
    file copy -force C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.srcs/sources_1/bd/system/ip/system_rgb_test_0_1/system_rgb_test_0_1_stub.vhdl C:/Users/Administrator/Desktop/FPGA/SparkCameraPlus/project/beta/sparkcamplus/spartan_cam.ip_user_files/ip/system_rgb_test_0_1
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
