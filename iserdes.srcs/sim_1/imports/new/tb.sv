`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 12:46:31 PM
// Design Name: 
// Module Name: tb
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


module tb(

    );
    
    logic clk_100;
    initial begin
        clk_100 = 1;
        forever #5 clk_100 = ~clk_100;
    end
    
    logic clk;
    initial begin
        clk = 1;
        forever #1.5 clk = ~clk;
    end
    
    
    wire ddr3_dqs_n, ddr3_dqs_p, ddr3_dq;
    logic dqs_ld, dq_ld;
    logic [4 : 0] dqs_taps, dq_taps;
    logic [3 : 0] data;
    top uut(
        .CLK100MHZ(clk_100),
        .ja({dqs_taps, dqs_ld}),
        .jb({dq_taps, dq_ld}),
        .jd(data),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p)
    );
    
    int i;
    initial begin

    end
    
    
    
    logic dqs_p, dqs_n;
//    initial begin
//        dqs = 1;
//        forever #1.5 dqs = ~dqs;
//    end
    logic dq;
    logic[3 : 0] DQ = 4'h9;
    integer i_dq_taps, i_dqs_taps;
    initial begin
    
        dqs_ld = 1'b0;
        dq_ld = 1'b0;
        dqs_taps = 5'd15;
        dq_taps = 5'd10;
            for(i = 0; i < 150 * 5; i = i + 1) begin
                wait(clk == 1'b1);
                wait(clk == 1'b0);
            end
        dqs_ld = 1'b1;
        dq_ld = 1'b1;
            wait(clk == 1'b1);
            wait(clk == 1'b0);
            wait(clk == 1'b1);
            wait(clk == 1'b0);
        dqs_ld = 1'b0;
        dq_ld = 1'b0;
    
        dq = 1'b0;
        dqs_p = 1'bZ;
        dqs_n = 1'bZ;
        
        for(i_dq_taps = 0; i_dq_taps < 32; i_dq_taps = i_dq_taps + 1) begin
            for(i_dqs_taps = 0; i_dqs_taps < 32; i_dqs_taps = i_dqs_taps + 1) begin
                for(i = 0; i < 5 * 5; i = i + 1) begin
                    wait(clk == 1'b1);
                    wait(clk == 1'b0);
                end
                        wait(clk == 1'b1);
                    dqs_p = 1'b0;
                    dqs_n = 1'b1;
                        wait(clk == 1'b0);
                    dqs_p = 1'b0;
                    dqs_n = 1'b1;
                        wait(clk == 1'b1);
                    dqs_p = 1'b1;
                    dqs_n = 1'b0;
                dq = DQ[0];
                        wait(clk == 1'b0);
                    dqs_p = 1'b0;
                    dqs_n = 1'b1;
                dq = DQ[1];
                        wait(clk == 1'b1);
                    dqs_p = 1'b1;
                    dqs_n = 1'b0;
                dq = DQ[2];
                        wait(clk == 1'b0);
                    dqs_p = 1'b0;
                    dqs_n = 1'b1;
                dq = DQ[3];
                        wait(clk == 1'b1);
                    dqs_p = 1'bZ;
                    dqs_n = 1'bZ;
                dq = 1'bZ;
                
                
                dqs_ld = 1'b0;
                dq_ld = 1'b0;
                dqs_taps = i_dqs_taps;
                dq_taps = i_dq_taps;
                    wait(clk == 1'b1);
                    wait(clk == 1'b0);
                    wait(clk == 1'b1);
                    wait(clk == 1'b0); 
                dqs_ld = 1'b1;
                dq_ld = 1'b1;
                    wait(clk == 1'b1);
                    wait(clk == 1'b0);
                    wait(clk == 1'b1);
                    wait(clk == 1'b0);
                dqs_ld = 1'b0;
                dq_ld = 1'b0;
            end
         end
         $stop;
    end
    assign ddr3_dqs_p = dqs_p;
    assign ddr3_dqs_n = dqs_n;
    assign ddr3_dq = dq;
endmodule
