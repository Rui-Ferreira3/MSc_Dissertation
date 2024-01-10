set moduleName matprod_Pipeline_VITIS_LOOP_26_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {matprod_Pipeline_VITIS_LOOP_26_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ N1 int 32 regular  }
	{ trunc_ln6_1 int 10 regular  }
	{ m1_buffer float 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ trunc_ln6 int 10 regular  }
	{ m2_buffer float 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ N2 int 32 regular  }
	{ m3_buffer float 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ N3 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "N1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln6_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "m1_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln6", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "m2_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "N2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m3_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "N3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ N1 sc_in sc_lv 32 signal 0 } 
	{ trunc_ln6_1 sc_in sc_lv 10 signal 1 } 
	{ m1_buffer_address0 sc_out sc_lv 10 signal 2 } 
	{ m1_buffer_ce0 sc_out sc_logic 1 signal 2 } 
	{ m1_buffer_q0 sc_in sc_lv 32 signal 2 } 
	{ trunc_ln6 sc_in sc_lv 10 signal 3 } 
	{ m2_buffer_address0 sc_out sc_lv 10 signal 4 } 
	{ m2_buffer_ce0 sc_out sc_logic 1 signal 4 } 
	{ m2_buffer_q0 sc_in sc_lv 32 signal 4 } 
	{ N2 sc_in sc_lv 32 signal 5 } 
	{ m3_buffer_address0 sc_out sc_lv 10 signal 6 } 
	{ m3_buffer_ce0 sc_out sc_logic 1 signal 6 } 
	{ m3_buffer_we0 sc_out sc_logic 1 signal 6 } 
	{ m3_buffer_d0 sc_out sc_lv 32 signal 6 } 
	{ N3 sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "N1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N1", "role": "default" }} , 
 	{ "name": "trunc_ln6_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "trunc_ln6_1", "role": "default" }} , 
 	{ "name": "m1_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "m1_buffer", "role": "address0" }} , 
 	{ "name": "m1_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m1_buffer", "role": "ce0" }} , 
 	{ "name": "m1_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m1_buffer", "role": "q0" }} , 
 	{ "name": "trunc_ln6", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "trunc_ln6", "role": "default" }} , 
 	{ "name": "m2_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "m2_buffer", "role": "address0" }} , 
 	{ "name": "m2_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m2_buffer", "role": "ce0" }} , 
 	{ "name": "m2_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m2_buffer", "role": "q0" }} , 
 	{ "name": "N2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N2", "role": "default" }} , 
 	{ "name": "m3_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "m3_buffer", "role": "address0" }} , 
 	{ "name": "m3_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m3_buffer", "role": "ce0" }} , 
 	{ "name": "m3_buffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m3_buffer", "role": "we0" }} , 
 	{ "name": "m3_buffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m3_buffer", "role": "d0" }} , 
 	{ "name": "N3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "matprod_Pipeline_VITIS_LOOP_26_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "N1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln6_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "m1_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln6", "Type" : "None", "Direction" : "I"},
			{"Name" : "m2_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "N2", "Type" : "None", "Direction" : "I"},
			{"Name" : "m3_buffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "N3", "Type" : "None", "Direction" : "I"},
			{"Name" : "regc", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_26_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U10", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10s_10s_10s_10_4_1_U11", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10s_10s_10ns_10_4_1_U12", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10s_10s_10ns_10_4_1_U13", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matprod_Pipeline_VITIS_LOOP_26_1 {
		N1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln6_1 {Type I LastRead 0 FirstWrite -1}
		m1_buffer {Type I LastRead 4 FirstWrite -1}
		trunc_ln6 {Type I LastRead 0 FirstWrite -1}
		m2_buffer {Type I LastRead 5 FirstWrite -1}
		N2 {Type I LastRead 0 FirstWrite -1}
		m3_buffer {Type O LastRead -1 FirstWrite 12}
		N3 {Type I LastRead 0 FirstWrite -1}
		regc {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	N1 { ap_none {  { N1 in_data 0 32 } } }
	trunc_ln6_1 { ap_none {  { trunc_ln6_1 in_data 0 10 } } }
	m1_buffer { ap_memory {  { m1_buffer_address0 mem_address 1 10 }  { m1_buffer_ce0 mem_ce 1 1 }  { m1_buffer_q0 mem_dout 0 32 } } }
	trunc_ln6 { ap_none {  { trunc_ln6 in_data 0 10 } } }
	m2_buffer { ap_memory {  { m2_buffer_address0 mem_address 1 10 }  { m2_buffer_ce0 mem_ce 1 1 }  { m2_buffer_q0 mem_dout 0 32 } } }
	N2 { ap_none {  { N2 in_data 0 32 } } }
	m3_buffer { ap_memory {  { m3_buffer_address0 mem_address 1 10 }  { m3_buffer_ce0 mem_ce 1 1 }  { m3_buffer_we0 mem_we 1 1 }  { m3_buffer_d0 mem_din 1 32 } } }
	N3 { ap_none {  { N3 in_data 0 32 } } }
}
