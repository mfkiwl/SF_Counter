//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat May  8 23:19:00 2021
// Version: v12.5 12.900.10.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// board_deploy_MSS
module board_deploy_MSS(
    // Inputs
    M3_RESET_N,
    MCCC_CLK_BASE,
    MMUART_1_RXD,
    MSS_RESET_N_F2M,
    SPI_0_DI,
    SPI_1_CLK_F2M,
    SPI_1_DI_F2M,
    SPI_1_SS0_F2M,
    // Outputs
    GPIO_0_M2F,
    GPIO_3_M2F,
    MMUART_1_TXD,
    SPI_0_DO,
    SPI_1_CLK_M2F,
    SPI_1_DO_M2F,
    SPI_1_SS0_M2F,
    SPI_1_SS0_M2F_OE,
    // Inouts
    SPI_0_CLK,
    SPI_0_SS0
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  M3_RESET_N;
input  MCCC_CLK_BASE;
input  MMUART_1_RXD;
input  MSS_RESET_N_F2M;
input  SPI_0_DI;
input  SPI_1_CLK_F2M;
input  SPI_1_DI_F2M;
input  SPI_1_SS0_F2M;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GPIO_0_M2F;
output GPIO_3_M2F;
output MMUART_1_TXD;
output SPI_0_DO;
output SPI_1_CLK_M2F;
output SPI_1_DO_M2F;
output SPI_1_SS0_M2F;
output SPI_1_SS0_M2F_OE;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  SPI_0_CLK;
inout  SPI_0_SS0;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   GPIO_0_M2F_net_0;
wire   GPIO_3_M2F_net_0;
wire   M3_RESET_N;
wire   MCCC_CLK_BASE;
wire   MMUART_1_RXD;
wire   MMUART_1_RXD_PAD_Y;
wire   MMUART_1_TXD_net_0;
wire   MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OE;
wire   MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT;
wire   MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OE;
wire   MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OUT;
wire   MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OE;
wire   MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OUT;
wire   MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OE;
wire   MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OUT;
wire   MSS_RESET_N_F2M;
wire   SPI_0_CLK;
wire   SPI_0_CLK_PAD_Y;
wire   SPI_0_DI;
wire   SPI_0_DI_PAD_Y;
wire   SPI_0_DO_net_0;
wire   SPI_0_SS0;
wire   SPI_0_SS0_PAD_Y;
wire   SPI_1_CLK_F2M;
wire   SPI_1_CLK_M2F_net_0;
wire   SPI_1_DI_F2M;
wire   SPI_1_DO_M2F_net_0;
wire   SPI_1_SS0_F2M;
wire   SPI_1_SS0_M2F_net_0;
wire   SPI_1_SS0_M2F_OE_net_0;
wire   SPI_0_DO_net_1;
wire   MMUART_1_TXD_net_1;
wire   SPI_1_DO_M2F_net_1;
wire   SPI_1_CLK_M2F_net_1;
wire   SPI_1_SS0_M2F_net_1;
wire   SPI_1_SS0_M2F_OE_net_1;
wire   GPIO_0_M2F_net_1;
wire   GPIO_3_M2F_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   GND_net;
wire   [2:0]DM_IN_const_net_0;
wire   [17:0]DRAM_DQ_IN_const_net_0;
wire   [2:0]DRAM_DQS_IN_const_net_0;
wire   [1:0]DRAM_FIFO_WE_IN_const_net_0;
wire   VCC_net;
wire   [1:0]F2_DMAREADY_const_net_0;
wire   [15:0]F2H_INTERRUPT_const_net_0;
wire   [1:0]F_DMAREADY_const_net_0;
wire   [31:0]F_FM0_ADDR_const_net_0;
wire   [1:0]F_FM0_SIZE_const_net_0;
wire   [31:0]F_FM0_WDATA_const_net_0;
wire   [31:0]F_HM0_RDATA_const_net_0;
wire   [1:0]FAB_LINESTATE_const_net_0;
wire   [7:0]FAB_VSTATUS_const_net_0;
wire   [7:0]FAB_XDATAIN_const_net_0;
wire   [31:0]PER2_FABRIC_PRDATA_const_net_0;
wire   [9:0]RCGF_const_net_0;
wire   [7:0]RXDF_const_net_0;
wire   [31:0]F_ARADDR_HADDR1_const_net_0;
wire   [1:0]F_ARBURST_HTRANS1_const_net_0;
wire   [3:0]F_ARID_HSEL1_const_net_0;
wire   [3:0]F_ARLEN_HBURST1_const_net_0;
wire   [1:0]F_ARLOCK_HMASTLOCK1_const_net_0;
wire   [1:0]F_ARSIZE_HSIZE1_const_net_0;
wire   [31:0]F_AWADDR_HADDR0_const_net_0;
wire   [1:0]F_AWBURST_HTRANS0_const_net_0;
wire   [3:0]F_AWID_HSEL0_const_net_0;
wire   [3:0]F_AWLEN_HBURST0_const_net_0;
wire   [1:0]F_AWLOCK_HMASTLOCK0_const_net_0;
wire   [1:0]F_AWSIZE_HSIZE0_const_net_0;
wire   [63:0]F_WDATA_HWDATA01_const_net_0;
wire   [3:0]F_WID_HREADY01_const_net_0;
wire   [7:0]F_WSTRB_const_net_0;
wire   [10:2]MDDR_FABRIC_PADDR_const_net_0;
wire   [15:0]MDDR_FABRIC_PWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                         = 1'b0;
assign DM_IN_const_net_0               = 3'h0;
assign DRAM_DQ_IN_const_net_0          = 18'h00000;
assign DRAM_DQS_IN_const_net_0         = 3'h0;
assign DRAM_FIFO_WE_IN_const_net_0     = 2'h0;
assign VCC_net                         = 1'b1;
assign F2_DMAREADY_const_net_0         = 2'h3;
assign F2H_INTERRUPT_const_net_0       = 16'h0000;
assign F_DMAREADY_const_net_0          = 2'h3;
assign F_FM0_ADDR_const_net_0          = 32'h00000000;
assign F_FM0_SIZE_const_net_0          = 2'h0;
assign F_FM0_WDATA_const_net_0         = 32'h00000000;
assign F_HM0_RDATA_const_net_0         = 32'h00000000;
assign FAB_LINESTATE_const_net_0       = 2'h3;
assign FAB_VSTATUS_const_net_0         = 8'hFF;
assign FAB_XDATAIN_const_net_0         = 8'hFF;
assign PER2_FABRIC_PRDATA_const_net_0  = 32'hFFFFFFFF;
assign RCGF_const_net_0                = 10'h3FF;
assign RXDF_const_net_0                = 8'hFF;
assign F_ARADDR_HADDR1_const_net_0     = 32'hFFFFFFFF;
assign F_ARBURST_HTRANS1_const_net_0   = 2'h0;
assign F_ARID_HSEL1_const_net_0        = 4'h0;
assign F_ARLEN_HBURST1_const_net_0     = 4'h0;
assign F_ARLOCK_HMASTLOCK1_const_net_0 = 2'h0;
assign F_ARSIZE_HSIZE1_const_net_0     = 2'h0;
assign F_AWADDR_HADDR0_const_net_0     = 32'hFFFFFFFF;
assign F_AWBURST_HTRANS0_const_net_0   = 2'h0;
assign F_AWID_HSEL0_const_net_0        = 4'h0;
assign F_AWLEN_HBURST0_const_net_0     = 4'h0;
assign F_AWLOCK_HMASTLOCK0_const_net_0 = 2'h0;
assign F_AWSIZE_HSIZE0_const_net_0     = 2'h0;
assign F_WDATA_HWDATA01_const_net_0    = 64'hFFFFFFFFFFFFFFFF;
assign F_WID_HREADY01_const_net_0      = 4'h0;
assign F_WSTRB_const_net_0             = 8'h00;
assign MDDR_FABRIC_PADDR_const_net_0   = 9'h1FF;
assign MDDR_FABRIC_PWDATA_const_net_0  = 16'hFFFF;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SPI_0_DO_net_1         = SPI_0_DO_net_0;
assign SPI_0_DO               = SPI_0_DO_net_1;
assign MMUART_1_TXD_net_1     = MMUART_1_TXD_net_0;
assign MMUART_1_TXD           = MMUART_1_TXD_net_1;
assign SPI_1_DO_M2F_net_1     = SPI_1_DO_M2F_net_0;
assign SPI_1_DO_M2F           = SPI_1_DO_M2F_net_1;
assign SPI_1_CLK_M2F_net_1    = SPI_1_CLK_M2F_net_0;
assign SPI_1_CLK_M2F          = SPI_1_CLK_M2F_net_1;
assign SPI_1_SS0_M2F_net_1    = SPI_1_SS0_M2F_net_0;
assign SPI_1_SS0_M2F          = SPI_1_SS0_M2F_net_1;
assign SPI_1_SS0_M2F_OE_net_1 = SPI_1_SS0_M2F_OE_net_0;
assign SPI_1_SS0_M2F_OE       = SPI_1_SS0_M2F_OE_net_1;
assign GPIO_0_M2F_net_1       = GPIO_0_M2F_net_0;
assign GPIO_0_M2F             = GPIO_0_M2F_net_1;
assign GPIO_3_M2F_net_1       = GPIO_3_M2F_net_0;
assign GPIO_3_M2F             = GPIO_3_M2F_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------INBUF
INBUF MMUART_1_RXD_PAD(
        // Inputs
        .PAD ( MMUART_1_RXD ),
        // Outputs
        .Y   ( MMUART_1_RXD_PAD_Y ) 
        );

//--------TRIBUFF
TRIBUFF MMUART_1_TXD_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT ),
        .E   ( MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OE ),
        // Outputs
        .PAD ( MMUART_1_TXD_net_0 ) 
        );

