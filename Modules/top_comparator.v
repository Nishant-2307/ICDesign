`timescale 1ns / 1ps

module comparator(A, B, out, equal);
input [7:0]A;
input [7:0]B;
output reg out;
output reg equal;
always @ (*) begin
    if (A > B) begin
        out <= 1;
        equal <= 0;
    end else if (A < B) begin
        out <= 0;
        equal <= 0;
    end else begin
        out <= 0;
        equal <= 1;
    end
end
endmodule
