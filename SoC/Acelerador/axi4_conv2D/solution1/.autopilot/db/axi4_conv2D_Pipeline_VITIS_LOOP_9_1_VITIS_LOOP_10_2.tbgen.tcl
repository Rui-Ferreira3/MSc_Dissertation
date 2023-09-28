set moduleName axi4_conv2D_Pipeline_VITIS_LOOP_9_1_VITIS_LOOP_10_2
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
set C_modelName {axi4_conv2D_Pipeline_VITIS_LOOP_9_1_VITIS_LOOP_10_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_in int 8 regular {array 36 { 1 1 } 1 1 }  }
	{ sext_ln186 int 8 regular  }
	{ sext_ln186_1 int 8 regular  }
	{ sext_ln186_2 int 8 regular  }
	{ sext_ln186_3 int 8 regular  }
	{ sext_ln186_4 int 8 regular  }
	{ sext_ln186_5 int 8 regular  }
	{ sext_ln186_6 int 8 regular  }
	{ sext_ln186_7 int 8 regular  }
	{ sext_ln186_8 int 8 regular  }
	{ acc_V int 21 regular  }
	{ trunc_ln int 8 regular  }
	{ image_out int 8 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_in", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln186_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "acc_V", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "image_out", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ image_in_address0 sc_out sc_lv 6 signal 0 } 
	{ image_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ image_in_q0 sc_in sc_lv 8 signal 0 } 
	{ image_in_address1 sc_out sc_lv 6 signal 0 } 
	{ image_in_ce1 sc_out sc_logic 1 signal 0 } 
	{ image_in_q1 sc_in sc_lv 8 signal 0 } 
	{ sext_ln186 sc_in sc_lv 8 signal 1 } 
	{ sext_ln186_1 sc_in sc_lv 8 signal 2 } 
	{ sext_ln186_2 sc_in sc_lv 8 signal 3 } 
	{ sext_ln186_3 sc_in sc_lv 8 signal 4 } 
	{ sext_ln186_4 sc_in sc_lv 8 signal 5 } 
	{ sext_ln186_5 sc_in sc_lv 8 signal 6 } 
	{ sext_ln186_6 sc_in sc_lv 8 signal 7 } 
	{ sext_ln186_7 sc_in sc_lv 8 signal 8 } 
	{ sext_ln186_8 sc_in sc_lv 8 signal 9 } 
	{ acc_V sc_in sc_lv 21 signal 10 } 
	{ trunc_ln sc_in sc_lv 8 signal 11 } 
	{ image_out_address0 sc_out sc_lv 4 signal 12 } 
	{ image_out_ce0 sc_out sc_logic 1 signal 12 } 
	{ image_out_we0 sc_out sc_logic 1 signal 12 } 
	{ image_out_d0 sc_out sc_lv 8 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "image_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "image_in", "role": "address0" }} , 
 	{ "name": "image_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ce0" }} , 
 	{ "name": "image_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_in", "role": "q0" }} , 
 	{ "name": "image_in_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "image_in", "role": "address1" }} , 
 	{ "name": "image_in_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_in", "role": "ce1" }} , 
 	{ "name": "image_in_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_in", "role": "q1" }} , 
 	{ "name": "sext_ln186", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186", "role": "default" }} , 
 	{ "name": "sext_ln186_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_1", "role": "default" }} , 
 	{ "name": "sext_ln186_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_2", "role": "default" }} , 
 	{ "name": "sext_ln186_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_3", "role": "default" }} , 
 	{ "name": "sext_ln186_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_4", "role": "default" }} , 
 	{ "name": "sext_ln186_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_5", "role": "default" }} , 
 	{ "name": "sext_ln186_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_6", "role": "default" }} , 
 	{ "name": "sext_ln186_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_7", "role": "default" }} , 
 	{ "name": "sext_ln186_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sext_ln186_8", "role": "default" }} , 
 	{ "name": "acc_V", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "acc_V", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "image_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "image_out", "role": "address0" }} , 
 	{ "name": "image_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "ce0" }} , 
 	{ "name": "image_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_out", "role": "we0" }} , 
 	{ "name": "image_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_out", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "axi4_conv2D_Pipeline_VITIS_LOOP_9_1_VITIS_LOOP_10_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "85", "EstimateLatencyMax" : "85",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "image_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln186", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln186_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "acc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "image_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1_VITIS_LOOP_10_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8s_16_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axi4_conv2D_Pipeline_VITIS_LOOP_9_1_VITIS_LOOP_10_2 {
		image_in {Type I LastRead 5 FirstWrite -1}
		sext_ln186 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln186_8 {Type I LastRead 0 FirstWrite -1}
		acc_V {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		image_out {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "85", "Max" : "85"}
	, {"Name" : "Interval", "Min" : "85", "Max" : "85"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	image_in { ap_memory {  { image_in_address0 mem_address 1 6 }  { image_in_ce0 mem_ce 1 1 }  { image_in_q0 in_data 0 8 }  { image_in_address1 MemPortADDR2 1 6 }  { image_in_ce1 MemPortCE2 1 1 }  { image_in_q1 in_data 0 8 } } }
	sext_ln186 { ap_none {  { sext_ln186 in_data 0 8 } } }
	sext_ln186_1 { ap_none {  { sext_ln186_1 in_data 0 8 } } }
	sext_ln186_2 { ap_none {  { sext_ln186_2 in_data 0 8 } } }
	sext_ln186_3 { ap_none {  { sext_ln186_3 in_data 0 8 } } }
	sext_ln186_4 { ap_none {  { sext_ln186_4 in_data 0 8 } } }
	sext_ln186_5 { ap_none {  { sext_ln186_5 in_data 0 8 } } }
	sext_ln186_6 { ap_none {  { sext_ln186_6 in_data 0 8 } } }
	sext_ln186_7 { ap_none {  { sext_ln186_7 in_data 0 8 } } }
	sext_ln186_8 { ap_none {  { sext_ln186_8 in_data 0 8 } } }
	acc_V { ap_none {  { acc_V in_data 0 21 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 8 } } }
	image_out { ap_memory {  { image_out_address0 mem_address 1 4 }  { image_out_ce0 mem_ce 1 1 }  { image_out_we0 mem_we 1 1 }  { image_out_d0 mem_din 1 8 } } }
}
