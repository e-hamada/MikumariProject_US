
// file: clk_wiz_1.v
// 
// (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// clk_fast_TX__500.00000______0.000______50.0_______97.082_____98.575
// clk_fast_RX__500.00000______0.000______50.0_______97.082_____98.575
// clk_slow__125.00000______0.000______50.0______125.247_____98.575
// clk_slow_CLR__125.00000______0.000______50.0______125.247_____98.575
//
//----------------------------------------------------------------------------
// Input Clock   Freq (MHz)    Input Jitter (UI)
//----------------------------------------------------------------------------
// __primary_____________100___________100.000

`timescale 1ps/1ps

module mmcm_cdcm_clk_wiz 

 (// Clock in ports
  // Clock out ports
  output        clk_fast_TX,
  output        clk_fast_RX,
  output        clk_slow,
  output        clk_slow_CLR,
  // Status and control signals
  input         reset,
  output        locked,
  input         clk_in1,
  input         BUFDIV_CE,
  input         BUFDIV_CLR     
 );
  // Input buffering
  //------------------------------------
wire clk_in1_clk_wiz_1;
wire clk_in2_clk_wiz_1;
  BUFG clkin1_bufg
   (.O (clk_in1_clk_wiz_1),
    .I (clk_in1));




  // Clocking PRIMITIVE
  //------------------------------------

  // Instantiation of the MMCM PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused

  wire        clk_fast_TX_clk_wiz_1;
  wire        clk_fast_RX_clk_wiz_1;
  wire        clk_slow_clk_wiz_1;
  wire        clk_slow_CLR_clk_wiz_1;
  wire        clk_RX_CLR_clk_wiz_1;
  wire        clk125m_clk_wiz_1;
  wire        clk_out7_clk_wiz_1;

  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        psdone_unused;
  wire        locked_int;
  wire        clkfbout_clk_wiz_1;
  wire        clkfboutb_unused;
    wire clkout0b_unused;
   wire clkout1b_unused;
   wire clkout2b_unused;
   wire clkout3b_unused;
   wire clkout4_unused;
  wire        clkout5_unused;
  wire        clkout6_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;
  wire        reset_high;

 

// Auto Instantiation//


  
    MMCME4_ADV

  #(.BANDWIDTH            ("OPTIMIZED"),
    .CLKOUT4_CASCADE      ("FALSE"),
    .COMPENSATION         ("AUTO"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT_F      (10.000),
    .CLKFBOUT_PHASE       (0.000),
    .CLKFBOUT_USE_FINE_PS ("FALSE"),
    .CLKOUT0_DIVIDE_F     (2.000),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT0_USE_FINE_PS  ("FALSE"),
    .CLKOUT1_DIVIDE       (2),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT1_USE_FINE_PS  ("FALSE"),
    .CLKOUT2_DIVIDE       (8),
    .CLKOUT2_PHASE        (0.000),
    .CLKOUT2_DUTY_CYCLE   (0.500),
    .CLKOUT2_USE_FINE_PS  ("FALSE"),
    .CLKOUT3_DIVIDE       (8),
    .CLKOUT3_PHASE        (0.000),
    .CLKOUT3_DUTY_CYCLE   (0.500),
    .CLKOUT3_USE_FINE_PS  ("FALSE"),
    .CLKIN1_PERIOD        (10.000))
  
     mmcme4_adv_inst
    // Output clocks
   (
    .CLKFBOUT            (clkfbout_clk_wiz_1),
    .CLKFBOUTB           (clkfboutb_unused),
    .CLKOUT0             (clk_fast_TX_clk_wiz_1),
    .CLKOUT0B            (clkout0b_unused),
    .CLKOUT1             (clkout1_unused),
    .CLKOUT1B            (clkout1b_unused),
    .CLKOUT2             (clkout2_unused),
    .CLKOUT2B            (clkout2b_unused),
	.CLKOUT3             (clk_slow_CLR_clk_wiz_1),
    .CLKOUT3B            (clkout3b_unused),
    .CLKOUT4             (clkout4_unused),
    .CLKOUT5             (clkout5_unused),
    .CLKOUT6             (clkout6_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_clk_wiz_1),
    .CLKIN1              (clk_in1_clk_wiz_1),
    .CLKIN2              (1'b0),
     // Tied to always select the primary input clock
    .CLKINSEL            (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    .CDDCDONE            (),
    .CDDCREQ             (1'b0),
    // Ports for dynamic phase shift
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PSDONE              (psdone_unused),
    // Other control and status signals
    .LOCKED              (locked_int),
    .CLKINSTOPPED        (clkinstopped_unused),
    .CLKFBSTOPPED        (clkfbstopped_unused),
    .PWRDWN              (1'b0),
    .RST                 (reset_high));

BUFGCE_DIV #(
      .BUFGCE_DIVIDE(1.0),      // 1-8
      // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
      .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
      .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
      .IS_I_INVERTED(1'b0)    // Optional inversion for I
   )
   BUFGCE_DIV_CLK2_inst (
      .O(clk_fast_RX_clk_wiz_1),     // 1-bit output: Buffer
      .CE(1'b1),   // 1-bit input: Buffer enable
      .CLR(1'b0), // 1-bit input: Asynchronous clear
      .I(clk_fast_TX_clk_wiz_1)      // 1-bit input: Buffer
   );
BUFGCE_DIV #(
      .BUFGCE_DIVIDE(4.0),      // 1-8
      // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
      .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
      .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
      .IS_I_INVERTED(1'b0)    // Optional inversion for I
   )
   BUFGCE_DIV_CLK3_inst (
      .O(clk_slow_clk_wiz_1),     // 1-bit output: Buffer
      .CE(BUFDIV_CE),   // 1-bit input: Buffer enable
      .CLR(BUFDIV_CLR), // 1-bit input: Asynchronous clear
      .I(clk_fast_TX_clk_wiz_1)      // 1-bit input: Buffer
   );


  assign reset_high = reset; 

  assign locked = locked_int;
// Clock Monitor clock assigning
//--------------------------------------
 // Output buffering
  //-----------------------------------






  BUFGCE_DIV 
 #(
      .BUFGCE_DIVIDE(1),      // 1-8
      // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
      .IS_CE_INVERTED(1'b0),  // Optional inversion for CE
      .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
      .IS_I_INVERTED(1'b0)    // Optional inversion for I
   )
  clkout1_buf
   (.O   (clk_fast_TX),
    .CE  (1'b1),   // 1-bit input: Buffer enable
    .CLR (1'b0),
    .I   (clk_fast_TX_clk_wiz_1));


  assign clk_fast_RX = clk_fast_RX_clk_wiz_1;

  assign clk_slow = clk_slow_clk_wiz_1;

  BUFG clkout4_buf
   (.O   (clk_slow_CLR),
    .I   (clk_slow_CLR_clk_wiz_1));



endmodule
