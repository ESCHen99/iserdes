module rd_single(
    input logic clk_slow,
    input logic clk_fast,
    input logic rst,
    input logic dqs_delay,
    input logic dq_delay,
    output logic [4 - 1 : 0] data
);

    deserializer des(
        .clk(dqs_delay),
        .clkdiv(clk_slow),
        .oclk(clk_fast),
        .rst(rst),
        .datain(dq_delay),
        .dataout(data)
    );


endmodule