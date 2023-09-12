# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.runs/synth_1/rvfpganexys.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

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
OPTRACE "synth_1" START { ROLLUP_AUTO }
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.cache/wt [current_project]
set_property parent.project_path C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.3 [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property include_dirs {
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpga/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpga/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include
} [current_fileset]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog {
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/gpio/gpio_defines.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/ptc/ptc_defines.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_params.vh
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/WishboneInterconnect/wb_intercon.vh
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/axi_intercon.vh
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_defines.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/global.h
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/pic_map_auto.h
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/build.h
}
set_property is_global_include true [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh]
set_property file_type "Verilog Header" [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/gpio/gpio_defines.v]
set_property file_type "Verilog Header" [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/ptc/ptc_defines.v]
set_property file_type "Verilog Header" [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_defines.v]
set_property file_type "Verilog Header" [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/global.h]
set_property file_type "Verilog Header" [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/pic_map_auto.h]
set_property file_type "Verilog Header" [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/build.h]
read_mem C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/BootROM/sw/boot_main.mem
read_verilog -library xil_defaultlib -sv {
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/cf_math_pkg.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/addr_decode.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_pkg.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_atop_filter.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_cdc.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_demux.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_err_slv.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_id_prepend.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/axi_intercon.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_intf.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_mux.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/src/axi_xbar.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lib/beh_lib.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/binary_to_gray.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/bscan_tap.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/cdc_fifo_gray.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/counter.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/dbg/dbg.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/swerv_types.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/dec/dec.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/dec/dec_decode_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/dec/dec_gpr_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/dec/dec_ib_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/dec/dec_tlu_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/dec/dec_trigger.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/delta_counter.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/dma/dma_ctrl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/exu/exu.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/exu/exu_alu_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/exu/exu_div_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/exu/exu_mul_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/deprecated/fifo_v2.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/fifo_v3.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/gray_to_binary.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/ifu/ifu.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/ifu/ifu_aln_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/ifu/ifu_bp_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/ifu/ifu_compress_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/ifu/ifu_ic_mem.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/ifu/ifu_ifc_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/ifu/ifu_mem_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_addrcheck.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_bus_buffer.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_bus_intf.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_clkdomain.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_dccm_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_dccm_mem.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_ecc.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_lsc_ctl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_stbuf.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lsu/lsu_trigger.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/lzc.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/mem.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/lib/mem_lib.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/pic/pic_ctrl.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/rr_arb_tree.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/spill_register.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/stream_register.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/swerv.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/swerv_wrapper_dmi.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/SystemController/swervolf_syscon.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/src/sync.sv
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/rvfpganexys.sv
}
read_verilog -library xil_defaultlib {
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiToWb/axi2wb.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/OtherSources/clk_gen_nexys.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/BootROM/dpram64.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/spi/fifo4.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/gpio/gpio_top.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/litedram_core.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/litedram_top.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/ptc/ptc_top.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/raminfr.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_alu.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_bufreg.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_csr.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_ctrl.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_decode.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_mem_if.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_rf_if.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_rf_ram.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_rf_ram_if.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_rf_top.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_shift.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_state.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/LiteDRAM/serv_1.0.2/rtl/serv_top.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/spi/simple_spi_top.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/swervolf_core.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_receiver.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_regs.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_rfifo.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_sync_flops.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_tfifo.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_top.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_transmitter.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Peripherals/uart/uart_wb.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/WishboneInterconnect/wb_intercon.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/BootROM/wb_mem_wrapper.v
  C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/WishboneInterconnect/wb_intercon_1.2.2-r1/wb_mux.v
}
OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/constrs_1/imports/src/rvfpganexys.xdc
set_property used_in_implementation false [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/constrs_1/imports/src/rvfpganexys.xdc]

read_xdc C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/constrs_1/imports/src/LiteDRAM/liteDRAM.xdc
set_property used_in_implementation false [get_files C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpgaCopy/RVfpgaNexys_System/RVfpgaNexys_System.srcs/constrs_1/imports/src/LiteDRAM/liteDRAM.xdc]

set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental C:/Users/Rui/Rui/MSc_Dissertation/SoC/RVfpga/RVfpgaNexys_System/RVfpgaNexys_System.srcs/utils_1/imports/synth_1/rvfpganexys.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top rvfpganexys -part xc7a100tcsg324-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef rvfpganexys.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file rvfpganexys_utilization_synth.rpt -pb rvfpganexys_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
