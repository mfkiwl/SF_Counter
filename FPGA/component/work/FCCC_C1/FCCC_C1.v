//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat May  8 22:19:43 2021
// Version: v12.5 12.900.10.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// FCCC_C1
module FCCC_C1(
    // Inputs
    CLK0,
    // Outputs
    GL0,
    GL1,
    GL2,
    GL3,
    LOCK
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK0;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GL0;
output GL1;
output GL2;
output GL3;
output LOCK;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   CLK0;
wire   GL0_net_0;
wire   GL1_net_0;
wire   GL2_net_0;
wire   GL3_net_0;
wire   LOCK_net_0;
wire   GL0_net_1;
wire   LOCK_net_1;
wire   GL1_net_1;
wire   GL2_net_1;
wire   GL3_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   GND_net;
wire   [7:2]PADDR_const_net_0;
wire   [7:0]PWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net            = 1'b0;
assign PADDR_const_net_0  = 6'h00;
assign PWDATA_const_net_0 = 8'h00;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GL0_net_1  = GL0_net_0;
assign GL0        = GL0_net_1;
assign LOCK_net_1 = LOCK_net_0;
assign LOCK       = LOCK_net_1;
assign GL1_net_1  = GL1_net_0;
assign GL1        = GL1_net_1;
assign GL2_net_1  = GL2_net_0;
assign GL2        = GL2_net_1;
assign GL3_net_1  = GL3_net_0;
assign GL3        = GL3_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------FCCC_C1_FCCC_C1_0_FCCC   -   Actel:SgCore:FCCC:2.0.201
FCCC_C1_FCCC_C1_0_FCCC FCCC_C1_0(
        // Inputs
        .CLK0 ( CLK0 ),
        // Outputs
        .GL0  ( GL0_net_0 ),
        .GL1  ( GL1_net_0 ),
        .GL2  ( GL2_net_0 ),
        .GL3  ( GL3_net_0 ),
        .LOCK ( LOCK_net_0 ) 
        );


endmodule
