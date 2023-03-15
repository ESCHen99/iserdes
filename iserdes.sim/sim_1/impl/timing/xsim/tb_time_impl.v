// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 15 16:06:01 2023
// Host        : DESKTOP-AAHUPRO running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/weiji/Desktop/DDR3_vivado/iserdes/iserdes.sim/sim_1/impl/timing/xsim/tb_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUFDS_UNIQ_BASE_
   (IO,
    IOB,
    O,
    I,
    T);
  inout IO;
  inout IOB;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire IOB;
  wire O;
  wire T;

  IBUFDS IBUFDS
       (.I(IO),
        .IB(IOB),
        .O(O));
  (* XILINX_LEGACY_PRIM = "OBUFTDS" *) 
  (* XILINX_REPORT_XFORM = "OBUFTDS" *) 
  OBUFTDS_DUAL_BUF_UNIQ_BASE_ OBUFTDS
       (.I(I),
        .O(IO),
        .OB(IOB),
        .T(T));
endmodule

module OBUFTDS_DUAL_BUF_UNIQ_BASE_
   (O,
    OB,
    I,
    T);
  output O;
  output OB;
  input I;
  input T;

  wire I;
  wire I_B;
  wire O;
  wire OB;
  wire T;
  wire NLW_N_OB_UNCONNECTED;
  wire NLW_P_OB_UNCONNECTED;

  INV INV
       (.I(I),
        .O(I_B));
  OBUFTDS N
       (.I(I_B),
        .O(OB),
        .OB(NLW_N_OB_UNCONNECTED),
        .T(T));
  OBUFTDS P
       (.I(I),
        .O(O),
        .OB(NLW_P_OB_UNCONNECTED),
        .T(T));
endmodule

