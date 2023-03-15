module delay
#(
    parameter TAPS,
    parameter TYPE,
    parameter SIGNAL_PATTERN
)
(
    input logic clk,
    input logic rst,
    input logic din,
    
    input logic [4 : 0] taps,
    input logic ce,

    input logic inc,
    input logic ld,

    output logic dout
);
    (* IODELAY_GROUP = "IODELAY_MEMORY" *) 
    IDELAYE2 #(
       .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
       .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
       .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
       .IDELAY_TYPE(TYPE),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
       .IDELAY_VALUE(TAPS),                // Input delay tap setting (0-31)
       .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
       .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
       .SIGNAL_PATTERN(SIGNAL_PATTERN)          // DATA, CLOCK input signal
    )
    IDELAYE2_inst (
       .CNTVALUEOUT(), // 5-bit output: Counter value output
       .DATAOUT(dout),         // 1-bit output: Delayed data output
       .C(clk),                     // 1-bit input: Clock input
       .CE(ce),                   // 1-bit input: Active high enable increment/decrement input
       .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
       .CNTVALUEIN(taps),   // 5-bit input: Counter value input
       .DATAIN(1'b0),           // 1-bit input: Internal delay data input
       .IDATAIN(din),         // 1-bit input: Data input from the I/O
       .INC(inc),                 // 1-bit input: Increment / Decrement tap delay input
       .LD(ld),                   // 1-bit input: Load IDELAY_VALUE input
       .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
       .REGRST(rst)            // 1-bit input: Active-high reset tap-delay input
    );
    
endmodule
