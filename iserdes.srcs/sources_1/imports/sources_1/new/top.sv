`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 11:57:41 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
        input logic CLK100MHZ,        
        input logic [5 : 0] ja, jb,
        output logic [5 : 0] jc, jd,

        inout logic [0 : 0] ddr3_dq,
        inout logic [0 : 0] ddr3_dqs_n, ddr3_dqs_p
    );

    wire clk_fast_0, clk_fast_90, clk_div_0, clk_div_90, clk_ref;
    wire pll_locked;
    wire rst;

    assign rst = 1'b0;
    clk #(
        .MULT(10),
        .CLKOUT1_DIVIDE(3),
        .CLKOUT2_DIVIDE(3),
        .CLKOUT3_DIVIDE(6),
        .CLKOUT4_DIVIDE(6),
        .CLKOUT5_DIVIDE(10),
        .CLKOUT6_DIVIDE(10),
        .CLKOUT0_DIVIDE(10)
    ) clk_gen(
        .clkin(CLK100MHZ),
        .clk_fast_0(clk_fast_0),
        .clk_fast_90(clk_fast_90),
        .clk_div_0(clk_div_0),
        .clk_div_90(clk_div_90),
        .clk_ref(),
        .pll_locked(pll_locked)
    );

    clk #(
        .MULT(6),
        .CLKOUT1_DIVIDE(3),
        .CLKOUT2_DIVIDE(3),
        .CLKOUT3_DIVIDE(3),
        .CLKOUT4_DIVIDE(3),
        .CLKOUT5_DIVIDE(3),
        .CLKOUT6_DIVIDE(3),
        .CLKOUT0_DIVIDE(3)
    ) clk_ref_gen(
        .clkin(CLK100MHZ),
        .clk_fast_0(clk_ref),
        .clk_fast_90(),
        .clk_div_0(),
        .clk_div_90(),
        .clk_ref(),
        .pll_locked()
    );
    
    (* IODELAY_GROUP = "IODELAY_MEMORY" *)
    IDELAYCTRL IDELAYCTRL_inst (
       .RDY(RDY),       // 1-bit output: Ready output
       .REFCLK(clk_ref), // 1-bit input: Reference clock input
       .RST(1'b0)        // 1-bit input: Active high reset input
    );

    wire read_dqs, write_dqs, dqs_bufio_en;
    assign dqs_bufio_en = 1'b1;
    IOBUFDS #(
        .IOSTANDARD("DEFAULT"),	// Specify the I/O standard
        .SLEW("FAST") 
    ) DQS_BUF (
        .O(read_dqs),     // Buffer output
        .IO(ddr3_dqs_p),   // Diff_p inout (connect directly to top-level port)
        .IOB(ddr3_dqs_n), // Diff_n inout (connect directly to top-level port)
        .I(write_dqs),     // Buffer input
        .T(dqs_bufio_en)      // 3-state enable input, high=input, low=output
    );


    wire [4 : 0] dqs_taps;
    wire dqs_ld;
    assign dqs_taps = ja[5 : 1];
    assign dqs_ld = ja[0];
    delay #(
        .TAPS(10),
        .TYPE("VAR_LOAD"),
        .SIGNAL_PATTERN("CLOCK")
    )
    dqs_delay_module_0(
        .clk(clk_fast_90),
        .rst(rst),
        .din(read_dqs),

        .taps(dqs_taps),
        .ce(1'b0),
        .inc(1'b0),
        .ld(dqs_ld),

        .dout(dqs_delay)
    );


    wire read_dq, write_dq, dq_bufio_en;
    assign dq_bufio_en = 1'b1;
    IOBUF #(
        .DRIVE(12),
        .IBUF_LOW_PWR("TRUE"),
        .SLEW("FAST")
    ) IOBUF_DQ (
        .O(read_dq),
        .IO(ddr3_dq[0]),
        .I(write_dq),
        .T(dq_bufio_en)
    ); 


    wire dq_delay;
    wire [4 : 0] dq_taps;
    wire dq_ld;
    assign dq_taps = jb[5 : 1];
    assign dq_ld = jb[0];
    delay #(
        .TAPS(0),
        .TYPE("VAR_LOAD"),
        .SIGNAL_PATTERN("DATA")
    )
    dq_delay_module (
        .clk(clk_fast_90),
        .rst(rst),

        .taps(dq_taps),
        .ce(1'b0),
        .inc(1'b0),
        .ld(dq_ld),

        .din(read_dq),
        .dout(dq_delay)
    );
    
    rd_single rd(
        .clk_slow(clk_div_90),
        .clk_fast(clk_fast_90),
        .rst(rst),

        .dqs_delay(dqs_delay),
        .dq_delay(dq_delay),
        .data(jd[3 : 0])
    );

endmodule
