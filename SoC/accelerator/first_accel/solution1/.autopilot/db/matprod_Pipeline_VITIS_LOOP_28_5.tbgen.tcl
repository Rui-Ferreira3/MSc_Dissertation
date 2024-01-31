set moduleName matprod_Pipeline_VITIS_LOOP_28_5
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
set C_modelName {matprod_Pipeline_VITIS_LOOP_28_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ N2 int 32 regular  }
	{ mul_ln26_1 int 10 regular  }
	{ m1_buffer float 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ trunc_ln2 int 10 regular  }
	{ trunc_ln3 int 10 regular  }
	{ m2_buffer float 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ regc float 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "N2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln26_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "m1_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "m2_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regc", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ N2 sc_in sc_lv 32 signal 0 } 
	{ mul_ln26_1 sc_in sc_lv 10 signal 1 } 
	{ m1_buffer_address0 sc_out sc_lv 10 signal 2 } 
	{ m1_buffer_ce0 sc_out sc_logic 1 signal 2 } 
	{ m1_buffer_q0 sc_in sc_lv 32 signal 2 } 
	{ trunc_ln2 sc_in sc_lv 10 signal 3 } 
	{ trunc_ln3 sc_in sc_lv 10 signal 4 } 
	{ m2_buffer_address0 sc_out sc_lv 10 signal 5 } 
	{ m2_buffer_ce0 sc_out sc_logic 1 signal 5 } 
	{ m2_buffer_q0 sc_in sc_lv 32 signal 5 } 
	{ regc_i sc_in sc_lv 32 signal 6 } 
	{ regc_o sc_out sc_lv 32 signal 6 } 
	{ regc_o_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "N2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N2", "role": "default" }} , 
 	{ "name": "mul_ln26_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mul_ln26_1", "role": "default" }} , 
 	{ "name": "m1_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "m1_buffer", "role": "address0" }} , 
 	{ "name": "m1_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m1_buffer", "role": "ce0" }} , 
 	{ "name": "m1_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m1_buffer", "role": "q0" }} , 
 	{ "name": "trunc_ln2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "trunc_ln2", "role": "default" }} , 
 	{ "name": "trunc_ln3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "trunc_ln3", "role": "default" }} , 
 	{ "name": "m2_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "m2_buffer", "role": "address0" }} , 
 	{ "name": "m2_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m2_buffer", "role": "ce0" }} , 
 	{ "name": "m2_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m2_buffer", "role": "q0" }} , 
 	{ "name": "regc_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regc", "role": "i" }} , 
 	{ "name": "regc_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regc", "role": "o" }} , 
 	{ "name": "regc_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "regc", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "matprod_Pipeline_VITIS_LOOP_28_5",
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
			{"Name" : "N2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln26_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "m1_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln3", "Type" : "None", "Direction" : "I"},
			{"Name" : "m2_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regc", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U10", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matprod_Pipeline_VITIS_LOOP_28_5 {
		N2 {Type I LastRead 0 FirstWrite -1}
		mul_ln26_1 {Type I LastRead 0 FirstWrite -1}
		m1_buffer {Type I LastRead 1 FirstWrite -1}
		trunc_ln2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln3 {Type I LastRead 0 FirstWrite -1}
		m2_buffer {Type I LastRead 1 FirstWrite -1}
		regc {Type IO LastRead 5 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	N2 { ap_none {  { N2 in_data 0 32 } } }
	mul_ln26_1 { ap_none {  { mul_ln26_1 in_data 0 10 } } }
	m1_buffer { ap_memory {  { m1_buffer_address0 mem_address 1 10 }  { m1_buffer_ce0 mem_ce 1 1 }  { m1_buffer_q0 mem_dout 0 32 } } }
	trunc_ln2 { ap_none {  { trunc_ln2 in_data 0 10 } } }
	trunc_ln3 { ap_none {  { trunc_ln3 in_data 0 10 } } }
	m2_buffer { ap_memory {  { m2_buffer_address0 mem_address 1 10 }  { m2_buffer_ce0 mem_ce 1 1 }  { m2_buffer_q0 mem_dout 0 32 } } }
	regc { ap_ovld {  { regc_i in_data 0 32 }  { regc_o out_data 1 32 }  { regc_o_ap_vld out_vld 1 1 } } }
}
