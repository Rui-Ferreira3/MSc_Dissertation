`include "matmul_defines.v"

module matmul_top(
	// WISHBONE Interface
	wb_clk_i, wb_rst_i, wb_cyc_i, wb_adr_i, wb_dat_i, wb_sel_i, wb_we_i, wb_stb_i,
	wb_dat_o, wb_ack_o, wb_err_o, wb_inta_o,
);


//
// WISHBONE Interface
//
input wire		wb_clk_i;	// Clock
input wire		wb_rst_i;	// Reset
input wire		wb_cyc_i;	// cycle valid input
input wire	[aw-1:0]	wb_adr_i;	// address bus inputs
input wire	[dw-1:0]	wb_dat_i;	// input data bus
input wire	[3:0]		wb_sel_i;	// byte select inputs
input wire			wb_we_i;	// indicates write transfer
input wire		wb_stb_i;	// strobe input
output		[dw-1:0]	wb_dat_o;	// output data bus
output wire		wb_ack_o;	// normal termination
output wire		wb_err_o;	// termination w/ error
output wire		wb_inta_o;	// Interrupt request output



endmodule
