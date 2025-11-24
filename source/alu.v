module alu (
    input [31:0] a,
    input [31:0] b,
    input [5:0] alufn,
    output reg [31:0] out,
    output reg z,
    output reg v,
    output reg n);

    always @ (a or b or alufn) begin
        // implement alu logic here
        out = 0;
        z = 0;
        v = 0;
        n = 0;
    end
endmodule
