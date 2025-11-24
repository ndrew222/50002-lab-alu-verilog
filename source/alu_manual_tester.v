module alu_manual_tester (
    input clk,  // clock
    input rst,  // reset
    input [4:0] io_button,
    input [23:0] io_dip,
    output [23:0] io_led,
    output [6:0] io_segment,
    output [3:0] io_select
);

    reg [31:0] a;
    reg [31:0] b;
    reg [5:0] alufn;
    wire z;
    wire v;
    wire n;
    wire [31:0] alu_out;

    alu alu (
            .a(a),
            .b(b),
            .alufn(alufn),
            .z(z),
            .v(v),
            .n(n),
            .out(alu_out)
    );

    always @(posedge clk) begin
        // implement alu tester logic here
        io_led = 24'b0;
        io_segment = 7'hFF;
        io_select = 4'hF;
    end
endmodule
