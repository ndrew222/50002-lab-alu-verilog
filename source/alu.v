module alu (
    input  [31:0] a,
    input  [31:0] b,
    input   [5:0] alufn,
    output [31:0] out,
    output        z,
    output        v,
    output        n
);
    adder adder (
        .a(a),
        .b(b),
        .alufn0(alufn[0]),
        .out(out),
        .z(z),
        .v(v),
        .n(n)
    );

    always @(*) begin
        // implement alu logic here
    end
endmodule
