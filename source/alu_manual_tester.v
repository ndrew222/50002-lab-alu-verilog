module alu_manual_tester (
    input         clk,         // clock
    input         rst,         // reset
    input   [4:0] io_button,
    input  [23:0] io_dip,
    output [23:0] io_led,
    output  [6:0] io_segment,
    output  [3:0] io_select
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

    // io_button indices
    //   0
    // 3 1 4
    //   2
    //
    // a[31:16] => 3
    // a[15:0]  => 0
    // b[31:16] => 2
    // b[15:0]  => 4
    // calculate=> 1

    assign io_led[23:19] = io_button[4:0]; // assign face buttons to io_led [23:19] to see the numbering
    assign io_led[18:16] = 3'b0;
    assign io_led[15:0] = io_dip[15:0];

    assign io_segment = 7'hFF;
    assign io_select = 4'hF;

    always @(posedge clk) begin
        // implement alu tester logic here

    end
endmodule
