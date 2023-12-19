// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module matprod_matprod_Pipeline_VITIS_LOOP_26_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        N1,
        trunc_ln6_1,
        m1_buffer_address0,
        m1_buffer_ce0,
        m1_buffer_q0,
        trunc_ln6,
        m2_buffer_address0,
        m2_buffer_ce0,
        m2_buffer_q0,
        N2,
        m3_buffer_address0,
        m3_buffer_ce0,
        m3_buffer_we0,
        m3_buffer_d0,
        N3
);

parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] N1;
input  [9:0] trunc_ln6_1;
output  [9:0] m1_buffer_address0;
output   m1_buffer_ce0;
input  [63:0] m1_buffer_q0;
input  [9:0] trunc_ln6;
output  [9:0] m2_buffer_address0;
output   m2_buffer_ce0;
input  [63:0] m2_buffer_q0;
input  [31:0] N2;
output  [9:0] m3_buffer_address0;
output   m3_buffer_ce0;
output   m3_buffer_we0;
output  [63:0] m3_buffer_d0;
input  [31:0] N3;

reg ap_idle;
reg m1_buffer_ce0;
reg m2_buffer_ce0;
reg m3_buffer_ce0;
reg m3_buffer_we0;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_state7_pp0_stage6_iter0;
wire    ap_block_state14_pp0_stage6_iter1;
wire    ap_block_state21_pp0_stage6_iter2;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln26_reg_333;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] regc;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state8_pp0_stage0_iter1;
wire    ap_block_state15_pp0_stage0_iter2;
wire    ap_block_state22_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] i_2_reg_327;
wire   [0:0] icmp_ln26_fu_145_p2;
reg   [0:0] icmp_ln26_reg_333_pp0_iter1_reg;
wire  signed [9:0] empty_21_fu_151_p1;
reg  signed [9:0] empty_21_reg_337;
wire  signed [9:0] empty_20_fu_158_p1;
reg  signed [9:0] empty_20_reg_343;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state9_pp0_stage1_iter1;
wire    ap_block_state16_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln28_fu_162_p2;
reg   [0:0] icmp_ln28_reg_349;
reg   [0:0] icmp_ln28_reg_349_pp0_iter1_reg;
reg   [0:0] icmp_ln28_reg_349_pp0_iter2_reg;
wire   [0:0] icmp_ln31_fu_174_p2;
reg   [0:0] icmp_ln31_reg_354;
reg   [0:0] icmp_ln31_reg_354_pp0_iter1_reg;
reg   [0:0] icmp_ln31_reg_354_pp0_iter2_reg;
wire   [9:0] empty_fu_192_p1;
reg   [9:0] empty_reg_358;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_state11_pp0_stage3_iter1;
wire    ap_block_state18_pp0_stage3_iter2;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] j_1_fu_200_p2;
reg   [31:0] j_1_reg_369;
wire   [0:0] icmp_ln35_fu_206_p2;
reg   [0:0] icmp_ln35_reg_374;
reg   [63:0] m1_buffer_load_reg_380;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state5_pp0_stage4_iter0;
wire    ap_block_state12_pp0_stage4_iter1;
wire    ap_block_state19_pp0_stage4_iter2;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] m2_buffer_load_reg_390;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_state6_pp0_stage5_iter0;
wire    ap_block_state13_pp0_stage5_iter1;
wire    ap_block_state20_pp0_stage5_iter2;
wire    ap_block_pp0_stage5_11001;
wire   [9:0] grp_fu_279_p3;
reg  signed [9:0] add_ln33_reg_395;
reg  signed [9:0] add_ln33_reg_395_pp0_iter1_reg;
reg  signed [9:0] add_ln33_reg_395_pp0_iter2_reg;
wire   [63:0] grp_fu_123_p2;
reg   [63:0] mul_reg_400;
reg   [63:0] mul_reg_400_pp0_iter2_reg;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] select_ln28_fu_247_p3;
reg   [63:0] select_ln28_reg_411;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln27_fu_196_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_1_fu_211_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln33_fu_259_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] ap_sig_allocacmp_regc_load;
wire    ap_block_pp0_stage6;
reg   [31:0] k_fu_38;
wire   [31:0] k_1_fu_168_p2;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state10_pp0_stage2_iter1;
wire    ap_block_state17_pp0_stage2_iter2;
wire    ap_block_pp0_stage2_11001;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] j_fu_42;
wire   [31:0] j_2_fu_215_p3;
reg   [31:0] i_fu_46;
wire   [31:0] i_3_fu_231_p3;
reg   [31:0] ap_sig_allocacmp_i_2;
wire  signed [9:0] zext_ln27_fu_196_p0;
wire   [9:0] grp_fu_263_p3;
wire  signed [9:0] zext_ln27_1_fu_211_p0;
wire   [9:0] grp_fu_271_p3;
wire   [31:0] add_ln35_fu_226_p2;
wire   [63:0] grp_fu_119_p2;
wire  signed [9:0] grp_fu_263_p0;
wire    ap_block_pp0_stage2;
wire  signed [9:0] grp_fu_271_p0;
wire   [9:0] grp_fu_271_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 regc = 64'd0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

