//========================================
// PIPO Register Module
// description: 16-bit PIPO register with parallel load functionality
// author: Mohammed Aaftab
// date: 04-06-2024
//========================================
// inputs:
// in: 16-bit input data for parallel load
// ld: load signal to load the input data
// clk: clock signal for synchronization
// reset: reset signal to reset the register to zero
// outputs:
// out: 16-bit output data after parallel load
// behaviour:
// if reset is high, reset the register to zero
// else if ld is high, load the input data into the register
//=========================================

module pipo_reg (out, in, ld, clk, reset);
parameter width = 16; // Width of the register
input reset; // Reset signal
input [width-1:0] in; // Parallel input data
input ld, clk; // Load signal and clock signal

output reg [15:0] out; // Output register

always @(posedge clk)
begin
    if(reset) out <= 0; // Reset the register to zero
    else if(ld) out<=in; // Load the input data into the register
end
endmodule