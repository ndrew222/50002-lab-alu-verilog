module rca #(
    parameter SIZE = 32
) (
    input  [SIZE-1:0] a,
    input  [SIZE-1:0] b,
    input             cin,
    output            cout,
    output [SIZE-1:0] s
);
    always @(*) begin
        // implement ripple-carry adder logic here
        cout = 0;
        s = 0;
    end
endmodule
