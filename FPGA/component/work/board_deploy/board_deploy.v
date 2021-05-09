//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat May  8 22:40:40 2021
// Version: v12.5 12.900.10.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// board_deploy
module board_deploy(
    // Inputs
    DEVRST_N,
    MMUART_1_RXD,
    SPI_0_DI,
    XTL,
    sampled_signal,
    // Outputs
    GPIO_3_M2F,
    MMUART_1_TXD,
    SPI_0_DO,
    // Inouts
    SPI_0_CLK,
    SPI_0_SS0
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  MMUART_1_RXD;
input  SPI_0_DI;
input  XTL;
input  sampled_signal;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GPIO_3_M2F;
output MMUART_1_TXD;
output SPI_0_DO;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  SPI_0_CLK;
inout  SPI_0_SS0;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] Add_Counters_0_final_count;
wire          board_deploy_MSS_0_GPIO_0_M2F;
wire          board_deploy_MSS_0_SPI_1_CLK_M2F;
wire          board_deploy_MSS_0_SPI_1_DO_M2F;
wire          board_deploy_MSS_0_SPI_1_SS0_M2F;
wire          DEVRST_N;
wire          FCCC_C0_0_GL0;
wire          FCCC_C1_0_GL0;
wire          FCCC_C1_0_GL1;
wire          FCCC_C1_0_GL2;
wire          FCCC_C1_0_GL3;
wire   [31:0] fine_counter_0_fine_count;
wire          Gate_Set_0_sample_gate;
wire          GPIO_3_M2F_net_0;
wire          MMUART_1_RXD;
wire          MMUART_1_TXD_net_0;
wire          OSC_C0_0_XTLOSC_O2F;
wire   [31:0] Recip_Freq_Count_0_recip_counter;
wire          sampled_signal;
wire          SPI_0_CLK;
wire          SPI_0_DI;
wire          SPI_0_DO_net_0;
wire          SPI_0_SS0;
wire          SPI_Slave_0_SPI_MISO;
wire          SYSRESET_0_POWER_ON_RESET_N;
wire          XTL;
wire          SPI_0_DO_net_1;
wire          MMUART_1_TXD_net_1;
wire          GPIO_3_M2F_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SPI_0_DO_net_1     = SPI_0_DO_net_0;
assign SPI_0_DO           = SPI_0_DO_net_1;
assign MMUART_1_TXD_net_1 = MMUART_1_TXD_net_0;
assign MMUART_1_TXD       = MMUART_1_TXD_net_1;
assign GPIO_3_M2F_net_1   = GPIO_3_M2F_net_0;
assign GPIO_3_M2F         = GPIO_3_M2F_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Add_Counters
Add_Counters Add_Counters_0(
        // Inputs
        .recip_count ( Recip_Freq_Count_0_recip_counter ),
        .fine_count  ( fine_counter_0_fine_count ),
        // Outputs
        .final_count ( Add_Counters_0_final_count ) 
        );

//--------board_deploy_MSS
board_deploy_MSS board_deploy_MSS_0(
        // Inputs
        .SPI_0_DI         ( SPI_0_DI ),
        .MCCC_CLK_BASE    ( FCCC_C0_0_GL0 ),
        .MMUART_1_RXD     ( MMUART_1_RXD ),
        .SPI_1_DI_F2M     ( SPI_Slave_0_SPI_MISO ),
        .SPI_1_CLK_F2M    ( board_deploy_MSS_0_SPI_1_CLK_M2F ),
        .SPI_1_SS0_F2M    ( VCC_net ),
        .MSS_RESET_N_F2M  ( SYSRESET_0_POWER_ON_RESET_N ),
        .M3_RESET_N       ( SYSRESET_0_POWER_ON_RESET_N ),
        // Outputs
        .SPI_0_DO         ( SPI_0_DO_net_0 ),
        .MMUART_1_TXD     ( MMUART_1_TXD_net_0 ),
        .SPI_1_DO_M2F     ( board_deploy_MSS_0_SPI_1_DO_M2F ),
        .SPI_1_CLK_M2F    ( board_deploy_MSS_0_SPI_1_CLK_M2F ),
        .SPI_1_SS0_M2F    ( board_deploy_MSS_0_SPI_1_SS0_M2F ),
        .SPI_1_SS0_M2F_OE (  ),
        .GPIO_0_M2F       ( board_deploy_MSS_0_GPIO_0_M2F ),
        .GPIO_3_M2F       ( GPIO_3_M2F_net_0 ),
        // Inouts
        .SPI_0_CLK        ( SPI_0_CLK ),
        .SPI_0_SS0        ( SPI_0_SS0 ) 
        );

