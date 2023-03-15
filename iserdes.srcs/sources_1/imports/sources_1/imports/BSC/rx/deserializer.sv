module deserializer (
    input logic clk,
    input logic clkdiv,
    input logic oclk,
    input logic rst,
    input logic datain,
    output logic [4 - 1 : 0] dataout
);
        logic [4 - 1 : 0] iserdes_out;
        logic comb_out;
        ISERDESE2 #(
            .DATA_RATE                  ("DDR"),
            .DATA_WIDTH                 (4),
            .DYN_CLKDIV_INV_EN          ("FALSE"),
            .DYN_CLK_INV_EN             ("FALSE"),
            .INIT_Q1                    (1'b0),
            .INIT_Q2                    (1'b0),
            .INIT_Q3                    (1'b0),
            .INIT_Q4                    (1'b0),
            
            .INTERFACE_TYPE             ("MEMORY"),
            //.NUM_CE                     (1),
            .IOBDELAY                   ("IFD"),
            
            .OFB_USED                   ("FALSE"),
            .SERDES_MODE                ("MASTER"),
            .SRVAL_Q1                   (1'b0),
            .SRVAL_Q2                   (1'b0),
            .SRVAL_Q3                   (1'b0),
            .SRVAL_Q4                   (1'b0)
            
        )
        iserdes_i
        (
            .O                          (),
            .Q1                         (iserdes_out[3]),
            .Q2                         (iserdes_out[2]),
            .Q3                         (iserdes_out[1]),
            .Q4                         (iserdes_out[0]),
            .Q5                         (),
            .Q6                         (),
            .Q7                         (),
            .Q8                         (),
            .SHIFTOUT1                  (),
            .SHIFTOUT2                  (),
            .BITSLIP                    (1'b0),
            .CE1                        (1'b1),
            .CE2                        (1'b1),
            .CLK                        (clk),
            .CLKB                       (!clk),
            .CLKDIVP                    (1'b0), // used with phasers, source-sync
            .CLKDIV                     (clkdiv),
            .DDLY                       (datain), // TODO
            .D                          (1'b0), // direct connection to IOB bypassing idelay
            .DYNCLKDIVSEL               (1'b0),
            .DYNCLKSEL                  (1'b0),
            .OCLK                       (oclk),
            .OCLKB                      (~oclk),
            .OFB                        (),
            .RST                        (rst),
            .SHIFTIN1                   (1'b0),
            .SHIFTIN2                   (1'b0)
        );
//     IDDR #(
//         .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE", "SAME_EDGE"
//                                         //    or "SAME_EDGE_PIPELINED"
//         .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
//         .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
//         .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC"
//     ) IDDR_inst (
//         .Q1(Q1), // 1-bit output for positive edge of clock
//         .Q2(Q2), // 1-bit output for negative edge of clock
//         .C(clk),   // 1-bit clock input
//         .CE(1'b1), // 1-bit clock enable input
//         .D(datain),   // 1-bit DDR data input
//         .R(rst),   // 1-bit reset
//         .S(1'b0)    // 1-bit set
//     );

//     always_ff @(posedge oclk) begin
//         iserdes_out[3:2] <= iserdes_out[1:0];
//         iserdes_out[1:0] <= {Q2, Q1};
//     end
    assign dataout = iserdes_out;
endmodule