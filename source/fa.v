module fa (
    input  a,
    input  b,
    input  cin,
    output s,
    output cout
);
    always @(*) begin
        s = a ^ b ^ cin;
        cout = (a & b) | (b & cin) | (a & cin);
    end
endmodule
