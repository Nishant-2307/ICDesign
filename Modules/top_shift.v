`timescale 1ns / 1ps
module Shift(clk, reset, left_circular, left_zeropad, right, noshift, load, load_now, out);

input clk;
input reset;
input left_circular;
input left_zeropad;
input right;
input noshift;
input load_now;
input [7:0]load;
output reg [7:0]out;

always @(posedge clk, reset) begin
    if (reset) begin out <= 0; end
    else if (left_circular) begin out <= {out[6:0], out[7]}; end
    else if (left_zeropad) begin out <= {out[6:0], 1'b0}; end
    else if (right) begin out <= {1'b0, out[7:1]}; end
    else if (noshift) begin out <= out; end
    else if (load_now) begin out <= load; end
end
endmodule