//--------FCCC_C0
FCCC_C0 FCCC_C0_0(
        // Inputs
        .CLK0 ( OSC_C0_0_XTLOSC_O2F ),
        // Outputs
        .GL0  ( FCCC_C0_0_GL0 ),
        .LOCK (  ) 
        );

//--------FCCC_C1
FCCC_C1 FCCC_C1_0(
        // Inputs
        .CLK0 ( OSC_C0_0_XTLOSC_O2F ),
        // Outputs
        .GL0  ( FCCC_C1_0_GL0 ),
        .LOCK (  ),
        .GL1  ( FCCC_C1_0_GL1 ),
        .GL2  ( FCCC_C1_0_GL2 ),
        .GL3  ( FCCC_C1_0_GL3 ) 
        );

//--------fine_counter
fine_counter fine_counter_0(
        // Inputs
        .clk1        ( FCCC_C1_0_GL0 ),
        .clk2        ( FCCC_C1_0_GL1 ),
        .clk3        ( FCCC_C1_0_GL2 ),
        .clk4        ( FCCC_C1_0_GL3 ),
        .reset       ( SYSRESET_0_POWER_ON_RESET_N ),
        .sample_gate ( Gate_Set_0_sample_gate ),
        // Outputs
        .fine_count  ( fine_counter_0_fine_count ) 
        );

//--------Gate_Set
Gate_Set Gate_Set_0(
        // Inputs
        .reset          ( SYSRESET_0_POWER_ON_RESET_N ),
        .sampled_signal ( sampled_signal ),
        .sample_enable  ( board_deploy_MSS_0_GPIO_0_M2F ),
        // Outputs
        .sample_gate    ( Gate_Set_0_sample_gate ) 
        );

//--------OSC_C0
OSC_C0 OSC_C0_0(
        // Inputs
        .XTL        ( XTL ),
        // Outputs
        .XTLOSC_O2F ( OSC_C0_0_XTLOSC_O2F ) 
        );

//--------Recip_Freq_Count
Recip_Freq_Count Recip_Freq_Count_0(
        // Inputs
        .reset         ( SYSRESET_0_POWER_ON_RESET_N ),
        .ref_clk       ( FCCC_C1_0_GL0 ),
        .sample_gate   ( Gate_Set_0_sample_gate ),
        // Outputs
        .recip_valid   (  ),
        .recip_counter ( Recip_Freq_Count_0_recip_counter ) 
        );

//--------SPI_Slave
SPI_Slave SPI_Slave_0(
        // Inputs
        .reset    ( SYSRESET_0_POWER_ON_RESET_N ),
        .clk      ( FCCC_C0_0_GL0 ),
        .SPI_Clk  ( board_deploy_MSS_0_SPI_1_CLK_M2F ),
        .SPI_MOSI ( board_deploy_MSS_0_SPI_1_DO_M2F ),
        .SPI_CS_n ( board_deploy_MSS_0_SPI_1_SS0_M2F ),
        .data_in  ( Add_Counters_0_final_count ),
        // Outputs
        .SPI_MISO ( SPI_Slave_0_SPI_MISO ) 
        );

//--------SYSRESET
SYSRESET SYSRESET_0(
        // Inputs
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N ( SYSRESET_0_POWER_ON_RESET_N ) 
        );


endmodule