//--------MSS_025
MSS_025 #( 
        .ACT_UBITS         ( 56'hFFFFFFFFFFFFFF ),
        .DDR_CLK_FREQ      ( 20.0 ),
        .INIT              ( 1438'h000000000000000000000000000000361000800000000000000000000000000000000000C0300000000000000000000001203610000000000000000000000000000000000000000F00000000F000000000000000000000000000000007FFFFFFFB000001007C33F00000000E08947F00003FFFFE4000000000008100000000F0E01C000001835E24010842108421000001FE34001FF8000000400000000020031007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
        .MEMORYFILE        ( "ENVM_init.mem" ),
        .RTC_MAIN_XTL_FREQ ( 0.0 ),
        .RTC_MAIN_XTL_MODE ( "" ) )
MSS_ADLIB_INST(
        // Inputs
        .CAN_RXBUS_F2H_SCP                       ( VCC_net ), // tied to 1'b1 from definition
        .CAN_TX_EBL_F2H_SCP                      ( VCC_net ), // tied to 1'b1 from definition
        .CAN_TXBUS_F2H_SCP                       ( VCC_net ), // tied to 1'b1 from definition
        .COLF                                    ( VCC_net ), // tied to 1'b1 from definition
        .CRSF                                    ( VCC_net ), // tied to 1'b1 from definition
        .F2_DMAREADY                             ( F2_DMAREADY_const_net_0 ), // tied to 2'h3 from definition
        .F2H_INTERRUPT                           ( F2H_INTERRUPT_const_net_0 ), // tied to 16'h0000 from definition
        .F2HCALIB                                ( VCC_net ), // tied to 1'b1 from definition
        .F_DMAREADY                              ( F_DMAREADY_const_net_0 ), // tied to 2'h3 from definition
        .F_FM0_ADDR                              ( F_FM0_ADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .F_FM0_ENABLE                            ( GND_net ), // tied to 1'b0 from definition
        .F_FM0_MASTLOCK                          ( GND_net ), // tied to 1'b0 from definition
        .F_FM0_READY                             ( VCC_net ), // tied to 1'b1 from definition
        .F_FM0_SEL                               ( GND_net ), // tied to 1'b0 from definition
        .F_FM0_SIZE                              ( F_FM0_SIZE_const_net_0 ), // tied to 2'h0 from definition
        .F_FM0_TRANS1                            ( GND_net ), // tied to 1'b0 from definition
        .F_FM0_WDATA                             ( F_FM0_WDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .F_FM0_WRITE                             ( GND_net ), // tied to 1'b0 from definition
        .F_HM0_RDATA                             ( F_HM0_RDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .F_HM0_READY                             ( VCC_net ), // tied to 1'b1 from definition
        .F_HM0_RESP                              ( GND_net ), // tied to 1'b0 from definition
        .FAB_AVALID                              ( VCC_net ), // tied to 1'b1 from definition
        .FAB_HOSTDISCON                          ( VCC_net ), // tied to 1'b1 from definition
        .FAB_IDDIG                               ( VCC_net ), // tied to 1'b1 from definition
        .FAB_LINESTATE                           ( FAB_LINESTATE_const_net_0 ), // tied to 2'h3 from definition
        .FAB_M3_RESET_N                          ( M3_RESET_N ),
        .FAB_PLL_LOCK                            ( VCC_net ), // tied to 1'b1 from definition
        .FAB_RXACTIVE                            ( VCC_net ), // tied to 1'b1 from definition
        .FAB_RXERROR                             ( VCC_net ), // tied to 1'b1 from definition
        .FAB_RXVALID                             ( VCC_net ), // tied to 1'b1 from definition
        .FAB_RXVALIDH                            ( GND_net ), // tied to 1'b0 from definition
        .FAB_SESSEND                             ( VCC_net ), // tied to 1'b1 from definition
        .FAB_TXREADY                             ( VCC_net ), // tied to 1'b1 from definition
        .FAB_VBUSVALID                           ( VCC_net ), // tied to 1'b1 from definition
        .FAB_VSTATUS                             ( FAB_VSTATUS_const_net_0 ), // tied to 8'hFF from definition
        .FAB_XDATAIN                             ( FAB_XDATAIN_const_net_0 ), // tied to 8'hFF from definition
        .GTX_CLKPF                               ( VCC_net ), // tied to 1'b1 from definition
        .I2C0_BCLK                               ( VCC_net ), // tied to 1'b1 from definition
        .I2C0_SCL_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .I2C0_SDA_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .I2C1_BCLK                               ( VCC_net ), // tied to 1'b1 from definition
        .I2C1_SCL_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .I2C1_SDA_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .MDIF                                    ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO0A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO10A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO11A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO11B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO12A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO13A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO14A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO15A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO16A_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO17B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO18B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO19B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO1A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO20B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO21B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO22B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO24B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO25B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO26B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO27B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO28B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO29B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO2A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO30B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO31B_F2H_GPIN                       ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO3A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO4A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO5A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO6A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO7A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO8A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MGPIO9A_F2H_GPIN                        ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_CTS_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_DCD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_DSR_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_DTR_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_RI_F2H_SCP                      ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_RTS_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_RXD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_SCK_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART0_TXD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_CTS_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_DCD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_DSR_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_RI_F2H_SCP                      ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_RTS_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_RXD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_SCK_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .MMUART1_TXD_F2H_SCP                     ( VCC_net ), // tied to 1'b1 from definition
        .PER2_FABRIC_PRDATA                      ( PER2_FABRIC_PRDATA_const_net_0 ), // tied to 32'hFFFFFFFF from definition
        .PER2_FABRIC_PREADY                      ( VCC_net ), // tied to 1'b1 from definition
        .PER2_FABRIC_PSLVERR                     ( VCC_net ), // tied to 1'b1 from definition
        .RCGF                                    ( RCGF_const_net_0 ), // tied to 10'h3FF from definition
        .RX_CLKPF                                ( VCC_net ), // tied to 1'b1 from definition
        .RX_DVF                                  ( VCC_net ), // tied to 1'b1 from definition
        .RX_ERRF                                 ( VCC_net ), // tied to 1'b1 from definition
        .RX_EV                                   ( VCC_net ), // tied to 1'b1 from definition
        .RXDF                                    ( RXDF_const_net_0 ), // tied to 8'hFF from definition
        .SLEEPHOLDREQ                            ( GND_net ), // tied to 1'b0 from definition
        .SMBALERT_NI0                            ( VCC_net ), // tied to 1'b1 from definition
        .SMBALERT_NI1                            ( VCC_net ), // tied to 1'b1 from definition
        .SMBSUS_NI0                              ( VCC_net ), // tied to 1'b1 from definition
        .SMBSUS_NI1                              ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_CLK_IN                             ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SDI_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SDO_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SS0_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SS1_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SS2_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI0_SS3_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_CLK_IN                             ( SPI_1_CLK_F2M ),
        .SPI1_SDI_F2H_SCP                        ( SPI_1_DI_F2M ),
        .SPI1_SDO_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SS0_F2H_SCP                        ( SPI_1_SS0_F2M ),
        .SPI1_SS1_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SS2_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .SPI1_SS3_F2H_SCP                        ( VCC_net ), // tied to 1'b1 from definition
        .TX_CLKPF                                ( VCC_net ), // tied to 1'b1 from definition
        .USER_MSS_GPIO_RESET_N                   ( VCC_net ), // tied to 1'b1 from definition
        .USER_MSS_RESET_N                        ( MSS_RESET_N_F2M ),
        .XCLK_FAB                                ( VCC_net ), // tied to 1'b1 from definition
        .CLK_BASE                                ( MCCC_CLK_BASE ),
        .CLK_MDDR_APB                            ( VCC_net ), // tied to 1'b1 from definition
        .F_ARADDR_HADDR1                         ( F_ARADDR_HADDR1_const_net_0 ), // tied to 32'hFFFFFFFF from definition
        .F_ARBURST_HTRANS1                       ( F_ARBURST_HTRANS1_const_net_0 ), // tied to 2'h0 from definition
        .F_ARID_HSEL1                            ( F_ARID_HSEL1_const_net_0 ), // tied to 4'h0 from definition
        .F_ARLEN_HBURST1                         ( F_ARLEN_HBURST1_const_net_0 ), // tied to 4'h0 from definition
        .F_ARLOCK_HMASTLOCK1                     ( F_ARLOCK_HMASTLOCK1_const_net_0 ), // tied to 2'h0 from definition
        .F_ARSIZE_HSIZE1                         ( F_ARSIZE_HSIZE1_const_net_0 ), // tied to 2'h0 from definition
        .F_ARVALID_HWRITE1                       ( GND_net ), // tied to 1'b0 from definition
        .F_AWADDR_HADDR0                         ( F_AWADDR_HADDR0_const_net_0 ), // tied to 32'hFFFFFFFF from definition
        .F_AWBURST_HTRANS0                       ( F_AWBURST_HTRANS0_const_net_0 ), // tied to 2'h0 from definition
        .F_AWID_HSEL0                            ( F_AWID_HSEL0_const_net_0 ), // tied to 4'h0 from definition
        .F_AWLEN_HBURST0                         ( F_AWLEN_HBURST0_const_net_0 ), // tied to 4'h0 from definition
        .F_AWLOCK_HMASTLOCK0                     ( F_AWLOCK_HMASTLOCK0_const_net_0 ), // tied to 2'h0 from definition
        .F_AWSIZE_HSIZE0                         ( F_AWSIZE_HSIZE0_const_net_0 ), // tied to 2'h0 from definition
        .F_AWVALID_HWRITE0                       ( GND_net ), // tied to 1'b0 from definition
        .F_BREADY                                ( GND_net ), // tied to 1'b0 from definition
        .F_RMW_AXI                               ( GND_net ), // tied to 1'b0 from definition
        .F_RREADY                                ( GND_net ), // tied to 1'b0 from definition
        .F_WDATA_HWDATA01                        ( F_WDATA_HWDATA01_const_net_0 ), // tied to 64'hFFFFFFFFFFFFFFFF from definition
        .F_WID_HREADY01                          ( F_WID_HREADY01_const_net_0 ), // tied to 4'h0 from definition
        .F_WLAST                                 ( GND_net ), // tied to 1'b0 from definition
        .F_WSTRB                                 ( F_WSTRB_const_net_0 ), // tied to 8'h00 from definition
        .F_WVALID                                ( GND_net ), // tied to 1'b0 from definition
        .FPGA_MDDR_ARESET_N                      ( VCC_net ), // tied to 1'b1 from definition
        .MDDR_FABRIC_PADDR                       ( MDDR_FABRIC_PADDR_const_net_0 ), // tied to 9'h1FF from definition
        .MDDR_FABRIC_PENABLE                     ( VCC_net ), // tied to 1'b1 from definition
        .MDDR_FABRIC_PSEL                        ( VCC_net ), // tied to 1'b1 from definition
        .MDDR_FABRIC_PWDATA                      ( MDDR_FABRIC_PWDATA_const_net_0 ), // tied to 16'hFFFF from definition
        .MDDR_FABRIC_PWRITE                      ( VCC_net ), // tied to 1'b1 from definition
        .PRESET_N                                ( GND_net ), // tied to 1'b0 from definition
        .CAN_RXBUS_USBA_DATA1_MGPIO3A_IN         ( GND_net ),
        .CAN_TX_EBL_USBA_DATA2_MGPIO4A_IN        ( GND_net ),
        .CAN_TXBUS_USBA_DATA0_MGPIO2A_IN         ( GND_net ),
        .DM_IN                                   ( DM_IN_const_net_0 ),
        .DRAM_DQ_IN                              ( DRAM_DQ_IN_const_net_0 ),
        .DRAM_DQS_IN                             ( DRAM_DQS_IN_const_net_0 ),
        .DRAM_FIFO_WE_IN                         ( DRAM_FIFO_WE_IN_const_net_0 ),
        .I2C0_SCL_USBC_DATA1_MGPIO31B_IN         ( GND_net ),
        .I2C0_SDA_USBC_DATA0_MGPIO30B_IN         ( GND_net ),
        .I2C1_SCL_USBA_DATA4_MGPIO1A_IN          ( GND_net ),
        .I2C1_SDA_USBA_DATA3_MGPIO0A_IN          ( GND_net ),
        .MGPIO25A_IN                             ( GND_net ),
        .MGPIO26A_IN                             ( GND_net ),
        .MMUART0_CTS_USBC_DATA7_MGPIO19B_IN      ( GND_net ),
        .MMUART0_DCD_MGPIO22B_IN                 ( GND_net ),
        .MMUART0_DSR_MGPIO20B_IN                 ( GND_net ),
        .MMUART0_DTR_USBC_DATA6_MGPIO18B_IN      ( GND_net ),
        .MMUART0_RI_MGPIO21B_IN                  ( GND_net ),
        .MMUART0_RTS_USBC_DATA5_MGPIO17B_IN      ( GND_net ),
        .MMUART0_RXD_USBC_STP_MGPIO28B_IN        ( GND_net ),
        .MMUART0_SCK_USBC_NXT_MGPIO29B_IN        ( GND_net ),
        .MMUART0_TXD_USBC_DIR_MGPIO27B_IN        ( GND_net ),
        .MMUART1_CTS_MGPIO13B_IN                 ( GND_net ),
        .MMUART1_DCD_MGPIO16B_IN                 ( GND_net ),
        .MMUART1_DSR_MGPIO14B_IN                 ( GND_net ),
        .MMUART1_DTR_MGPIO12B_IN                 ( GND_net ),
        .MMUART1_RI_MGPIO15B_IN                  ( GND_net ),
        .MMUART1_RTS_MGPIO11B_IN                 ( GND_net ),
        .MMUART1_RXD_USBC_DATA3_MGPIO26B_IN      ( MMUART_1_RXD_PAD_Y ),
        .MMUART1_SCK_USBC_DATA4_MGPIO25B_IN      ( GND_net ),
        .MMUART1_TXD_USBC_DATA2_MGPIO24B_IN      ( GND_net ),
        .RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_IN     ( GND_net ),
        .RGMII_MDC_RMII_MDC_IN                   ( GND_net ),
        .RGMII_MDIO_RMII_MDIO_USBB_DATA7_IN      ( GND_net ),
        .RGMII_RX_CLK_IN                         ( GND_net ),
        .RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_IN  ( GND_net ),
        .RGMII_RXD0_RMII_RXD0_USBB_DATA0_IN      ( GND_net ),
        .RGMII_RXD1_RMII_RXD1_USBB_DATA1_IN      ( GND_net ),
        .RGMII_RXD2_RMII_RX_ER_USBB_DATA3_IN     ( GND_net ),
        .RGMII_RXD3_USBB_DATA4_IN                ( GND_net ),
        .RGMII_TX_CLK_IN                         ( GND_net ),
        .RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_IN     ( GND_net ),
        .RGMII_TXD0_RMII_TXD0_USBB_DIR_IN        ( GND_net ),
        .RGMII_TXD1_RMII_TXD1_USBB_STP_IN        ( GND_net ),
        .RGMII_TXD2_USBB_DATA5_IN                ( GND_net ),
        .RGMII_TXD3_USBB_DATA6_IN                ( GND_net ),
        .SPI0_SCK_USBA_XCLK_IN                   ( SPI_0_CLK_PAD_Y ),
        .SPI0_SDI_USBA_DIR_MGPIO5A_IN            ( SPI_0_DI_PAD_Y ),
        .SPI0_SDO_USBA_STP_MGPIO6A_IN            ( GND_net ),
        .SPI0_SS0_USBA_NXT_MGPIO7A_IN            ( SPI_0_SS0_PAD_Y ),
        .SPI0_SS1_USBA_DATA5_MGPIO8A_IN          ( GND_net ),
        .SPI0_SS2_USBA_DATA6_MGPIO9A_IN          ( GND_net ),
        .SPI0_SS3_USBA_DATA7_MGPIO10A_IN         ( GND_net ),
        .SPI0_SS4_MGPIO19A_IN                    ( GND_net ),
        .SPI0_SS5_MGPIO20A_IN                    ( GND_net ),
        .SPI0_SS6_MGPIO21A_IN                    ( GND_net ),
        .SPI0_SS7_MGPIO22A_IN                    ( GND_net ),
        .SPI1_SCK_IN                             ( GND_net ),
        .SPI1_SDI_MGPIO11A_IN                    ( GND_net ),
        .SPI1_SDO_MGPIO12A_IN                    ( GND_net ),
        .SPI1_SS0_MGPIO13A_IN                    ( GND_net ),
        .SPI1_SS1_MGPIO14A_IN                    ( GND_net ),
        .SPI1_SS2_MGPIO15A_IN                    ( GND_net ),
        .SPI1_SS3_MGPIO16A_IN                    ( GND_net ),
        .SPI1_SS4_MGPIO17A_IN                    ( GND_net ),
        .SPI1_SS5_MGPIO18A_IN                    ( GND_net ),
        .SPI1_SS6_MGPIO23A_IN                    ( GND_net ),
        .SPI1_SS7_MGPIO24A_IN                    ( GND_net ),
        .USBC_XCLK_IN                            ( GND_net ),
        // Outputs
        .CAN_RXBUS_MGPIO3A_H2F_A                 (  ),
        .CAN_RXBUS_MGPIO3A_H2F_B                 ( GPIO_3_M2F_net_0 ),
        .CAN_TX_EBL_MGPIO4A_H2F_A                (  ),
        .CAN_TX_EBL_MGPIO4A_H2F_B                (  ),
        .CAN_TXBUS_MGPIO2A_H2F_A                 (  ),
        .CAN_TXBUS_MGPIO2A_H2F_B                 (  ),
        .CLK_CONFIG_APB                          (  ),
        .COMMS_INT                               (  ),
        .CONFIG_PRESET_N                         (  ),
        .EDAC_ERROR                              (  ),
        .F_FM0_RDATA                             (  ),
        .F_FM0_READYOUT                          (  ),
        .F_FM0_RESP                              (  ),
        .F_HM0_ADDR                              (  ),
        .F_HM0_ENABLE                            (  ),
        .F_HM0_SEL                               (  ),
        .F_HM0_SIZE                              (  ),
        .F_HM0_TRANS1                            (  ),
        .F_HM0_WDATA                             (  ),
        .F_HM0_WRITE                             (  ),
        .FAB_CHRGVBUS                            (  ),
        .FAB_DISCHRGVBUS                         (  ),
        .FAB_DMPULLDOWN                          (  ),
        .FAB_DPPULLDOWN                          (  ),
        .FAB_DRVVBUS                             (  ),
        .FAB_IDPULLUP                            (  ),
        .FAB_OPMODE                              (  ),
        .FAB_SUSPENDM                            (  ),
        .FAB_TERMSEL                             (  ),
        .FAB_TXVALID                             (  ),
        .FAB_VCONTROL                            (  ),
        .FAB_VCONTROLLOADM                       (  ),
        .FAB_XCVRSEL                             (  ),
        .FAB_XDATAOUT                            (  ),
        .FACC_GLMUX_SEL                          (  ),
        .FIC32_0_MASTER                          (  ),
        .FIC32_1_MASTER                          (  ),
        .FPGA_RESET_N                            (  ),
        .GTX_CLK                                 (  ),
        .H2F_INTERRUPT                           (  ),
        .H2F_NMI                                 (  ),
        .H2FCALIB                                (  ),
        .I2C0_SCL_MGPIO31B_H2F_A                 (  ),
        .I2C0_SCL_MGPIO31B_H2F_B                 (  ),
        .I2C0_SDA_MGPIO30B_H2F_A                 (  ),
        .I2C0_SDA_MGPIO30B_H2F_B                 (  ),
        .I2C1_SCL_MGPIO1A_H2F_A                  (  ),
        .I2C1_SCL_MGPIO1A_H2F_B                  (  ),
        .I2C1_SDA_MGPIO0A_H2F_A                  (  ),
        .I2C1_SDA_MGPIO0A_H2F_B                  ( GPIO_0_M2F_net_0 ),
        .MDCF                                    (  ),
        .MDOENF                                  (  ),
        .MDOF                                    (  ),
        .MMUART0_CTS_MGPIO19B_H2F_A              (  ),
        .MMUART0_CTS_MGPIO19B_H2F_B              (  ),
        .MMUART0_DCD_MGPIO22B_H2F_A              (  ),
        .MMUART0_DCD_MGPIO22B_H2F_B              (  ),
        .MMUART0_DSR_MGPIO20B_H2F_A              (  ),
        .MMUART0_DSR_MGPIO20B_H2F_B              (  ),
        .MMUART0_DTR_MGPIO18B_H2F_A              (  ),
        .MMUART0_DTR_MGPIO18B_H2F_B              (  ),
        .MMUART0_RI_MGPIO21B_H2F_A               (  ),
        .MMUART0_RI_MGPIO21B_H2F_B               (  ),
        .MMUART0_RTS_MGPIO17B_H2F_A              (  ),
        .MMUART0_RTS_MGPIO17B_H2F_B              (  ),
        .MMUART0_RXD_MGPIO28B_H2F_A              (  ),
        .MMUART0_RXD_MGPIO28B_H2F_B              (  ),
        .MMUART0_SCK_MGPIO29B_H2F_A              (  ),
        .MMUART0_SCK_MGPIO29B_H2F_B              (  ),
        .MMUART0_TXD_MGPIO27B_H2F_A              (  ),
        .MMUART0_TXD_MGPIO27B_H2F_B              (  ),
        .MMUART1_DTR_MGPIO12B_H2F_A              (  ),
        .MMUART1_RTS_MGPIO11B_H2F_A              (  ),
        .MMUART1_RTS_MGPIO11B_H2F_B              (  ),
        .MMUART1_RXD_MGPIO26B_H2F_A              (  ),
        .MMUART1_RXD_MGPIO26B_H2F_B              (  ),
        .MMUART1_SCK_MGPIO25B_H2F_A              (  ),
        .MMUART1_SCK_MGPIO25B_H2F_B              (  ),
        .MMUART1_TXD_MGPIO24B_H2F_A              (  ),
        .MMUART1_TXD_MGPIO24B_H2F_B              (  ),
        .MPLL_LOCK                               (  ),
        .PER2_FABRIC_PADDR                       (  ),
        .PER2_FABRIC_PENABLE                     (  ),
        .PER2_FABRIC_PSEL                        (  ),
        .PER2_FABRIC_PWDATA                      (  ),
        .PER2_FABRIC_PWRITE                      (  ),
        .RTC_MATCH                               (  ),
        .SLEEPDEEP                               (  ),
        .SLEEPHOLDACK                            (  ),
        .SLEEPING                                (  ),
        .SMBALERT_NO0                            (  ),
        .SMBALERT_NO1                            (  ),
        .SMBSUS_NO0                              (  ),
        .SMBSUS_NO1                              (  ),
        .SPI0_CLK_OUT                            (  ),
        .SPI0_SDI_MGPIO5A_H2F_A                  (  ),
        .SPI0_SDI_MGPIO5A_H2F_B                  (  ),
        .SPI0_SDO_MGPIO6A_H2F_A                  (  ),
        .SPI0_SDO_MGPIO6A_H2F_B                  (  ),
        .SPI0_SS0_MGPIO7A_H2F_A                  (  ),
        .SPI0_SS0_MGPIO7A_H2F_B                  (  ),
        .SPI0_SS1_MGPIO8A_H2F_A                  (  ),
        .SPI0_SS1_MGPIO8A_H2F_B                  (  ),
        .SPI0_SS2_MGPIO9A_H2F_A                  (  ),
        .SPI0_SS2_MGPIO9A_H2F_B                  (  ),
        .SPI0_SS3_MGPIO10A_H2F_A                 (  ),
        .SPI0_SS3_MGPIO10A_H2F_B                 (  ),
        .SPI0_SS4_MGPIO19A_H2F_A                 (  ),
        .SPI0_SS5_MGPIO20A_H2F_A                 (  ),
        .SPI0_SS6_MGPIO21A_H2F_A                 (  ),
        .SPI0_SS7_MGPIO22A_H2F_A                 (  ),
        .SPI1_CLK_OUT                            ( SPI_1_CLK_M2F_net_0 ),
        .SPI1_SDI_MGPIO11A_H2F_A                 (  ),
        .SPI1_SDI_MGPIO11A_H2F_B                 (  ),
        .SPI1_SDO_MGPIO12A_H2F_A                 ( SPI_1_DO_M2F_net_0 ),
        .SPI1_SDO_MGPIO12A_H2F_B                 (  ),
        .SPI1_SS0_MGPIO13A_H2F_A                 ( SPI_1_SS0_M2F_net_0 ),
        .SPI1_SS0_MGPIO13A_H2F_B                 ( SPI_1_SS0_M2F_OE_net_0 ),
        .SPI1_SS1_MGPIO14A_H2F_A                 (  ),
        .SPI1_SS1_MGPIO14A_H2F_B                 (  ),
        .SPI1_SS2_MGPIO15A_H2F_A                 (  ),
        .SPI1_SS2_MGPIO15A_H2F_B                 (  ),
        .SPI1_SS3_MGPIO16A_H2F_A                 (  ),
        .SPI1_SS3_MGPIO16A_H2F_B                 (  ),
        .SPI1_SS4_MGPIO17A_H2F_A                 (  ),
        .SPI1_SS5_MGPIO18A_H2F_A                 (  ),
        .SPI1_SS6_MGPIO23A_H2F_A                 (  ),
        .SPI1_SS7_MGPIO24A_H2F_A                 (  ),
        .TCGF                                    (  ),
        .TRACECLK                                (  ),
        .TRACEDATA                               (  ),
        .TX_CLK                                  (  ),
        .TX_ENF                                  (  ),
        .TX_ERRF                                 (  ),
        .TXCTL_EN_RIF                            (  ),
        .TXD_RIF                                 (  ),
        .TXDF                                    (  ),
        .TXEV                                    (  ),
        .WDOGTIMEOUT                             (  ),
        .F_ARREADY_HREADYOUT1                    (  ),
        .F_AWREADY_HREADYOUT0                    (  ),
        .F_BID                                   (  ),
        .F_BRESP_HRESP0                          (  ),
        .F_BVALID                                (  ),
        .F_RDATA_HRDATA01                        (  ),
        .F_RID                                   (  ),
        .F_RLAST                                 (  ),
        .F_RRESP_HRESP1                          (  ),
        .F_RVALID                                (  ),
        .F_WREADY                                (  ),
        .MDDR_FABRIC_PRDATA                      (  ),
        .MDDR_FABRIC_PREADY                      (  ),
        .MDDR_FABRIC_PSLVERR                     (  ),
        .CAN_RXBUS_USBA_DATA1_MGPIO3A_OUT        (  ),
        .CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT       (  ),
        .CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT        (  ),
        .DRAM_ADDR                               (  ),
        .DRAM_BA                                 (  ),
        .DRAM_CASN                               (  ),
        .DRAM_CKE                                (  ),
        .DRAM_CLK                                (  ),
        .DRAM_CSN                                (  ),
        .DRAM_DM_RDQS_OUT                        (  ),
        .DRAM_DQ_OUT                             (  ),
        .DRAM_DQS_OUT                            (  ),
        .DRAM_FIFO_WE_OUT                        (  ),
        .DRAM_ODT                                (  ),
        .DRAM_RASN                               (  ),
        .DRAM_RSTN                               (  ),
        .DRAM_WEN                                (  ),
        .I2C0_SCL_USBC_DATA1_MGPIO31B_OUT        (  ),
        .I2C0_SDA_USBC_DATA0_MGPIO30B_OUT        (  ),
        .I2C1_SCL_USBA_DATA4_MGPIO1A_OUT         (  ),
        .I2C1_SDA_USBA_DATA3_MGPIO0A_OUT         (  ),
        .MGPIO25A_OUT                            (  ),
        .MGPIO26A_OUT                            (  ),
        .MMUART0_CTS_USBC_DATA7_MGPIO19B_OUT     (  ),
        .MMUART0_DCD_MGPIO22B_OUT                (  ),
        .MMUART0_DSR_MGPIO20B_OUT                (  ),
        .MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT     (  ),
        .MMUART0_RI_MGPIO21B_OUT                 (  ),
        .MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT     (  ),
        .MMUART0_RXD_USBC_STP_MGPIO28B_OUT       (  ),
        .MMUART0_SCK_USBC_NXT_MGPIO29B_OUT       (  ),
        .MMUART0_TXD_USBC_DIR_MGPIO27B_OUT       (  ),
        .MMUART1_CTS_MGPIO13B_OUT                (  ),
        .MMUART1_DCD_MGPIO16B_OUT                (  ),
        .MMUART1_DSR_MGPIO14B_OUT                (  ),
        .MMUART1_DTR_MGPIO12B_OUT                (  ),
        .MMUART1_RI_MGPIO15B_OUT                 (  ),
        .MMUART1_RTS_MGPIO11B_OUT                (  ),
        .MMUART1_RXD_USBC_DATA3_MGPIO26B_OUT     (  ),
        .MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT     (  ),
        .MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT     ( MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT ),
        .RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OUT    (  ),
        .RGMII_MDC_RMII_MDC_OUT                  (  ),
        .RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT     (  ),
        .RGMII_RX_CLK_OUT                        (  ),
        .RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT (  ),
        .RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT     (  ),
        .RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT     (  ),
        .RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT    (  ),
        .RGMII_RXD3_USBB_DATA4_OUT               (  ),
        .RGMII_TX_CLK_OUT                        (  ),
        .RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OUT    (  ),
        .RGMII_TXD0_RMII_TXD0_USBB_DIR_OUT       (  ),
        .RGMII_TXD1_RMII_TXD1_USBB_STP_OUT       (  ),
        .RGMII_TXD2_USBB_DATA5_OUT               (  ),
        .RGMII_TXD3_USBB_DATA6_OUT               (  ),
        .SPI0_SCK_USBA_XCLK_OUT                  ( MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OUT ),
        .SPI0_SDI_USBA_DIR_MGPIO5A_OUT           (  ),
        .SPI0_SDO_USBA_STP_MGPIO6A_OUT           ( MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OUT ),
        .SPI0_SS0_USBA_NXT_MGPIO7A_OUT           ( MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OUT ),
        .SPI0_SS1_USBA_DATA5_MGPIO8A_OUT         (  ),
        .SPI0_SS2_USBA_DATA6_MGPIO9A_OUT         (  ),
        .SPI0_SS3_USBA_DATA7_MGPIO10A_OUT        (  ),
        .SPI0_SS4_MGPIO19A_OUT                   (  ),
        .SPI0_SS5_MGPIO20A_OUT                   (  ),
        .SPI0_SS6_MGPIO21A_OUT                   (  ),
        .SPI0_SS7_MGPIO22A_OUT                   (  ),
        .SPI1_SCK_OUT                            (  ),
        .SPI1_SDI_MGPIO11A_OUT                   (  ),
        .SPI1_SDO_MGPIO12A_OUT                   (  ),
        .SPI1_SS0_MGPIO13A_OUT                   (  ),
        .SPI1_SS1_MGPIO14A_OUT                   (  ),
        .SPI1_SS2_MGPIO15A_OUT                   (  ),
        .SPI1_SS3_MGPIO16A_OUT                   (  ),
        .SPI1_SS4_MGPIO17A_OUT                   (  ),
        .SPI1_SS5_MGPIO18A_OUT                   (  ),
        .SPI1_SS6_MGPIO23A_OUT                   (  ),
        .SPI1_SS7_MGPIO24A_OUT                   (  ),
        .USBC_XCLK_OUT                           (  ),
        .CAN_RXBUS_USBA_DATA1_MGPIO3A_OE         (  ),
        .CAN_TX_EBL_USBA_DATA2_MGPIO4A_OE        (  ),
        .CAN_TXBUS_USBA_DATA0_MGPIO2A_OE         (  ),
        .DM_OE                                   (  ),
        .DRAM_DQ_OE                              (  ),
        .DRAM_DQS_OE                             (  ),
        .I2C0_SCL_USBC_DATA1_MGPIO31B_OE         (  ),
        .I2C0_SDA_USBC_DATA0_MGPIO30B_OE         (  ),
        .I2C1_SCL_USBA_DATA4_MGPIO1A_OE          (  ),
        .I2C1_SDA_USBA_DATA3_MGPIO0A_OE          (  ),
        .MGPIO25A_OE                             (  ),
        .MGPIO26A_OE                             (  ),
        .MMUART0_CTS_USBC_DATA7_MGPIO19B_OE      (  ),
        .MMUART0_DCD_MGPIO22B_OE                 (  ),
        .MMUART0_DSR_MGPIO20B_OE                 (  ),
        .MMUART0_DTR_USBC_DATA6_MGPIO18B_OE      (  ),
        .MMUART0_RI_MGPIO21B_OE                  (  ),
        .MMUART0_RTS_USBC_DATA5_MGPIO17B_OE      (  ),
        .MMUART0_RXD_USBC_STP_MGPIO28B_OE        (  ),
        .MMUART0_SCK_USBC_NXT_MGPIO29B_OE        (  ),
        .MMUART0_TXD_USBC_DIR_MGPIO27B_OE        (  ),
        .MMUART1_CTS_MGPIO13B_OE                 (  ),
        .MMUART1_DCD_MGPIO16B_OE                 (  ),
        .MMUART1_DSR_MGPIO14B_OE                 (  ),
        .MMUART1_DTR_MGPIO12B_OE                 (  ),
        .MMUART1_RI_MGPIO15B_OE                  (  ),
        .MMUART1_RTS_MGPIO11B_OE                 (  ),
        .MMUART1_RXD_USBC_DATA3_MGPIO26B_OE      (  ),
        .MMUART1_SCK_USBC_DATA4_MGPIO25B_OE      (  ),
        .MMUART1_TXD_USBC_DATA2_MGPIO24B_OE      ( MSS_ADLIB_INST_MMUART1_TXD_USBC_DATA2_MGPIO24B_OE ),
        .RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OE     (  ),
        .RGMII_MDC_RMII_MDC_OE                   (  ),
        .RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE      (  ),
        .RGMII_RX_CLK_OE                         (  ),
        .RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE  (  ),
        .RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE      (  ),
        .RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE      (  ),
        .RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE     (  ),
        .RGMII_RXD3_USBB_DATA4_OE                (  ),
        .RGMII_TX_CLK_OE                         (  ),
        .RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OE     (  ),
        .RGMII_TXD0_RMII_TXD0_USBB_DIR_OE        (  ),
        .RGMII_TXD1_RMII_TXD1_USBB_STP_OE        (  ),
        .RGMII_TXD2_USBB_DATA5_OE                (  ),
        .RGMII_TXD3_USBB_DATA6_OE                (  ),
        .SPI0_SCK_USBA_XCLK_OE                   ( MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OE ),
        .SPI0_SDI_USBA_DIR_MGPIO5A_OE            (  ),
        .SPI0_SDO_USBA_STP_MGPIO6A_OE            ( MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OE ),
        .SPI0_SS0_USBA_NXT_MGPIO7A_OE            ( MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OE ),
        .SPI0_SS1_USBA_DATA5_MGPIO8A_OE          (  ),
        .SPI0_SS2_USBA_DATA6_MGPIO9A_OE          (  ),
        .SPI0_SS3_USBA_DATA7_MGPIO10A_OE         (  ),
        .SPI0_SS4_MGPIO19A_OE                    (  ),
        .SPI0_SS5_MGPIO20A_OE                    (  ),
        .SPI0_SS6_MGPIO21A_OE                    (  ),
        .SPI0_SS7_MGPIO22A_OE                    (  ),
        .SPI1_SCK_OE                             (  ),
        .SPI1_SDI_MGPIO11A_OE                    (  ),
        .SPI1_SDO_MGPIO12A_OE                    (  ),
        .SPI1_SS0_MGPIO13A_OE                    (  ),
        .SPI1_SS1_MGPIO14A_OE                    (  ),
        .SPI1_SS2_MGPIO15A_OE                    (  ),
        .SPI1_SS3_MGPIO16A_OE                    (  ),
        .SPI1_SS4_MGPIO17A_OE                    (  ),
        .SPI1_SS5_MGPIO18A_OE                    (  ),
        .SPI1_SS6_MGPIO23A_OE                    (  ),
        .SPI1_SS7_MGPIO24A_OE                    (  ),
        .USBC_XCLK_OE                            (  ) 
        );

//--------BIBUF
BIBUF SPI_0_CLK_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OUT ),
        .E   ( MSS_ADLIB_INST_SPI0_SCK_USBA_XCLK_OE ),
        // Outputs
        .Y   ( SPI_0_CLK_PAD_Y ),
        // Inouts
        .PAD ( SPI_0_CLK ) 
        );

//--------INBUF
INBUF SPI_0_DI_PAD(
        // Inputs
        .PAD ( SPI_0_DI ),
        // Outputs
        .Y   ( SPI_0_DI_PAD_Y ) 
        );

//--------TRIBUFF
TRIBUFF SPI_0_DO_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OUT ),
        .E   ( MSS_ADLIB_INST_SPI0_SDO_USBA_STP_MGPIO6A_OE ),
        // Outputs
        .PAD ( SPI_0_DO_net_0 ) 
        );

//--------BIBUF
BIBUF SPI_0_SS0_PAD(
        // Inputs
        .D   ( MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OUT ),
        .E   ( MSS_ADLIB_INST_SPI0_SS0_USBA_NXT_MGPIO7A_OE ),
        // Outputs
        .Y   ( SPI_0_SS0_PAD_Y ),
        // Inouts
        .PAD ( SPI_0_SS0 ) 
        );


endmodule
