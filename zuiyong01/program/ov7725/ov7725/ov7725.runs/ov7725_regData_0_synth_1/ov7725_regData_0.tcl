# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.cache/wt [current_project]
set_property parent.project_path C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/WZJ/Desktop/df/Digital-Design-Lab-master/Chapter_12/Digital_camera/files/HDL_source/IP_Catalog
  c:/Users/WZJ/Desktop/df/program/HDL_source
  c:/Users/WZJ/Desktop/df/program
} [current_project]
read_ip -quiet C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0.xci
set_property is_locked true [get_files C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top ov7725_regData_0 -part xc7a35tcpg236-1 -mode out_of_context

rename_ref -prefix_all ov7725_regData_0_

write_checkpoint -force -noxdef ov7725_regData_0.dcp

catch { report_utilization -file ov7725_regData_0_utilization_synth.rpt -pb ov7725_regData_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.runs/ov7725_regData_0_synth_1/ov7725_regData_0.dcp C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.ip_user_files/ip/ov7725_regData_0]} {
  catch { 
    file copy -force C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_stub.v C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.ip_user_files/ip/ov7725_regData_0
  }
}

if {[file isdir C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.ip_user_files/ip/ov7725_regData_0]} {
  catch { 
    file copy -force C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_stub.vhdl C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.ip_user_files/ip/ov7725_regData_0
  }
}