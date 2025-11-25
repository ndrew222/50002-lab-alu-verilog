module adder #(
    parameter SIZE = 32
) (
    input  [SIZE-1:0] a,
    input  [SIZE-1:0] b,
    input             alufn0,
    output [SIZE-1:0] out,
    output            z, // zero flag
    output            v, // overflow flag
    output            n  // negative/sign flag
);
    always @(*) begin
        // implement adder/subtractor logic here
        out = 0;
        z   = 0;
        v   = 0;
        n   = 0;
    end
endmodule
