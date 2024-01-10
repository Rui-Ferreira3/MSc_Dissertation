// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_BUS1 (
    clk,
    reset,
    TRAN_s_axi_BUS1_AWADDR,
    TRAN_s_axi_BUS1_AWVALID,
    TRAN_s_axi_BUS1_AWREADY,
    TRAN_s_axi_BUS1_WVALID,
    TRAN_s_axi_BUS1_WREADY,
    TRAN_s_axi_BUS1_WDATA,
    TRAN_s_axi_BUS1_WSTRB,
    TRAN_s_axi_BUS1_ARADDR,
    TRAN_s_axi_BUS1_ARVALID,
    TRAN_s_axi_BUS1_ARREADY,
    TRAN_s_axi_BUS1_RVALID,
    TRAN_s_axi_BUS1_RREADY,
    TRAN_s_axi_BUS1_RDATA,
    TRAN_s_axi_BUS1_RRESP,
    TRAN_s_axi_BUS1_BVALID,
    TRAN_s_axi_BUS1_BREADY,
    TRAN_s_axi_BUS1_BRESP,
    TRAN_BUS1_write_data_finish,
    TRAN_BUS1_start_in,
    TRAN_BUS1_idle_out,
    TRAN_BUS1_ready_out,
    TRAN_BUS1_ready_in,
    TRAN_BUS1_done_out,
    TRAN_BUS1_write_start_in   ,
    TRAN_BUS1_write_start_finish,
    TRAN_BUS1_interrupt,
    TRAN_BUS1_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_m1 "../tv/cdatafile/c.matprod.autotvin_m1.dat"
