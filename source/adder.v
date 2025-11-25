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
    wire [SIZE-1:0] xb;
    wire c;
    assign xb = b ^ {SIZE{alufn[0]}};
    assign v  = (a[SIZE-1] & xb[SIZE-1] & ~out[SIZE-1]) | (~a[SIZE-1] & ~xb[SIZE-1] & out[SIZE-1]);
    assign z  = ~|out;
    assign n  = out[SIZE-1];
    rca ripple_carry_adder (
        .a(a),
        .b(xb),
        .cin(alufn[0]),
        .cout(c),
        .s(out)
    );
endmodule
