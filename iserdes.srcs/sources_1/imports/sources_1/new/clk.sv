`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 12:01:10 PM
// Design Name: 
// Module Name: clk
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


module clk  #(
        parameter MULT = 10,
        parameter CLKOUT1_DIVIDE = 10,
        parameter CLKOUT2_DIVIDE = 10,
        parameter CLKOUT3_DIVIDE = 10,
        parameter CLKOUT4_DIVIDE = 10,
        parameter CLKOUT5_DIVIDE = 10,
        parameter CLKOUT6_DIVIDE = 10,
        parameter CLKOUT0_DIVIDE = 10
    )(
        input logic clkin,
        output logic clk_fast_0, clk_fast_90, clk_div_0, clk_div_90, clk_ref,
        output logic pll_locked
    );
    
    
    wire clkfb;

    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
        .CLKFBOUT_MULT_F(MULT),     // Multiply value for all CLKOUT (2.000-64.000).
        .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
        .CLKIN1_PERIOD(10),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
        // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
        .CLKOUT1_DIVIDE(CLKOUT1_DIVIDE),
        .CLKOUT2_DIVIDE(CLKOUT2_DIVIDE),
        .CLKOUT3_DIVIDE(CLKOUT3_DIVIDE),
        .CLKOUT4_DIVIDE(CLKOUT4_DIVIDE),
        .CLKOUT5_DIVIDE(CLKOUT5_DIVIDE),
        .CLKOUT6_DIVIDE(CLKOUT6_DIVIDE),
        .CLKOUT0_DIVIDE_F(CLKOUT0_DIVIDE),    // Divide amount for CLKOUT0 (1.000-128.000).
        // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
        .CLKOUT0_DUTY_CYCLE(0.5),
        .CLKOUT1_DUTY_CYCLE(0.5),
        .CLKOUT2_DUTY_CYCLE(0.5),
        .CLKOUT3_DUTY_CYCLE(0.5),
        .CLKOUT4_DUTY_CYCLE(0.5),
        .CLKOUT5_DUTY_CYCLE(0.5),
        .CLKOUT6_DUTY_CYCLE(),
        // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
        .CLKOUT0_PHASE(0.0),
        .CLKOUT1_PHASE(0.0),
        .CLKOUT2_PHASE(90.0),
        .CLKOUT3_PHASE(0.0),
        .CLKOUT4_PHASE(45.0),
        .CLKOUT5_PHASE(0.0),
        .CLKOUT6_PHASE(),
        .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
        .DIVCLK_DIVIDE(1),         // Master division value (1-106)
        .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
        .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
    )
    MMCME2_BASE_inst (
        // Clock Outputs: 1-bit (each) output: User configurable clock outputs
        .CLKOUT0(),     // 1-bit output: CLKOUT0
        .CLKOUT0B(),   // 1-bit output: Inverted CLKOUT0
        
        .CLKOUT1(clk_fast_0),     // 1-bit output: CLKOUT1
        .CLKOUT1B(),   // 1-bit output: Inverted CLKOUT1
        
        .CLKOUT2(clk_fast_90),     // 1-bit output: CLKOUT2
        .CLKOUT2B(),   // 1-bit output: Inverted CLKOUT2
        
        .CLKOUT3(clk_div_0),     // 1-bit output: CLKOUT3
        .CLKOUT3B(),   // 1-bit output: Inverted CLKOUT3
        
        .CLKOUT4(clk_div_90),     // 1-bit output: CLKOUT4
        
        .CLKOUT5(clk_ref),     // 1-bit output: CLKOUT5
        
        .CLKOUT6(),     // 1-bit output: CLKOUT6
        // Feedback Clocks: 1-bit (each) output: Clock feedback ports
        .CLKFBOUT(clkfb),   // 1-bit output: Feedback clock
        .CLKFBOUTB(), // 1-bit output: Inverted CLKFBOUT
        // Status Ports: 1-bit (each) output: MMCM status ports
        .LOCKED(pll_locked),       // 1-bit output: LOCK
        // Clock Inputs: 1-bit (each) input: Clock input
        .CLKIN1(clkin),       // 1-bit input: Clock
        // Control Ports: 1-bit (each) input: MMCM control ports
        .PWRDWN(1'b0),       // 1-bit input: Power-down
        .RST(1'b0),             // 1-bit input: Reset
        // Feedback Clocks: 1-bit (each) input: Clock feedback ports
        .CLKFBIN(clkfb)      // 1-bit input: Feedback clock
    );

endmodule