`define TV_IN_m2 "../tv/cdatafile/c.matprod.autotvin_m2.dat"
`define TV_IN_m3 "../tv/cdatafile/c.matprod.autotvin_m3.dat"
`define TV_IN_N1 "../tv/cdatafile/c.matprod.autotvin_N1.dat"
`define TV_IN_N2 "../tv/cdatafile/c.matprod.autotvin_N2.dat"
`define TV_IN_N3 "../tv/cdatafile/c.matprod.autotvin_N3.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter m1_DEPTH = 1;
reg [31 : 0] m1_OPERATE_DEPTH = 0;
parameter m1_c_bitwidth = 64;
parameter m2_DEPTH = 1;
reg [31 : 0] m2_OPERATE_DEPTH = 0;
parameter m2_c_bitwidth = 64;
parameter m3_DEPTH = 1;
reg [31 : 0] m3_OPERATE_DEPTH = 0;
parameter m3_c_bitwidth = 64;
parameter N1_DEPTH = 1;
reg [31 : 0] N1_OPERATE_DEPTH = 0;
parameter N1_c_bitwidth = 32;
parameter N2_DEPTH = 1;
reg [31 : 0] N2_OPERATE_DEPTH = 0;
parameter N2_c_bitwidth = 32;
parameter N3_DEPTH = 1;
reg [31 : 0] N3_OPERATE_DEPTH = 0;
parameter N3_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter matprod_continue_addr = 0;
parameter matprod_auto_start_addr = 0;
parameter m1_data_in_addr = 16;
parameter m2_data_in_addr = 28;
parameter m3_data_in_addr = 40;
parameter N1_data_in_addr = 52;
parameter N2_data_in_addr = 60;
parameter N3_data_in_addr = 68;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_BUS1_AWADDR;
output  TRAN_s_axi_BUS1_AWVALID;
input  TRAN_s_axi_BUS1_AWREADY;
output  TRAN_s_axi_BUS1_WVALID;
input  TRAN_s_axi_BUS1_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_BUS1_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_BUS1_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_BUS1_ARADDR;
output  TRAN_s_axi_BUS1_ARVALID;
input  TRAN_s_axi_BUS1_ARREADY;
input  TRAN_s_axi_BUS1_RVALID;
output  TRAN_s_axi_BUS1_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_BUS1_RDATA;
input [2 - 1 : 0] TRAN_s_axi_BUS1_RRESP;
input  TRAN_s_axi_BUS1_BVALID;
output  TRAN_s_axi_BUS1_BREADY;
input [2 - 1 : 0] TRAN_s_axi_BUS1_BRESP;
output TRAN_BUS1_write_data_finish;
input     clk;
input     reset;
input     TRAN_BUS1_start_in;
output    TRAN_BUS1_done_out;
output    TRAN_BUS1_ready_out;
input     TRAN_BUS1_ready_in;
output    TRAN_BUS1_idle_out;
input  TRAN_BUS1_write_start_in   ;
output TRAN_BUS1_write_start_finish;
input     TRAN_BUS1_interrupt;
input     TRAN_BUS1_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [m1_c_bitwidth - 1 : 0] mem_m1 [m1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_m1 [ (m1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * m1_DEPTH -1 : 0] = '{default : 'hz};
reg m1_write_data_finish;
reg [m2_c_bitwidth - 1 : 0] mem_m2 [m2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_m2 [ (m2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * m2_DEPTH -1 : 0] = '{default : 'hz};
reg m2_write_data_finish;
reg [m3_c_bitwidth - 1 : 0] mem_m3 [m3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_m3 [ (m3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * m3_DEPTH -1 : 0] = '{default : 'hz};
reg m3_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_N1 [N1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_N1 [ (N1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * N1_DEPTH -1 : 0] = '{default : 'hz};
reg N1_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_N2 [N2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_N2 [ (N2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * N2_DEPTH -1 : 0] = '{default : 'hz};
reg N2_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_N3 [N3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_N3 [ (N3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * N3_DEPTH -1 : 0] = '{default : 'hz};
reg N3_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
//write m1 reg
reg [31 : 0] write_m1_count = 0;
reg write_m1_run_flag = 0;
reg write_one_m1_data_done = 0;
//write m2 reg
reg [31 : 0] write_m2_count = 0;
reg write_m2_run_flag = 0;
reg write_one_m2_data_done = 0;
//write m3 reg
reg [31 : 0] write_m3_count = 0;
reg write_m3_run_flag = 0;
reg write_one_m3_data_done = 0;
//write N1 reg
reg [31 : 0] write_N1_count = 0;
reg write_N1_run_flag = 0;
reg write_one_N1_data_done = 0;
//write N2 reg
reg [31 : 0] write_N2_count = 0;
reg write_N2_run_flag = 0;
reg write_one_N2_data_done = 0;
//write N3 reg
reg [31 : 0] write_N3_count = 0;
reg write_N3_run_flag = 0;
reg write_one_N3_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_BUS1_AWADDR = AWADDR_reg;
assign TRAN_s_axi_BUS1_AWVALID = AWVALID_reg;
assign TRAN_s_axi_BUS1_WVALID = WVALID_reg;
assign TRAN_s_axi_BUS1_WDATA = WDATA_reg;
assign TRAN_s_axi_BUS1_WSTRB = WSTRB_reg;
assign TRAN_s_axi_BUS1_ARADDR = ARADDR_reg;
assign TRAN_s_axi_BUS1_ARVALID = ARVALID_reg;
assign TRAN_s_axi_BUS1_RREADY = RREADY_reg;
assign TRAN_s_axi_BUS1_BREADY = BREADY_reg;
assign TRAN_BUS1_write_start_finish = AESL_write_start_finish;
assign TRAN_BUS1_done_out = AESL_done_index_reg;
assign TRAN_BUS1_ready_out = AESL_ready_out_index_reg;
assign TRAN_BUS1_idle_out = AESL_idle_index_reg;
assign TRAN_BUS1_write_data_finish = 1 & m1_write_data_finish & m2_write_data_finish & m3_write_data_finish & N1_write_data_finish & N2_write_data_finish & N3_write_data_finish;
always @(TRAN_BUS1_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_BUS1_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_BUS1_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_BUS1_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_BUS1_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_BUS1_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_BUS1_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_BUS1_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_BUS1_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_BUS1_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        m1_write_data_finish <= 0;
        write_m1_run_flag <= 0; 
        write_m1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (m1_c_bitwidth, m1_DEPTH, m1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_BUS1_start_in === 1) begin
            m1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_m1_run_flag <= 1; 
            write_m1_count = 0;
        end
        if (write_one_m1_data_done === 1) begin
            write_m1_count = write_m1_count + 1;
            if (write_m1_count == m1_OPERATE_DEPTH) begin
                write_m1_run_flag <= 0; 
                m1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_m1
    integer write_m1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] m1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = m1_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_m1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write m1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (m1_c_bitwidth < 32) begin
                        m1_data_tmp_reg = mem_m1[write_m1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < m1_c_bitwidth) begin
                                m1_data_tmp_reg[j] = mem_m1[write_m1_count][i*32 + j];
                            end
                            else begin
                                m1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_m1[write_m1_count * four_byte_num  + i]!==m1_data_tmp_reg) begin
                    write (m1_data_in_addr + write_m1_count * four_byte_num * 4 + i * 4, m1_data_tmp_reg, write_m1_resp);
                    image_mem_m1[write_m1_count * four_byte_num + i]=m1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_m1_data_done <= 1;
                @(posedge clk);
                write_one_m1_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        m2_write_data_finish <= 0;
        write_m2_run_flag <= 0; 
        write_m2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (m2_c_bitwidth, m2_DEPTH, m2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_BUS1_start_in === 1) begin
            m2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_m2_run_flag <= 1; 
            write_m2_count = 0;
        end
        if (write_one_m2_data_done === 1) begin
            write_m2_count = write_m2_count + 1;
            if (write_m2_count == m2_OPERATE_DEPTH) begin
                write_m2_run_flag <= 0; 
                m2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_m2
    integer write_m2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] m2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = m2_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_m2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write m2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (m2_c_bitwidth < 32) begin
                        m2_data_tmp_reg = mem_m2[write_m2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < m2_c_bitwidth) begin
                                m2_data_tmp_reg[j] = mem_m2[write_m2_count][i*32 + j];
                            end
                            else begin
                                m2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_m2[write_m2_count * four_byte_num  + i]!==m2_data_tmp_reg) begin
                    write (m2_data_in_addr + write_m2_count * four_byte_num * 4 + i * 4, m2_data_tmp_reg, write_m2_resp);
                    image_mem_m2[write_m2_count * four_byte_num + i]=m2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_m2_data_done <= 1;
                @(posedge clk);
                write_one_m2_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        m3_write_data_finish <= 0;
        write_m3_run_flag <= 0; 
        write_m3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (m3_c_bitwidth, m3_DEPTH, m3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_BUS1_start_in === 1) begin
            m3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_m3_run_flag <= 1; 
            write_m3_count = 0;
        end
        if (write_one_m3_data_done === 1) begin
            write_m3_count = write_m3_count + 1;
            if (write_m3_count == m3_OPERATE_DEPTH) begin
                write_m3_run_flag <= 0; 
                m3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_m3
    integer write_m3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] m3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = m3_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_m3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write m3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (m3_c_bitwidth < 32) begin
                        m3_data_tmp_reg = mem_m3[write_m3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < m3_c_bitwidth) begin
                                m3_data_tmp_reg[j] = mem_m3[write_m3_count][i*32 + j];
                            end
                            else begin
                                m3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_m3[write_m3_count * four_byte_num  + i]!==m3_data_tmp_reg) begin
                    write (m3_data_in_addr + write_m3_count * four_byte_num * 4 + i * 4, m3_data_tmp_reg, write_m3_resp);
                    image_mem_m3[write_m3_count * four_byte_num + i]=m3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_m3_data_done <= 1;
                @(posedge clk);
                write_one_m3_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        N1_write_data_finish <= 0;
        write_N1_run_flag <= 0; 
        write_N1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (N1_c_bitwidth, N1_DEPTH, N1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_BUS1_start_in === 1) begin
            N1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_N1_run_flag <= 1; 
            write_N1_count = 0;
        end
        if (write_one_N1_data_done === 1) begin
            write_N1_count = write_N1_count + 1;
            if (write_N1_count == N1_OPERATE_DEPTH) begin
                write_N1_run_flag <= 0; 
                N1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_N1
    integer write_N1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] N1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = N1_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_N1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write N1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (N1_c_bitwidth < 32) begin
                        N1_data_tmp_reg = mem_N1[write_N1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < N1_c_bitwidth) begin
                                N1_data_tmp_reg[j] = mem_N1[write_N1_count][i*32 + j];
                            end
                            else begin
                                N1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_N1[write_N1_count * four_byte_num  + i]!==N1_data_tmp_reg) begin
                    write (N1_data_in_addr + write_N1_count * four_byte_num * 4 + i * 4, N1_data_tmp_reg, write_N1_resp);
                    image_mem_N1[write_N1_count * four_byte_num + i]=N1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_N1_data_done <= 1;
                @(posedge clk);
                write_one_N1_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        N2_write_data_finish <= 0;
        write_N2_run_flag <= 0; 
        write_N2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (N2_c_bitwidth, N2_DEPTH, N2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_BUS1_start_in === 1) begin
            N2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_N2_run_flag <= 1; 
            write_N2_count = 0;
        end
        if (write_one_N2_data_done === 1) begin
            write_N2_count = write_N2_count + 1;
            if (write_N2_count == N2_OPERATE_DEPTH) begin
                write_N2_run_flag <= 0; 
                N2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_N2
    integer write_N2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] N2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = N2_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_N2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write N2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (N2_c_bitwidth < 32) begin
                        N2_data_tmp_reg = mem_N2[write_N2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < N2_c_bitwidth) begin
                                N2_data_tmp_reg[j] = mem_N2[write_N2_count][i*32 + j];
                            end
                            else begin
                                N2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_N2[write_N2_count * four_byte_num  + i]!==N2_data_tmp_reg) begin
                    write (N2_data_in_addr + write_N2_count * four_byte_num * 4 + i * 4, N2_data_tmp_reg, write_N2_resp);
                    image_mem_N2[write_N2_count * four_byte_num + i]=N2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_N2_data_done <= 1;
                @(posedge clk);
                write_one_N2_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        N3_write_data_finish <= 0;
        write_N3_run_flag <= 0; 
        write_N3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (N3_c_bitwidth, N3_DEPTH, N3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_BUS1_start_in === 1) begin
            N3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_N3_run_flag <= 1; 
            write_N3_count = 0;
        end
        if (write_one_N3_data_done === 1) begin
            write_N3_count = write_N3_count + 1;
            if (write_N3_count == N3_OPERATE_DEPTH) begin
                write_N3_run_flag <= 0; 
                N3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_N3
    integer write_N3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] N3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = N3_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_N3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write N3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (N3_c_bitwidth < 32) begin
                        N3_data_tmp_reg = mem_N3[write_N3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < N3_c_bitwidth) begin
                                N3_data_tmp_reg[j] = mem_N3[write_N3_count][i*32 + j];
                            end
                            else begin
                                N3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_N3[write_N3_count * four_byte_num  + i]!==N3_data_tmp_reg) begin
                    write (N3_data_in_addr + write_N3_count * four_byte_num * 4 + i * 4, N3_data_tmp_reg, write_N3_resp);
                    image_mem_N3[write_N3_count * four_byte_num + i]=N3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_N3_data_done <= 1;
                @(posedge clk);
                write_one_N3_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_BUS1_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 7;
    while (1) begin
        process_7_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_7_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_m1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [m1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (m1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_m1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_m1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < m1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_m1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_m1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_m1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_m1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_m1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_m1;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_m2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [m2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (m2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_m2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_m2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < m2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_m2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_m2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_m2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_m2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_m2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_m2;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_m3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [m3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (m3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_m3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_m3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < m3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_m3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_m3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_m3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_m3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_m3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_m3;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_N1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [N1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (N1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_N1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_N1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < N1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_N1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_N1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_N1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_N1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_N1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_N1;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_N2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [N2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (N2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_N2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_N2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < N2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_N2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_N2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_N2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_N2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_N2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_N2;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_N3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [N3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (N3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_N3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_N3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < N3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_N3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_N3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_N3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_N3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_N3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_N3;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
endmodule