matprod_dadd_64ns_64ns_64_8_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 8 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ap_sig_allocacmp_regc_load),
    .din1(mul_reg_400),
    .ce(1'b1),
    .dout(grp_fu_119_p2)
);

matprod_dmul_64ns_64ns_64_7_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(m1_buffer_load_reg_380),
    .din1(m2_buffer_load_reg_390),
    .ce(1'b1),
    .dout(grp_fu_123_p2)
);

matprod_mac_muladd_10s_10s_10s_10_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 10 ),
    .din2_WIDTH( 10 ),
    .dout_WIDTH( 10 ))
mac_muladd_10s_10s_10s_10_4_1_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_263_p0),
    .din1(trunc_ln6_1),
    .din2(empty_20_reg_343),
    .ce(1'b1),
    .dout(grp_fu_263_p3)
);

matprod_mac_muladd_10s_10s_10ns_10_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 10 ),
    .din2_WIDTH( 10 ),
    .dout_WIDTH( 10 ))
mac_muladd_10s_10s_10ns_10_4_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_271_p0),
    .din1(trunc_ln6),
    .din2(grp_fu_271_p2),
    .ce(1'b1),
    .dout(grp_fu_271_p3)
);

matprod_mac_muladd_10s_10s_10ns_10_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 10 ),
    .din2_WIDTH( 10 ),
    .dout_WIDTH( 10 ))
mac_muladd_10s_10s_10ns_10_4_1_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(empty_21_reg_337),
    .din1(trunc_ln6),
    .din2(empty_reg_358),
    .ce(1'b1),
    .dout(grp_fu_279_p3)
);

matprod_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_46 <= 32'd0;
    end else if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln31_reg_354 == 1'd1))) begin
        i_fu_46 <= i_3_fu_231_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_42 <= 32'd0;
    end else if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln31_reg_354 == 1'd1))) begin
        j_fu_42 <= j_2_fu_215_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln31_fu_174_p2 == 1'd0))) begin
        k_fu_38 <= k_1_fu_168_p2;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln31_reg_354 == 1'd1)))) begin
        k_fu_38 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln31_reg_354 == 1'd1))) begin
        add_ln33_reg_395 <= grp_fu_279_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln33_reg_395_pp0_iter1_reg <= add_ln33_reg_395;
        add_ln33_reg_395_pp0_iter2_reg <= add_ln33_reg_395_pp0_iter1_reg;
        mul_reg_400 <= grp_fu_123_p2;
        mul_reg_400_pp0_iter2_reg <= mul_reg_400;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_20_reg_343 <= empty_20_fu_158_p1;
        icmp_ln28_reg_349 <= icmp_ln28_fu_162_p2;
        icmp_ln31_reg_354 <= icmp_ln31_fu_174_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln26_fu_145_p2 == 1'd1))) begin
        empty_21_reg_337 <= empty_21_fu_151_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        empty_reg_358 <= empty_fu_192_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_327 <= ap_sig_allocacmp_i_2;
        icmp_ln26_reg_333 <= icmp_ln26_fu_145_p2;
        icmp_ln26_reg_333_pp0_iter1_reg <= icmp_ln26_reg_333;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln28_reg_349_pp0_iter1_reg <= icmp_ln28_reg_349;
        icmp_ln28_reg_349_pp0_iter2_reg <= icmp_ln28_reg_349_pp0_iter1_reg;
        icmp_ln31_reg_354_pp0_iter1_reg <= icmp_ln31_reg_354;
        icmp_ln31_reg_354_pp0_iter2_reg <= icmp_ln31_reg_354_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln31_reg_354 == 1'd1))) begin
        icmp_ln35_reg_374 <= icmp_ln35_fu_206_p2;
        j_1_reg_369 <= j_1_fu_200_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        m1_buffer_load_reg_380 <= m1_buffer_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln26_reg_333 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        m2_buffer_load_reg_390 <= m2_buffer_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        regc <= select_ln28_fu_247_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        select_ln28_reg_411 <= select_ln28_fu_247_p3;
    end
