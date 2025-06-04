//================================================
// Shift Register Module
// description: 16-bit shift register with parallel load and serial shift functionality
// author: Mohammed Aaftab
// date: 04-06-2024
//================================================
//inputs:
// in: 16-bit input data for parallel load
// serial_in: 1-bit input for serial shifting
// ld: load signal to load the input data
// shift: shift signal to enable serial shifting
// clk: clock signal for synchronization
// outputs:
// out: 16-bit output data after parallel load or serial shift
//behaviour:
// if reset is high, reset the register to zero
// else if ld is high, load the input data into the register
// else if shift is high, shift the register right and insert serial_in at the leftmost bit

//=================================================

module shift_reg(out,in,serial_in,ld,shift,clk,reset);
parameter width = 16; // Width of the shift register

input [width-1:0] in;// Parallel input data
input shift; // Shift signal
input serial_in, ld, clk; // serial_in, load signal, clock signal
input reset; // Reset signal

output reg [width-1:0] out; // Output register

always @(posedge clk)
begin
    if(reset)
        out <= 0; // Reset the register to zero
    else if(ld)
        out <=in; // Load the input data into the register
    else if(shift)
        // Shift right, inserting serial_in at the leftmost bit
        out <= {serial_in, out[width-1:1]};
end
endmodule
