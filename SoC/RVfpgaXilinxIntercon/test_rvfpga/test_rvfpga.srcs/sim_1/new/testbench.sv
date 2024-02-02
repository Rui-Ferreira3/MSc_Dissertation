`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2024 14:23:43
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
import axi_vip_pkg::*;
import interconnect_axi_vip_0_0_pkg::*;

bit             aclk = 0;
bit             aresetn = 0;
bit [31:0]      addr = 32'h00000000;
bit [31:0]      accel_addr = 32'h10000000;
bit [31:0]      data;
xil_axi_resp_t 	resp;

module testbench( );

wire [12:0] ddram_a;
wire [2:0]  ddram_ba;
wire        ddram_ras_n;
wire        ddram_cas_n;
wire        ddram_we_n;
wire        ddram_cs_n;
wire [1:0]  ddram_dm;
wire [15:0] ddram_dq;
reg [15:0] ddram_dq_reg = 0;
wire [1:0]  ddram_dqs_p;
reg [1:0]  ddram_dqs_p_reg = 0;
wire [1:0]  ddram_dqs_n;
reg [1:0]  ddram_dqs_n_reg = 0;
wire        ddram_clk_p;
wire        ddram_clk_n;
wire        ddram_cke;
wire        ddram_odt;
wire        o_flash_cs_n;
wire        o_flash_mosi;
reg	       i_flash_miso = 0;
reg	       i_uart_rx = 0;
wire        o_uart_tx;
wire [15:0] i_sw;
reg [15:0] i_sw_reg = 0;
wire [15:0] o_led;
wire [7:0]  AN;
wire        CA, CB, CC, CD, CE, CF, CG;
wire        o_accel_cs_n;
wire        o_accel_mosi;
reg        i_accel_miso = 0;
wire        accel_sclk;

assign ddram_dq = ddram_dq_reg;
assign ddram_dqs_p = ddram_dqs_p_reg;
assign ddram_dqs_n = ddram_dqs_n_reg;
assign i_sw = i_sw_reg;

rvfpganexys UUT
(
    .clk(aclk),
    .rstn(aresetn),
    .ddram_a(ddram_a),
    .ddram_ba(ddram_ba),
    .ddram_ras_n(ddram_ras_n),
    .ddram_cas_n(ddram_cas_n),
    .ddram_we_n(ddram_we_n),
    .ddram_cs_n(ddram_cs_n),
    .ddram_dm(ddram_dm),
    .ddram_dq(ddram_dq),
    .ddram_dqs_p(ddram_dqs_p),
    .ddram_dqs_n(ddram_dqs_n),
    .ddram_clk_p(ddram_clk_p),
    .ddram_clk_n(ddram_clk_n),
    .ddram_cke(ddram_cke),
    .ddram_odt(ddram_odt),
    .o_flash_cs_n(o_flash_cs_n),
    .o_flash_mosi(o_flash_mosi),
    .i_flash_miso(i_flash_miso),
    .i_uart_rx(i_uart_rx),
    .o_uart_tx(o_uart_tx),
    .i_sw(i_sw),
    .o_led(o_led),
    .AN(AN),
    .CA(CA),
    .CB(CB),
    .CC(CC),
    .CD(CD),
    .CE(CE),
    .CF(CF),
    .CG(CG),
    .o_accel_cs_n(o_accel_cs_n),
    .o_accel_mosi(o_accel_mosi),
    .i_accel_miso(i_accel_miso),
    .accel_sclk(accel_sclk)
);

always #5ns aclk = ~aclk;
    
initial begin
    //Assert the reset
    aresetn = 0;
    #500ns
    // Release the reset
    aresetn = 1;
    
end

interconnect_axi_vip_0_0_mst_t      master_agent;

initial begin
    master_agent = new("master vip agent",UUT.swervolf.intercon.interconnect_i.axi_vip_0.inst.IF);
    master_agent.start_master();
    
    wait (aresetn == 1'b1);
    
    #20ns
    addr = 8'h00;
    data = 32'h0000_0000;
    master_agent.AXI4LITE_WRITE_BURST(accel_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h10;
    data = 32'h0000_0100;
    master_agent.AXI4LITE_WRITE_BURST(accel_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h18;
    data = 32'h0000_0200;
    master_agent.AXI4LITE_WRITE_BURST(accel_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h20;
    data = 32'h0000_0300;
    master_agent.AXI4LITE_WRITE_BURST(accel_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h28;
    data = 32'h0000_0003;
    master_agent.AXI4LITE_WRITE_BURST(accel_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h30;
    data = 32'h0000_0004;
    master_agent.AXI4LITE_WRITE_BURST(accel_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h38;
    data = 32'h0000_0004;
    master_agent.AXI4LITE_WRITE_BURST(accel_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h00;
    data = 32'h0000_0001;
    master_agent.AXI4LITE_WRITE_BURST(accel_addr + addr,0,data,resp);
    
    
    #500ns
    
    $display("______DONE_____");
    #500ns
    $finish;
end

task myAXI4_WRITE_BURST (
        input xil_axi_ulong         addr,
        input xil_axi_prot_t        prot,
        input bit [64-1:0]          data,
        output xil_axi_resp_t       resp
    );
    master_agent.AXI4_WRITE_BURST (
        0,
        addr,
        4,
        XIL_AXI_SIZE_4BYTE,
        XIL_AXI_BURST_TYPE_INCR,
        XIL_AXI_ALOCK_NOLOCK,
        'h0,
        prot,
        'h0,
        'h0,
        'h0,
        data,
        'h0,
        resp
        
    );
endtask
    
endmodule