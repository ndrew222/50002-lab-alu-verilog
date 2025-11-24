module boolean #(
    parameter SIZE = 32
) (
    input  [SIZE-1:0] a,
    input  [SIZE-1:0] b,
    input       [5:0] alufn,
    output [SIZE-1:0] bool
);
    always @(*) begin
        // implement boolean logic here
        bool = 0;
    end
endmodule