end

always @ (*) begin
    if (((icmp_ln26_reg_333 == 1'd0) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln26_reg_333_pp0_iter1_reg == 1'd0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 32'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_46;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_sig_allocacmp_regc_load = select_ln28_fu_247_p3;
    end else begin
        ap_sig_allocacmp_regc_load = regc;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m1_buffer_ce0 = 1'b1;
    end else begin
        m1_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        m2_buffer_ce0 = 1'b1;
    end else begin
        m2_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m3_buffer_ce0 = 1'b1;
    end else begin
        m3_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln31_reg_354_pp0_iter2_reg == 1'd1))) begin
        m3_buffer_we0 = 1'b1;
    end else begin
        m3_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln35_fu_226_p2 = (i_2_reg_327 + 32'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage4_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage5_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage6_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage3_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage4_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage5_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage6_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;

assign empty_20_fu_158_p1 = k_fu_38[9:0];

assign empty_21_fu_151_p1 = ap_sig_allocacmp_i_2[9:0];

assign empty_fu_192_p1 = j_fu_42[9:0];

assign grp_fu_263_p0 = ap_sig_allocacmp_i_2[9:0];

assign grp_fu_271_p0 = k_fu_38[9:0];

assign grp_fu_271_p2 = j_fu_42[9:0];

assign i_3_fu_231_p3 = ((icmp_ln35_reg_374[0:0] == 1'b1) ? add_ln35_fu_226_p2 : i_2_reg_327);

assign icmp_ln26_fu_145_p2 = (($signed(ap_sig_allocacmp_i_2) < $signed(N1)) ? 1'b1 : 1'b0);

assign icmp_ln28_fu_162_p2 = ((k_fu_38 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln31_fu_174_p2 = ((k_1_fu_168_p2 == N2) ? 1'b1 : 1'b0);

assign icmp_ln35_fu_206_p2 = ((j_1_fu_200_p2 == N3) ? 1'b1 : 1'b0);

assign j_1_fu_200_p2 = (j_fu_42 + 32'd1);

assign j_2_fu_215_p3 = ((icmp_ln35_reg_374[0:0] == 1'b1) ? 32'd0 : j_1_reg_369);

assign k_1_fu_168_p2 = (k_fu_38 + 32'd1);

assign m1_buffer_address0 = zext_ln27_fu_196_p1;

assign m2_buffer_address0 = zext_ln27_1_fu_211_p1;

assign m3_buffer_address0 = zext_ln33_fu_259_p1;

assign m3_buffer_d0 = select_ln28_reg_411;

assign select_ln28_fu_247_p3 = ((icmp_ln28_reg_349_pp0_iter2_reg[0:0] == 1'b1) ? mul_reg_400_pp0_iter2_reg : grp_fu_119_p2);

assign zext_ln27_1_fu_211_p0 = grp_fu_271_p3;

assign zext_ln27_1_fu_211_p1 = $unsigned(zext_ln27_1_fu_211_p0);

assign zext_ln27_fu_196_p0 = grp_fu_263_p3;

assign zext_ln27_fu_196_p1 = $unsigned(zext_ln27_fu_196_p0);

assign zext_ln33_fu_259_p1 = $unsigned(add_ln33_reg_395_pp0_iter2_reg);

endmodule //matprod_matprod_Pipeline_VITIS_LOOP_26_1