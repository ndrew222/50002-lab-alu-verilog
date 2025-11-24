module rca #(
    parameter SIZE = 32
) (
    input  [SIZE-1:0] a,
    input  [SIZE-1:0] b,
    input             cin,
    output            cout,
    output [SIZE-1:0] s
    //    output v
);
    wire [SIZE:0] carry;
    assign carry[0] = cin;
    assign cout = carry[SIZE];
    //    assign v = carry[SIZE] ^ carry[SIZE-1];

    genvar i;
    generate
        for (i = 0; i < SIZE; i = i + 1) begin
            fa full_adder_i (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i]),
                .s(s[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate
endmodule
