// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May 23 11:10:32 2024
// Host        : Ilie running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/ilieb/Projects/ProjectFull2/ProjectFull2.sim/sim_1/impl/func/xsim/Project2_func_impl.v
// Design      : Project2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "f4705b7d" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Project2
   (sign,
    Number,
    Clock,
    Operation,
    Clear,
    Equal,
    EnableOperation,
    Start,
    Cat,
    An);
  input sign;
  input [3:0]Number;
  input Clock;
  input [1:0]Operation;
  input Clear;
  input Equal;
  input EnableOperation;
  input Start;
  output [6:0]Cat;
  output [7:0]An;

  wire [7:0]An;
  wire [7:0]An_OBUF;
  wire [6:0]Cat;
  wire [6:0]Cat_OBUF;
  wire Clear;
  wire Clear_IBUF;
  wire Clock;
  wire Clock_IBUF;
  wire Clock_IBUF_BUFG;
  wire EnableOperation;
  wire EnableOperation_IBUF;
  wire [3:0]Number;
  wire [3:0]Number_IBUF;
  wire [1:0]Operation;
  wire [1:0]Operation_IBUF;
  wire [3:0]Register1;
  wire \Register1_reg[3]_i_1_n_0 ;
  wire [3:0]Register2;
  wire \Register2_reg[3]_i_1_n_0 ;
  wire [3:0]Register3;
  wire \Register3_reg[3]_i_1_n_0 ;
  wire [3:0]Register4;
  wire \Register4_reg[3]_i_1_n_0 ;
  wire [3:0]Register5;
  wire \Register5_reg[3]_i_1_n_0 ;
  wire [3:0]Register6;
  wire \Register6_reg[3]_i_1_n_0 ;
  wire p_0_in;
  wire [1:0]tmp2;
  wire \tmp2[0]_i_1__0_n_0 ;
  wire \tmp2[1]_i_1__0_n_0 ;
  wire \tmp[0]_i_1__0_n_0 ;
  wire \tmp[1]_i_1__0_n_0 ;
  wire \tmp_reg_n_0_[0] ;
  wire \tmp_reg_n_0_[1] ;

  OBUF \An_OBUF[0]_inst 
       (.I(An_OBUF[0]),
        .O(An[0]));
  OBUF \An_OBUF[1]_inst 
       (.I(An_OBUF[1]),
        .O(An[1]));
  OBUF \An_OBUF[2]_inst 
       (.I(An_OBUF[2]),
        .O(An[2]));
  OBUF \An_OBUF[3]_inst 
       (.I(1'b1),
        .O(An[3]));
  OBUF \An_OBUF[4]_inst 
       (.I(An_OBUF[4]),
        .O(An[4]));
  OBUF \An_OBUF[5]_inst 
       (.I(An_OBUF[5]),
        .O(An[5]));
  OBUF \An_OBUF[6]_inst 
       (.I(An_OBUF[6]),
        .O(An[6]));
  OBUF \An_OBUF[7]_inst 
       (.I(An_OBUF[7]),
        .O(An[7]));
  OBUF \Cat_OBUF[0]_inst 
       (.I(Cat_OBUF[0]),
        .O(Cat[0]));
  OBUF \Cat_OBUF[1]_inst 
       (.I(Cat_OBUF[1]),
        .O(Cat[1]));
  OBUF \Cat_OBUF[2]_inst 
       (.I(Cat_OBUF[2]),
        .O(Cat[2]));
  OBUF \Cat_OBUF[3]_inst 
       (.I(Cat_OBUF[3]),
        .O(Cat[3]));
  OBUF \Cat_OBUF[4]_inst 
       (.I(Cat_OBUF[4]),
        .O(Cat[4]));
  OBUF \Cat_OBUF[5]_inst 
       (.I(Cat_OBUF[5]),
        .O(Cat[5]));
  OBUF \Cat_OBUF[6]_inst 
       (.I(Cat_OBUF[6]),
        .O(Cat[6]));
  IBUF Clear_IBUF_inst
       (.I(Clear),
        .O(Clear_IBUF));
  BUFG Clock_IBUF_BUFG_inst
       (.I(Clock_IBUF),
        .O(Clock_IBUF_BUFG));
  IBUF Clock_IBUF_inst
       (.I(Clock),
        .O(Clock_IBUF));
  IBUF EnableOperation_IBUF_inst
       (.I(EnableOperation),
        .O(EnableOperation_IBUF));
  IBUF \Number_IBUF[0]_inst 
       (.I(Number[0]),
        .O(Number_IBUF[0]));
  IBUF \Number_IBUF[1]_inst 
       (.I(Number[1]),
        .O(Number_IBUF[1]));
  IBUF \Number_IBUF[2]_inst 
       (.I(Number[2]),
        .O(Number_IBUF[2]));
  IBUF \Number_IBUF[3]_inst 
       (.I(Number[3]),
        .O(Number_IBUF[3]));
  IBUF \Operation_IBUF[0]_inst 
       (.I(Operation[0]),
        .O(Operation_IBUF[0]));
  IBUF \Operation_IBUF[1]_inst 
       (.I(Operation[1]),
        .O(Operation_IBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register1_reg[0] 
       (.CLR(1'b0),
        .D(Number_IBUF[0]),
        .G(\Register1_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register1[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register1_reg[1] 
       (.CLR(1'b0),
        .D(Number_IBUF[1]),
        .G(\Register1_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register1[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register1_reg[2] 
       (.CLR(1'b0),
        .D(Number_IBUF[2]),
        .G(\Register1_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register1[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register1_reg[3] 
       (.CLR(1'b0),
        .D(Number_IBUF[3]),
        .G(\Register1_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register1[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Register1_reg[3]_i_1 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .O(\Register1_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register2_reg[0] 
       (.CLR(1'b0),
        .D(Number_IBUF[0]),
        .G(\Register2_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register2_reg[1] 
       (.CLR(1'b0),
        .D(Number_IBUF[1]),
        .G(\Register2_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register2_reg[2] 
       (.CLR(1'b0),
        .D(Number_IBUF[2]),
        .G(\Register2_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register2_reg[3] 
       (.CLR(1'b0),
        .D(Number_IBUF[3]),
        .G(\Register2_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register2[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Register2_reg[3]_i_1 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\Register2_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register3_reg[0] 
       (.CLR(1'b0),
        .D(Number_IBUF[0]),
        .G(\Register3_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register3[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register3_reg[1] 
       (.CLR(1'b0),
        .D(Number_IBUF[1]),
        .G(\Register3_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register3[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register3_reg[2] 
       (.CLR(1'b0),
        .D(Number_IBUF[2]),
        .G(\Register3_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register3[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register3_reg[3] 
       (.CLR(1'b0),
        .D(Number_IBUF[3]),
        .G(\Register3_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register3[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Register3_reg[3]_i_1 
       (.I0(\tmp_reg_n_0_[1] ),
        .I1(\tmp_reg_n_0_[0] ),
        .O(\Register3_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register4_reg[0] 
       (.CLR(1'b0),
        .D(Number_IBUF[0]),
        .G(\Register4_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register4[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register4_reg[1] 
       (.CLR(1'b0),
        .D(Number_IBUF[1]),
        .G(\Register4_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register4[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register4_reg[2] 
       (.CLR(1'b0),
        .D(Number_IBUF[2]),
        .G(\Register4_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register4[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register4_reg[3] 
       (.CLR(1'b0),
        .D(Number_IBUF[3]),
        .G(\Register4_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register4[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Register4_reg[3]_i_1 
       (.I0(tmp2[1]),
        .I1(tmp2[0]),
        .O(\Register4_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register5_reg[0] 
       (.CLR(1'b0),
        .D(Number_IBUF[0]),
        .G(\Register5_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register5[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register5_reg[1] 
       (.CLR(1'b0),
        .D(Number_IBUF[1]),
        .G(\Register5_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register5[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register5_reg[2] 
       (.CLR(1'b0),
        .D(Number_IBUF[2]),
        .G(\Register5_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register5[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register5_reg[3] 
       (.CLR(1'b0),
        .D(Number_IBUF[3]),
        .G(\Register5_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register5[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Register5_reg[3]_i_1 
       (.I0(tmp2[0]),
        .I1(tmp2[1]),
        .O(\Register5_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register6_reg[0] 
       (.CLR(1'b0),
        .D(Number_IBUF[0]),
        .G(\Register6_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register6[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register6_reg[1] 
       (.CLR(1'b0),
        .D(Number_IBUF[1]),
        .G(\Register6_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register6[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register6_reg[2] 
       (.CLR(1'b0),
        .D(Number_IBUF[2]),
        .G(\Register6_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register6[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Register6_reg[3] 
       (.CLR(1'b0),
        .D(Number_IBUF[3]),
        .G(\Register6_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(Register6[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Register6_reg[3]_i_1 
       (.I0(tmp2[1]),
        .I1(tmp2[0]),
        .O(\Register6_reg[3]_i_1_n_0 ));
  SSD SSD_inst
       (.AR(Clear_IBUF),
        .CLK(Clock_IBUF_BUFG),
        .Cat_OBUF(Cat_OBUF),
        .E(p_0_in),
        .EnableOperation_IBUF(EnableOperation_IBUF),
        .Operation_IBUF(Operation_IBUF),
        .Q({An_OBUF[7:4],An_OBUF[2:0]}),
        .\selected_digit_reg[3]_i_1_0 (Register4),
        .\selected_digit_reg[3]_i_1_1 (Register6),
        .\selected_digit_reg[3]_i_1_2 (Register5),
        .\selected_digit_reg[3]_i_1_3 (Register3),
        .\selected_digit_reg[3]_i_1_4 (Register2),
        .\selected_digit_reg[3]_i_1_5 (Register1));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp2[0]_i_1__0 
       (.I0(tmp2[0]),
        .O(\tmp2[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp2[1]_i_1__0 
       (.I0(tmp2[0]),
        .I1(tmp2[1]),
        .O(\tmp2[1]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp2_reg[0] 
       (.C(Clock_IBUF_BUFG),
        .CE(EnableOperation_IBUF),
        .CLR(Clear_IBUF),
        .D(\tmp2[0]_i_1__0_n_0 ),
        .Q(tmp2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp2_reg[1] 
       (.C(Clock_IBUF_BUFG),
        .CE(EnableOperation_IBUF),
        .CLR(Clear_IBUF),
        .D(\tmp2[1]_i_1__0_n_0 ),
        .Q(tmp2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp[0]_i_1__0 
       (.I0(\tmp_reg_n_0_[0] ),
        .O(\tmp[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[1]_i_1__0 
       (.I0(\tmp_reg_n_0_[0] ),
        .I1(\tmp_reg_n_0_[1] ),
        .O(\tmp[1]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(Clock_IBUF_BUFG),
        .CE(p_0_in),
        .CLR(Clear_IBUF),
        .D(\tmp[0]_i_1__0_n_0 ),
        .Q(\tmp_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(Clock_IBUF_BUFG),
        .CE(p_0_in),
        .CLR(Clear_IBUF),
        .D(\tmp[1]_i_1__0_n_0 ),
        .Q(\tmp_reg_n_0_[1] ));
endmodule

module SSD
   (E,
    Q,
    Cat_OBUF,
    EnableOperation_IBUF,
    CLK,
    AR,
    Operation_IBUF,
    \selected_digit_reg[3]_i_1_0 ,
    \selected_digit_reg[3]_i_1_1 ,
    \selected_digit_reg[3]_i_1_2 ,
    \selected_digit_reg[3]_i_1_3 ,
    \selected_digit_reg[3]_i_1_4 ,
    \selected_digit_reg[3]_i_1_5 );
  output [0:0]E;
  output [6:0]Q;
  output [6:0]Cat_OBUF;
  input EnableOperation_IBUF;
  input CLK;
  input [0:0]AR;
  input [1:0]Operation_IBUF;
  input [3:0]\selected_digit_reg[3]_i_1_0 ;
  input [3:0]\selected_digit_reg[3]_i_1_1 ;
  input [3:0]\selected_digit_reg[3]_i_1_2 ;
  input [3:0]\selected_digit_reg[3]_i_1_3 ;
  input [3:0]\selected_digit_reg[3]_i_1_4 ;
  input [3:0]\selected_digit_reg[3]_i_1_5 ;

  wire [0:0]AR;
  wire CLK;
  wire [6:0]Cat_OBUF;
  wire [0:0]E;
  wire EnableOperation_IBUF;
  wire [1:0]Operation_IBUF;
  wire [6:0]Q;
  wire \an1[2]_i_1_n_0 ;
  wire [7:0]p_0_out;
  wire [1:0]plusOp;
  wire [3:0]plusOp__0;
  wire [3:0]selected_digit;
  wire \selected_digit_reg[0]_i_1_n_0 ;
  wire \selected_digit_reg[0]_i_2_n_0 ;
  wire \selected_digit_reg[0]_i_3_n_0 ;
  wire \selected_digit_reg[1]_i_1_n_0 ;
  wire \selected_digit_reg[1]_i_2_n_0 ;
  wire \selected_digit_reg[1]_i_3_n_0 ;
  wire \selected_digit_reg[2]_i_1_n_0 ;
  wire \selected_digit_reg[2]_i_2_n_0 ;
  wire \selected_digit_reg[2]_i_3_n_0 ;
  wire [3:0]\selected_digit_reg[3]_i_1_0 ;
  wire [3:0]\selected_digit_reg[3]_i_1_1 ;
  wire [3:0]\selected_digit_reg[3]_i_1_2 ;
  wire [3:0]\selected_digit_reg[3]_i_1_3 ;
  wire [3:0]\selected_digit_reg[3]_i_1_4 ;
  wire [3:0]\selected_digit_reg[3]_i_1_5 ;
  wire \selected_digit_reg[3]_i_1_n_0 ;
  wire \selected_digit_reg[3]_i_2_n_0 ;
  wire \selected_digit_reg[3]_i_3_n_0 ;
  wire \selected_digit_reg[3]_i_4_n_0 ;
  wire [1:0]tmp;
  wire [3:3]tmp2_reg;
  wire [2:0]tmp2_reg__0;

  LUT6 #(
    .INIT(64'h3BB30000CCCC6666)) 
    \Cat_OBUF[0]_inst_i_1 
       (.I0(selected_digit[0]),
        .I1(selected_digit[2]),
        .I2(Operation_IBUF[0]),
        .I3(Operation_IBUF[1]),
        .I4(selected_digit[3]),
        .I5(selected_digit[1]),
        .O(Cat_OBUF[0]));
  LUT6 #(
    .INIT(64'hEFFFF0F000F0F000)) 
    \Cat_OBUF[1]_inst_i_1 
       (.I0(Operation_IBUF[1]),
        .I1(Operation_IBUF[0]),
        .I2(selected_digit[2]),
        .I3(selected_digit[0]),
        .I4(selected_digit[1]),
        .I5(selected_digit[3]),
        .O(Cat_OBUF[1]));
  LUT6 #(
    .INIT(64'hEFFFFF0000000F00)) 
    \Cat_OBUF[2]_inst_i_1 
       (.I0(Operation_IBUF[0]),
        .I1(Operation_IBUF[1]),
        .I2(selected_digit[0]),
        .I3(selected_digit[1]),
        .I4(selected_digit[2]),
        .I5(selected_digit[3]),
        .O(Cat_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h70CCCF30)) 
    \Cat_OBUF[3]_inst_i_1 
       (.I0(Operation_IBUF[1]),
        .I1(selected_digit[3]),
        .I2(selected_digit[0]),
        .I3(selected_digit[2]),
        .I4(selected_digit[1]),
        .O(Cat_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFCFC0)) 
    \Cat_OBUF[4]_inst_i_1 
       (.I0(Operation_IBUF[1]),
        .I1(selected_digit[3]),
        .I2(selected_digit[1]),
        .I3(selected_digit[2]),
        .I4(selected_digit[0]),
        .O(Cat_OBUF[4]));
  LUT5 #(
    .INIT(32'h7FC0F0FC)) 
    \Cat_OBUF[5]_inst_i_1 
       (.I0(Operation_IBUF[1]),
        .I1(selected_digit[0]),
        .I2(selected_digit[1]),
        .I3(selected_digit[3]),
        .I4(selected_digit[2]),
        .O(Cat_OBUF[5]));
  LUT6 #(
    .INIT(64'hDFF0F00F00F0F00F)) 
    \Cat_OBUF[6]_inst_i_1 
       (.I0(Operation_IBUF[0]),
        .I1(Operation_IBUF[1]),
        .I2(selected_digit[3]),
        .I3(selected_digit[2]),
        .I4(selected_digit[1]),
        .I5(selected_digit[0]),
        .O(Cat_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \an1[0]_i_1 
       (.I0(tmp[1]),
        .I1(tmp[0]),
        .I2(EnableOperation_IBUF),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \an1[1]_i_1 
       (.I0(tmp[0]),
        .I1(EnableOperation_IBUF),
        .I2(tmp[1]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \an1[2]_i_1 
       (.I0(tmp[0]),
        .I1(EnableOperation_IBUF),
        .I2(tmp[1]),
        .O(\an1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \an1[4]_i_1 
       (.I0(EnableOperation_IBUF),
        .I1(tmp2_reg__0[1]),
        .I2(tmp2_reg__0[0]),
        .I3(tmp2_reg),
        .I4(tmp2_reg__0[2]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \an1[5]_i_1 
       (.I0(tmp2_reg__0[0]),
        .I1(tmp2_reg__0[1]),
        .I2(tmp2_reg__0[2]),
        .I3(tmp2_reg),
        .I4(EnableOperation_IBUF),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \an1[6]_i_1 
       (.I0(tmp2_reg__0[1]),
        .I1(tmp2_reg__0[2]),
        .I2(tmp2_reg__0[0]),
        .I3(tmp2_reg),
        .I4(EnableOperation_IBUF),
        .O(p_0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \an1[7]_i_1 
       (.I0(tmp2_reg__0[2]),
        .I1(tmp2_reg),
        .I2(tmp2_reg__0[0]),
        .I3(tmp2_reg__0[1]),
        .I4(EnableOperation_IBUF),
        .O(p_0_out[7]));
  FDPE #(
    .INIT(1'b1)) 
    \an1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .PRE(AR),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \an1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .PRE(AR),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \an1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\an1[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \an1_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[4]),
        .PRE(AR),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \an1_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[5]),
        .PRE(AR),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \an1_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[6]),
        .PRE(AR),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \an1_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[7]),
        .PRE(AR),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selected_digit_reg[0] 
       (.CLR(1'b0),
        .D(\selected_digit_reg[0]_i_1_n_0 ),
        .G(\selected_digit_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(selected_digit[0]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \selected_digit_reg[0]_i_1 
       (.I0(\selected_digit_reg[0]_i_2_n_0 ),
        .I1(tmp2_reg),
        .I2(EnableOperation_IBUF),
        .I3(\selected_digit_reg[0]_i_3_n_0 ),
        .O(\selected_digit_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33332F2303032F23)) 
    \selected_digit_reg[0]_i_2 
       (.I0(\selected_digit_reg[3]_i_1_0 [0]),
        .I1(tmp2_reg__0[2]),
        .I2(tmp2_reg__0[1]),
        .I3(\selected_digit_reg[3]_i_1_1 [0]),
        .I4(tmp2_reg__0[0]),
        .I5(\selected_digit_reg[3]_i_1_2 [0]),
        .O(\selected_digit_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \selected_digit_reg[0]_i_3 
       (.I0(\selected_digit_reg[3]_i_1_3 [0]),
        .I1(tmp[0]),
        .I2(\selected_digit_reg[3]_i_1_4 [0]),
        .I3(\selected_digit_reg[3]_i_1_5 [0]),
        .I4(tmp[1]),
        .O(\selected_digit_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selected_digit_reg[1] 
       (.CLR(1'b0),
        .D(\selected_digit_reg[1]_i_1_n_0 ),
        .G(\selected_digit_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(selected_digit[1]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \selected_digit_reg[1]_i_1 
       (.I0(\selected_digit_reg[1]_i_2_n_0 ),
        .I1(tmp2_reg),
        .I2(EnableOperation_IBUF),
        .I3(\selected_digit_reg[1]_i_3_n_0 ),
        .O(\selected_digit_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33332F2303032F23)) 
    \selected_digit_reg[1]_i_2 
       (.I0(\selected_digit_reg[3]_i_1_0 [1]),
        .I1(tmp2_reg__0[2]),
        .I2(tmp2_reg__0[1]),
        .I3(\selected_digit_reg[3]_i_1_1 [1]),
        .I4(tmp2_reg__0[0]),
        .I5(\selected_digit_reg[3]_i_1_2 [1]),
        .O(\selected_digit_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \selected_digit_reg[1]_i_3 
       (.I0(\selected_digit_reg[3]_i_1_3 [1]),
        .I1(tmp[0]),
        .I2(\selected_digit_reg[3]_i_1_4 [1]),
        .I3(\selected_digit_reg[3]_i_1_5 [1]),
        .I4(tmp[1]),
        .O(\selected_digit_reg[1]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selected_digit_reg[2] 
       (.CLR(1'b0),
        .D(\selected_digit_reg[2]_i_1_n_0 ),
        .G(\selected_digit_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(selected_digit[2]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \selected_digit_reg[2]_i_1 
       (.I0(\selected_digit_reg[2]_i_2_n_0 ),
        .I1(tmp2_reg),
        .I2(EnableOperation_IBUF),
        .I3(\selected_digit_reg[2]_i_3_n_0 ),
        .O(\selected_digit_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33332F2303032F23)) 
    \selected_digit_reg[2]_i_2 
       (.I0(\selected_digit_reg[3]_i_1_0 [2]),
        .I1(tmp2_reg__0[2]),
        .I2(tmp2_reg__0[1]),
        .I3(\selected_digit_reg[3]_i_1_1 [2]),
        .I4(tmp2_reg__0[0]),
        .I5(\selected_digit_reg[3]_i_1_2 [2]),
        .O(\selected_digit_reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \selected_digit_reg[2]_i_3 
       (.I0(\selected_digit_reg[3]_i_1_3 [2]),
        .I1(tmp[0]),
        .I2(\selected_digit_reg[3]_i_1_4 [2]),
        .I3(\selected_digit_reg[3]_i_1_5 [2]),
        .I4(tmp[1]),
        .O(\selected_digit_reg[2]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selected_digit_reg[3] 
       (.CLR(1'b0),
        .D(\selected_digit_reg[3]_i_1_n_0 ),
        .G(\selected_digit_reg[3]_i_2_n_0 ),
        .GE(1'b1),
        .Q(selected_digit[3]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \selected_digit_reg[3]_i_1 
       (.I0(\selected_digit_reg[3]_i_3_n_0 ),
        .I1(tmp2_reg),
        .I2(EnableOperation_IBUF),
        .I3(\selected_digit_reg[3]_i_4_n_0 ),
        .O(\selected_digit_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \selected_digit_reg[3]_i_2 
       (.I0(EnableOperation_IBUF),
        .I1(tmp[0]),
        .I2(tmp[1]),
        .I3(p_0_out[5]),
        .O(\selected_digit_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33332F2303032F23)) 
    \selected_digit_reg[3]_i_3 
       (.I0(\selected_digit_reg[3]_i_1_0 [3]),
        .I1(tmp2_reg__0[2]),
        .I2(tmp2_reg__0[1]),
        .I3(\selected_digit_reg[3]_i_1_1 [3]),
        .I4(tmp2_reg__0[0]),
        .I5(\selected_digit_reg[3]_i_1_2 [3]),
        .O(\selected_digit_reg[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \selected_digit_reg[3]_i_4 
       (.I0(\selected_digit_reg[3]_i_1_3 [3]),
        .I1(tmp[0]),
        .I2(\selected_digit_reg[3]_i_1_4 [3]),
        .I3(\selected_digit_reg[3]_i_1_5 [3]),
        .I4(tmp[1]),
        .O(\selected_digit_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tmp2[0]_i_1 
       (.I0(tmp2_reg__0[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp2[1]_i_1 
       (.I0(tmp2_reg__0[0]),
        .I1(tmp2_reg__0[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2[2]_i_1 
       (.I0(tmp2_reg__0[0]),
        .I1(tmp2_reg__0[1]),
        .I2(tmp2_reg__0[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tmp2[3]_i_1 
       (.I0(tmp2_reg__0[1]),
        .I1(tmp2_reg__0[0]),
        .I2(tmp2_reg__0[2]),
        .I3(tmp2_reg),
        .O(plusOp__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp2_reg[0] 
       (.C(CLK),
        .CE(EnableOperation_IBUF),
        .CLR(AR),
        .D(plusOp__0[0]),
        .Q(tmp2_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp2_reg[1] 
       (.C(CLK),
        .CE(EnableOperation_IBUF),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(tmp2_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp2_reg[2] 
       (.C(CLK),
        .CE(EnableOperation_IBUF),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(tmp2_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp2_reg[3] 
       (.C(CLK),
        .CE(EnableOperation_IBUF),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(tmp2_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tmp[0]_i_1 
       (.I0(tmp[0]),
        .O(plusOp[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp[1]_i_1 
       (.I0(EnableOperation_IBUF),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tmp[1]_i_2 
       (.I0(tmp[0]),
        .I1(tmp[1]),
        .O(plusOp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(tmp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(tmp[1]));
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
