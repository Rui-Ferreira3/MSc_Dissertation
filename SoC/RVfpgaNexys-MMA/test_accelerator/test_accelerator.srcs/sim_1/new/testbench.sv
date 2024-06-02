`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2024 11:28:52
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
import design_1_axi_vip_0_0_pkg::*;

bit         aclk = 0;
bit         aresetn = 1;
bit         rsta_busy;

bit [31:0]  data, addr;
bit [31:0]  base_addr = 32'h0000_0000;

xil_axi_resp_t 	resp;

module testbench( );

design_1_wrapper UUT
(
    .aclk       (aclk),
    .aresetn    (aresetn),
    .rsta_busy  (rsta_busy)
);

always #10ns aclk = ~aclk;

initial begin
    //Assert the reset
    aresetn = 0;
    #500ns
    // Release the reset
    aresetn = 1;
end

design_1_axi_vip_0_0_mst_t      master_agent;

initial begin
    master_agent = new("master vip agent",UUT.design_1_i.axi_vip_0.inst.IF);
    master_agent.start_master();
    
    wait (aresetn == 1'b1);
    
    #500ns
    addr = 8'h00;
    data = 32'h0000_0000;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h10;
    data = 32'h0000_0100;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h18;
    data = 32'h0000_0200;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h20;
    data = 32'h0000_0300;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h28;
    data = 32'h0000_0003;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h30;
    data = 32'h0000_0004;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h38;
    data = 32'h0000_0003;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h38;
    data = 32'h0000_0003;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #20ns
    addr = 8'h00;
    data = 32'h0000_0001;
    master_agent.AXI4LITE_WRITE_BURST(base_addr + addr,0,data,resp);
    
    #10000ns
    
    addr = 8'h00;
    master_agent.AXI4LITE_READ_BURST(base_addr + addr,0,data,resp);
    
    $display("==========end==========");
    #500ns
    $finish;
end

endmodule
