module d_flip_flop (
    input  clk,     // clock
    input  rst,     // reset
    input  d,
    input  write_enable,
    output q
);
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            q <= 1'b0;
        end
        else if (write_enable) begin
            q <= d;
        end
    end
endmodule