module clk
   (clk_fast_90,
    clk_div_90,
    OCLKB0,
    CLK100MHZ_IBUF);
  output clk_fast_90;
  output clk_div_90;
  output OCLKB0;
  input CLK100MHZ_IBUF;

  wire CLK100MHZ_IBUF;
  wire \^clk_div_90 ;
  wire clk_div_90_BUFG;
  wire \^clk_fast_90 ;
  wire clk_fast_90_BUFG;
  wire clkfb;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

  assign OCLKB0 = clk_fast_90_BUFG;
  assign clk_div_90 = clk_div_90_BUFG;
  assign clk_fast_90 = clk_fast_90_BUFG;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "SWEEP BUFG_OPT" *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(3),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(3),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(90.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(6),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(6),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(45.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(10),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(10),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    MMCME2_BASE_inst
       (.CLKFBIN(clkfb),
        .CLKFBOUT(clkfb),
        .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(CLK100MHZ_IBUF),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(NLW_MMCME2_BASE_inst_CLKOUT0_UNCONNECTED),
        .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(\^clk_fast_90 ),
        .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(\^clk_div_90 ),
        .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG clk_div_90_BUFG_inst
       (.I(\^clk_div_90 ),
        .O(clk_div_90_BUFG));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG clk_fast_90_BUFG_inst
       (.I(\^clk_fast_90 ),
        .O(clk_fast_90_BUFG));
endmodule

(* ORIG_REF_NAME = "clk" *) 
module clk__parameterized0
   (clk_ref,
    CLK100MHZ_IBUF);
  output clk_ref;
  input CLK100MHZ_IBUF;

  wire CLK100MHZ_IBUF;
  wire \^clk_ref ;
  wire clk_ref_BUFG;
  wire clkfb;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

  assign clk_ref = clk_ref_BUFG;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "SWEEP BUFG_OPT" *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(6.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(3.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(3),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(3),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(90.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(3),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(3),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(45.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(3),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(3),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    MMCME2_BASE_inst
       (.CLKFBIN(clkfb),
        .CLKFBOUT(clkfb),
        .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(CLK100MHZ_IBUF),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(NLW_MMCME2_BASE_inst_CLKOUT0_UNCONNECTED),
        .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(\^clk_ref ),
        .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG clk_ref_BUFG_inst
       (.I(\^clk_ref ),
        .O(clk_ref_BUFG));
endmodule

module delay
   (dqs_delay,
    clk_fast_90,
    read_dqs,
    ja_IBUF);
  output dqs_delay;
  input clk_fast_90;
  input read_dqs;
  input [5:0]ja_IBUF;

  wire clk_fast_90;
  wire dqs_delay;
  wire [5:0]ja_IBUF;
  wire read_dqs;
  wire [4:0]NLW_IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "IODELAY_MEMORY" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(10),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("CLOCK"),
    .SIM_DELAY_D(815)) 
    IDELAYE2_inst
       (.C(clk_fast_90),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(ja_IBUF[5:1]),
        .CNTVALUEOUT(NLW_IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(dqs_delay),
        .IDATAIN(read_dqs),
        .INC(1'b0),
        .LD(ja_IBUF[0]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module delay__parameterized0
   (dq_delay,
    clk_fast_90,
    read_dq,
    jb_IBUF);
  output dq_delay;
  input clk_fast_90;
  input read_dq;
  input [5:0]jb_IBUF;

  wire clk_fast_90;
  wire dq_delay;
  wire [5:0]jb_IBUF;
  wire read_dq;
  wire [4:0]NLW_IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "IODELAY_MEMORY" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA"),
    .SIM_DELAY_D(815)) 
    IDELAYE2_inst
       (.C(clk_fast_90),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(jb_IBUF[5:1]),
        .CNTVALUEOUT(NLW_IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(dq_delay),
        .IDATAIN(read_dq),
        .INC(1'b0),
        .LD(jb_IBUF[0]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

module deserializer
   (jd_OBUF,
    dqs_delay,
    CLKB0,
    clk_div_90,
    dq_delay,
    clk_fast_90,
    OCLKB0);
  output [3:0]jd_OBUF;
  input dqs_delay;
  input CLKB0;
  input clk_div_90;
  input dq_delay;
  input clk_fast_90;
  input OCLKB0;

  wire CLKB0;
  wire OCLKB0;
  wire clk_div_90;
  wire clk_fast_90;
  wire dq_delay;
  wire dqs_delay;
  wire [3:0]jd_OBUF;
  wire NLW_iserdes_i_O_UNCONNECTED;
  wire NLW_iserdes_i_OFB_UNCONNECTED;
  wire NLW_iserdes_i_Q5_UNCONNECTED;
  wire NLW_iserdes_i_Q6_UNCONNECTED;
  wire NLW_iserdes_i_Q7_UNCONNECTED;
  wire NLW_iserdes_i_Q8_UNCONNECTED;
  wire NLW_iserdes_i_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes_i_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(4),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("MEMORY"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b1),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes_i
       (.BITSLIP(1'b0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(dqs_delay),
        .CLKB(CLKB0),
        .CLKDIV(clk_div_90),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(dq_delay),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes_i_O_UNCONNECTED),
        .OCLK(clk_fast_90),
        .OCLKB(OCLKB0),
        .OFB(NLW_iserdes_i_OFB_UNCONNECTED),
        .Q1(jd_OBUF[3]),
        .Q2(jd_OBUF[2]),
        .Q3(jd_OBUF[1]),
        .Q4(jd_OBUF[0]),
        .Q5(NLW_iserdes_i_Q5_UNCONNECTED),
        .Q6(NLW_iserdes_i_Q6_UNCONNECTED),
        .Q7(NLW_iserdes_i_Q7_UNCONNECTED),
        .Q8(NLW_iserdes_i_Q8_UNCONNECTED),
        .RST(1'b0),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes_i_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes_i_SHIFTOUT2_UNCONNECTED));
endmodule

module rd_single
   (jd_OBUF,
    dqs_delay,
    CLKB0,
    clk_div_90,
    dq_delay,
    clk_fast_90,
    OCLKB0);
  output [3:0]jd_OBUF;
  input dqs_delay;
  input CLKB0;
  input clk_div_90;
  input dq_delay;
  input clk_fast_90;
  input OCLKB0;

  wire CLKB0;
  wire OCLKB0;
  wire clk_div_90;
  wire clk_fast_90;
  wire dq_delay;
  wire dqs_delay;
  wire [3:0]jd_OBUF;

  deserializer des
       (.CLKB0(CLKB0),
        .OCLKB0(OCLKB0),
        .clk_div_90(clk_div_90),
        .clk_fast_90(clk_fast_90),
        .dq_delay(dq_delay),
        .dqs_delay(dqs_delay),
        .jd_OBUF(jd_OBUF));
endmodule

(* ECO_CHECKSUM = "6b31913" *) 
(* NotValidForBitStream *)
module top
   (CLK100MHZ,
    ja,
    jb,
    jc,
    jd,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p);
  input CLK100MHZ;
  input [5:0]ja;
  input [5:0]jb;
  output [5:0]jc;
  output [5:0]jd;
  inout [0:0]ddr3_dq;
  inout [0:0]ddr3_dqs_n;
  inout [0:0]ddr3_dqs_p;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire clk_div_90;
  wire clk_fast_90;
  wire clk_ref;
  (* IBUF_LOW_PWR *) (* SLEW = "FAST" *) wire [0:0]ddr3_dq;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* SLEW = "FAST" *) wire [0:0]ddr3_dqs_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* SLEW = "FAST" *) wire [0:0]ddr3_dqs_p;
  wire \des/OCLKB0 ;
  wire dq_delay;
  wire dqs_delay;
  wire [5:0]ja;
  wire [5:0]ja_IBUF;
  wire [5:0]jb;
  wire [5:0]jb_IBUF;
  wire [5:0]jc;
  wire [5:0]jd;
  wire [3:0]jd_OBUF;
  wire read_dq;
  wire read_dqs;
  wire NLW_IDELAYCTRL_inst_RDY_UNCONNECTED;

initial begin
 $sdf_annotate("tb_time_impl.sdf",,,,"tool_control");
end
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOSTANDARD = "DEFAULT" *) 
  IOBUFDS_UNIQ_BASE_ DQS_BUF
       (.I(1'b0),
        .IO(ddr3_dqs_p),
        .IOB(ddr3_dqs_n),
        .O(read_dqs),
        .T(1'b1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "IODELAY_MEMORY" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDELAYCTRL_inst
       (.RDY(NLW_IDELAYCTRL_inst_RDY_UNCONNECTED),
        .REFCLK(clk_ref),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IOSTANDARD = "DEFAULT" *) 
  IOBUF_UNIQ_BASE_ IOBUF_DQ
       (.I(1'b0),
        .IO(ddr3_dq),
        .O(read_dq),
        .T(1'b1));
  clk clk_gen
       (.CLK100MHZ_IBUF(CLK100MHZ_IBUF),
        .OCLKB0(\des/OCLKB0 ),
        .clk_div_90(clk_div_90),
        .clk_fast_90(clk_fast_90));
  clk__parameterized0 clk_ref_gen
       (.CLK100MHZ_IBUF(CLK100MHZ_IBUF),
        .clk_ref(clk_ref));
  delay__parameterized0 dq_delay_module
       (.clk_fast_90(clk_fast_90),
        .dq_delay(dq_delay),
        .jb_IBUF(jb_IBUF),
        .read_dq(read_dq));
  delay dqs_delay_module_0
       (.clk_fast_90(clk_fast_90),
        .dqs_delay(dqs_delay),
        .ja_IBUF(ja_IBUF),
        .read_dqs(read_dqs));
  IBUF \ja_IBUF[0]_inst 
       (.I(ja[0]),
        .O(ja_IBUF[0]));
  IBUF \ja_IBUF[1]_inst 
       (.I(ja[1]),
        .O(ja_IBUF[1]));
  IBUF \ja_IBUF[2]_inst 
       (.I(ja[2]),
        .O(ja_IBUF[2]));
  IBUF \ja_IBUF[3]_inst 
       (.I(ja[3]),
        .O(ja_IBUF[3]));
  IBUF \ja_IBUF[4]_inst 
       (.I(ja[4]),
        .O(ja_IBUF[4]));
  IBUF \ja_IBUF[5]_inst 
       (.I(ja[5]),
        .O(ja_IBUF[5]));
  IBUF \jb_IBUF[0]_inst 
       (.I(jb[0]),
        .O(jb_IBUF[0]));
  IBUF \jb_IBUF[1]_inst 
       (.I(jb[1]),
        .O(jb_IBUF[1]));
  IBUF \jb_IBUF[2]_inst 
       (.I(jb[2]),
        .O(jb_IBUF[2]));
  IBUF \jb_IBUF[3]_inst 
       (.I(jb[3]),
        .O(jb_IBUF[3]));
  IBUF \jb_IBUF[4]_inst 
       (.I(jb[4]),
        .O(jb_IBUF[4]));
  IBUF \jb_IBUF[5]_inst 
       (.I(jb[5]),
        .O(jb_IBUF[5]));
  OBUFT \jc_OBUF[0]_inst 
       (.I(1'b0),
        .O(jc[0]),
        .T(1'b1));
  OBUFT \jc_OBUF[1]_inst 
       (.I(1'b0),
        .O(jc[1]),
        .T(1'b1));
  OBUFT \jc_OBUF[2]_inst 
       (.I(1'b0),
        .O(jc[2]),
        .T(1'b1));
  OBUFT \jc_OBUF[3]_inst 
       (.I(1'b0),
        .O(jc[3]),
        .T(1'b1));
  OBUFT \jc_OBUF[4]_inst 
       (.I(1'b0),
        .O(jc[4]),
        .T(1'b1));
  OBUFT \jc_OBUF[5]_inst 
       (.I(1'b0),
        .O(jc[5]),
        .T(1'b1));
  OBUF \jd_OBUF[0]_inst 
       (.I(jd_OBUF[0]),
        .O(jd[0]));
  OBUF \jd_OBUF[1]_inst 
       (.I(jd_OBUF[1]),
        .O(jd[1]));
  OBUF \jd_OBUF[2]_inst 
       (.I(jd_OBUF[2]),
        .O(jd[2]));
  OBUF \jd_OBUF[3]_inst 
       (.I(jd_OBUF[3]),
        .O(jd[3]));
  OBUFT \jd_OBUF[4]_inst 
       (.I(1'b0),
        .O(jd[4]),
        .T(1'b1));
  OBUFT \jd_OBUF[5]_inst 
       (.I(1'b0),
        .O(jd[5]),
        .T(1'b1));
  rd_single rd
       (.CLKB0(dqs_delay),
        .OCLKB0(\des/OCLKB0 ),
        .clk_div_90(clk_div_90),
        .clk_fast_90(clk_fast_90),
        .dq_delay(dq_delay),
        .dqs_delay(dqs_delay),
        .jd_OBUF(jd_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
