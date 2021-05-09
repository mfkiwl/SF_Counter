`timescale 1 ns/100 ps
// Version: 


module MSS_025(
       CAN_RXBUS_MGPIO3A_H2F_A,
       CAN_RXBUS_MGPIO3A_H2F_B,
       CAN_TX_EBL_MGPIO4A_H2F_A,
       CAN_TX_EBL_MGPIO4A_H2F_B,
       CAN_TXBUS_MGPIO2A_H2F_A,
       CAN_TXBUS_MGPIO2A_H2F_B,
       CLK_CONFIG_APB,
       COMMS_INT,
       CONFIG_PRESET_N,
       EDAC_ERROR,
       F_FM0_RDATA,
       F_FM0_READYOUT,
       F_FM0_RESP,
       F_HM0_ADDR,
       F_HM0_ENABLE,
       F_HM0_SEL,
       F_HM0_SIZE,
       F_HM0_TRANS1,
       F_HM0_WDATA,
       F_HM0_WRITE,
       FAB_CHRGVBUS,
       FAB_DISCHRGVBUS,
       FAB_DMPULLDOWN,
       FAB_DPPULLDOWN,
       FAB_DRVVBUS,
       FAB_IDPULLUP,
       FAB_OPMODE,
       FAB_SUSPENDM,
       FAB_TERMSEL,
       FAB_TXVALID,
       FAB_VCONTROL,
       FAB_VCONTROLLOADM,
       FAB_XCVRSEL,
       FAB_XDATAOUT,
       FACC_GLMUX_SEL,
       FIC32_0_MASTER,
       FIC32_1_MASTER,
       FPGA_RESET_N,
       GTX_CLK,
       H2F_INTERRUPT,
       H2F_NMI,
       H2FCALIB,
       I2C0_SCL_MGPIO31B_H2F_A,
       I2C0_SCL_MGPIO31B_H2F_B,
       I2C0_SDA_MGPIO30B_H2F_A,
       I2C0_SDA_MGPIO30B_H2F_B,
       I2C1_SCL_MGPIO1A_H2F_A,
       I2C1_SCL_MGPIO1A_H2F_B,
       I2C1_SDA_MGPIO0A_H2F_A,
       I2C1_SDA_MGPIO0A_H2F_B,
       MDCF,
       MDOENF,
       MDOF,
       MMUART0_CTS_MGPIO19B_H2F_A,
       MMUART0_CTS_MGPIO19B_H2F_B,
       MMUART0_DCD_MGPIO22B_H2F_A,
       MMUART0_DCD_MGPIO22B_H2F_B,
       MMUART0_DSR_MGPIO20B_H2F_A,
       MMUART0_DSR_MGPIO20B_H2F_B,
       MMUART0_DTR_MGPIO18B_H2F_A,
       MMUART0_DTR_MGPIO18B_H2F_B,
       MMUART0_RI_MGPIO21B_H2F_A,
       MMUART0_RI_MGPIO21B_H2F_B,
       MMUART0_RTS_MGPIO17B_H2F_A,
       MMUART0_RTS_MGPIO17B_H2F_B,
       MMUART0_RXD_MGPIO28B_H2F_A,
       MMUART0_RXD_MGPIO28B_H2F_B,
       MMUART0_SCK_MGPIO29B_H2F_A,
       MMUART0_SCK_MGPIO29B_H2F_B,
       MMUART0_TXD_MGPIO27B_H2F_A,
       MMUART0_TXD_MGPIO27B_H2F_B,
       MMUART1_DTR_MGPIO12B_H2F_A,
       MMUART1_RTS_MGPIO11B_H2F_A,
       MMUART1_RTS_MGPIO11B_H2F_B,
       MMUART1_RXD_MGPIO26B_H2F_A,
       MMUART1_RXD_MGPIO26B_H2F_B,
       MMUART1_SCK_MGPIO25B_H2F_A,
       MMUART1_SCK_MGPIO25B_H2F_B,
       MMUART1_TXD_MGPIO24B_H2F_A,
       MMUART1_TXD_MGPIO24B_H2F_B,
       MPLL_LOCK,
       PER2_FABRIC_PADDR,
       PER2_FABRIC_PENABLE,
       PER2_FABRIC_PSEL,
       PER2_FABRIC_PWDATA,
       PER2_FABRIC_PWRITE,
       RTC_MATCH,
       SLEEPDEEP,
       SLEEPHOLDACK,
       SLEEPING,
       SMBALERT_NO0,
       SMBALERT_NO1,
       SMBSUS_NO0,
       SMBSUS_NO1,
       SPI0_CLK_OUT,
       SPI0_SDI_MGPIO5A_H2F_A,
       SPI0_SDI_MGPIO5A_H2F_B,
       SPI0_SDO_MGPIO6A_H2F_A,
       SPI0_SDO_MGPIO6A_H2F_B,
       SPI0_SS0_MGPIO7A_H2F_A,
       SPI0_SS0_MGPIO7A_H2F_B,
       SPI0_SS1_MGPIO8A_H2F_A,
       SPI0_SS1_MGPIO8A_H2F_B,
       SPI0_SS2_MGPIO9A_H2F_A,
       SPI0_SS2_MGPIO9A_H2F_B,
       SPI0_SS3_MGPIO10A_H2F_A,
       SPI0_SS3_MGPIO10A_H2F_B,
       SPI0_SS4_MGPIO19A_H2F_A,
       SPI0_SS5_MGPIO20A_H2F_A,
       SPI0_SS6_MGPIO21A_H2F_A,
       SPI0_SS7_MGPIO22A_H2F_A,
       SPI1_CLK_OUT,
       SPI1_SDI_MGPIO11A_H2F_A,
       SPI1_SDI_MGPIO11A_H2F_B,
       SPI1_SDO_MGPIO12A_H2F_A,
       SPI1_SDO_MGPIO12A_H2F_B,
       SPI1_SS0_MGPIO13A_H2F_A,
       SPI1_SS0_MGPIO13A_H2F_B,
       SPI1_SS1_MGPIO14A_H2F_A,
       SPI1_SS1_MGPIO14A_H2F_B,
       SPI1_SS2_MGPIO15A_H2F_A,
       SPI1_SS2_MGPIO15A_H2F_B,
       SPI1_SS3_MGPIO16A_H2F_A,
       SPI1_SS3_MGPIO16A_H2F_B,
       SPI1_SS4_MGPIO17A_H2F_A,
       SPI1_SS5_MGPIO18A_H2F_A,
       SPI1_SS6_MGPIO23A_H2F_A,
       SPI1_SS7_MGPIO24A_H2F_A,
       TCGF,
       TRACECLK,
       TRACEDATA,
       TX_CLK,
       TX_ENF,
       TX_ERRF,
       TXCTL_EN_RIF,
       TXD_RIF,
       TXDF,
       TXEV,
       WDOGTIMEOUT,
       F_ARREADY_HREADYOUT1,
       F_AWREADY_HREADYOUT0,
       F_BID,
       F_BRESP_HRESP0,
       F_BVALID,
       F_RDATA_HRDATA01,
       F_RID,
       F_RLAST,
       F_RRESP_HRESP1,
       F_RVALID,
       F_WREADY,
       MDDR_FABRIC_PRDATA,
       MDDR_FABRIC_PREADY,
       MDDR_FABRIC_PSLVERR,
       CAN_RXBUS_F2H_SCP,
       CAN_TX_EBL_F2H_SCP,
       CAN_TXBUS_F2H_SCP,
       COLF,
       CRSF,
       F2_DMAREADY,
       F2H_INTERRUPT,
       F2HCALIB,
       F_DMAREADY,
       F_FM0_ADDR,
       F_FM0_ENABLE,
       F_FM0_MASTLOCK,
       F_FM0_READY,
       F_FM0_SEL,
       F_FM0_SIZE,
       F_FM0_TRANS1,
       F_FM0_WDATA,
       F_FM0_WRITE,
       F_HM0_RDATA,
       F_HM0_READY,
       F_HM0_RESP,
       FAB_AVALID,
       FAB_HOSTDISCON,
       FAB_IDDIG,
       FAB_LINESTATE,
       FAB_M3_RESET_N,
       FAB_PLL_LOCK,
       FAB_RXACTIVE,
       FAB_RXERROR,
       FAB_RXVALID,
       FAB_RXVALIDH,
       FAB_SESSEND,
       FAB_TXREADY,
       FAB_VBUSVALID,
       FAB_VSTATUS,
       FAB_XDATAIN,
       GTX_CLKPF,
       I2C0_BCLK,
       I2C0_SCL_F2H_SCP,
       I2C0_SDA_F2H_SCP,
       I2C1_BCLK,
       I2C1_SCL_F2H_SCP,
       I2C1_SDA_F2H_SCP,
       MDIF,
       MGPIO0A_F2H_GPIN,
       MGPIO10A_F2H_GPIN,
       MGPIO11A_F2H_GPIN,
       MGPIO11B_F2H_GPIN,
       MGPIO12A_F2H_GPIN,
       MGPIO13A_F2H_GPIN,
       MGPIO14A_F2H_GPIN,
       MGPIO15A_F2H_GPIN,
       MGPIO16A_F2H_GPIN,
       MGPIO17B_F2H_GPIN,
       MGPIO18B_F2H_GPIN,
       MGPIO19B_F2H_GPIN,
       MGPIO1A_F2H_GPIN,
       MGPIO20B_F2H_GPIN,
       MGPIO21B_F2H_GPIN,
       MGPIO22B_F2H_GPIN,
       MGPIO24B_F2H_GPIN,
       MGPIO25B_F2H_GPIN,
       MGPIO26B_F2H_GPIN,
       MGPIO27B_F2H_GPIN,
       MGPIO28B_F2H_GPIN,
       MGPIO29B_F2H_GPIN,
       MGPIO2A_F2H_GPIN,
       MGPIO30B_F2H_GPIN,
       MGPIO31B_F2H_GPIN,
       MGPIO3A_F2H_GPIN,
       MGPIO4A_F2H_GPIN,
       MGPIO5A_F2H_GPIN,
       MGPIO6A_F2H_GPIN,
       MGPIO7A_F2H_GPIN,
       MGPIO8A_F2H_GPIN,
       MGPIO9A_F2H_GPIN,
       MMUART0_CTS_F2H_SCP,
       MMUART0_DCD_F2H_SCP,
       MMUART0_DSR_F2H_SCP,
       MMUART0_DTR_F2H_SCP,
       MMUART0_RI_F2H_SCP,
       MMUART0_RTS_F2H_SCP,
       MMUART0_RXD_F2H_SCP,
       MMUART0_SCK_F2H_SCP,
       MMUART0_TXD_F2H_SCP,
       MMUART1_CTS_F2H_SCP,
       MMUART1_DCD_F2H_SCP,
       MMUART1_DSR_F2H_SCP,
       MMUART1_RI_F2H_SCP,
       MMUART1_RTS_F2H_SCP,
       MMUART1_RXD_F2H_SCP,
       MMUART1_SCK_F2H_SCP,
       MMUART1_TXD_F2H_SCP,
       PER2_FABRIC_PRDATA,
       PER2_FABRIC_PREADY,
       PER2_FABRIC_PSLVERR,
       RCGF,
       RX_CLKPF,
       RX_DVF,
       RX_ERRF,
       RX_EV,
       RXDF,
       SLEEPHOLDREQ,
       SMBALERT_NI0,
       SMBALERT_NI1,
       SMBSUS_NI0,
       SMBSUS_NI1,
       SPI0_CLK_IN,
       SPI0_SDI_F2H_SCP,
       SPI0_SDO_F2H_SCP,
       SPI0_SS0_F2H_SCP,
       SPI0_SS1_F2H_SCP,
       SPI0_SS2_F2H_SCP,
       SPI0_SS3_F2H_SCP,
       SPI1_CLK_IN,
       SPI1_SDI_F2H_SCP,
       SPI1_SDO_F2H_SCP,
       SPI1_SS0_F2H_SCP,
       SPI1_SS1_F2H_SCP,
       SPI1_SS2_F2H_SCP,
       SPI1_SS3_F2H_SCP,
       TX_CLKPF,
       USER_MSS_GPIO_RESET_N,
       USER_MSS_RESET_N,
       XCLK_FAB,
       CLK_BASE,
       CLK_MDDR_APB,
       F_ARADDR_HADDR1,
       F_ARBURST_HTRANS1,
       F_ARID_HSEL1,
       F_ARLEN_HBURST1,
       F_ARLOCK_HMASTLOCK1,
       F_ARSIZE_HSIZE1,
       F_ARVALID_HWRITE1,
       F_AWADDR_HADDR0,
       F_AWBURST_HTRANS0,
       F_AWID_HSEL0,
       F_AWLEN_HBURST0,
       F_AWLOCK_HMASTLOCK0,
       F_AWSIZE_HSIZE0,
       F_AWVALID_HWRITE0,
       F_BREADY,
       F_RMW_AXI,
       F_RREADY,
       F_WDATA_HWDATA01,
       F_WID_HREADY01,
       F_WLAST,
       F_WSTRB,
       F_WVALID,
       FPGA_MDDR_ARESET_N,
       MDDR_FABRIC_PADDR,
       MDDR_FABRIC_PENABLE,
       MDDR_FABRIC_PSEL,
       MDDR_FABRIC_PWDATA,
       MDDR_FABRIC_PWRITE,
       PRESET_N,
       CAN_RXBUS_USBA_DATA1_MGPIO3A_IN,
       CAN_TX_EBL_USBA_DATA2_MGPIO4A_IN,
       CAN_TXBUS_USBA_DATA0_MGPIO2A_IN,
       DM_IN,
       DRAM_DQ_IN,
       DRAM_DQS_IN,
       DRAM_FIFO_WE_IN,
       I2C0_SCL_USBC_DATA1_MGPIO31B_IN,
       I2C0_SDA_USBC_DATA0_MGPIO30B_IN,
       I2C1_SCL_USBA_DATA4_MGPIO1A_IN,
       I2C1_SDA_USBA_DATA3_MGPIO0A_IN,
       MGPIO25A_IN,
       MGPIO26A_IN,
       MMUART0_CTS_USBC_DATA7_MGPIO19B_IN,
       MMUART0_DCD_MGPIO22B_IN,
       MMUART0_DSR_MGPIO20B_IN,
       MMUART0_DTR_USBC_DATA6_MGPIO18B_IN,
       MMUART0_RI_MGPIO21B_IN,
       MMUART0_RTS_USBC_DATA5_MGPIO17B_IN,
       MMUART0_RXD_USBC_STP_MGPIO28B_IN,
       MMUART0_SCK_USBC_NXT_MGPIO29B_IN,
       MMUART0_TXD_USBC_DIR_MGPIO27B_IN,
       MMUART1_CTS_MGPIO13B_IN,
       MMUART1_DCD_MGPIO16B_IN,
       MMUART1_DSR_MGPIO14B_IN,
       MMUART1_DTR_MGPIO12B_IN,
       MMUART1_RI_MGPIO15B_IN,
       MMUART1_RTS_MGPIO11B_IN,
       MMUART1_RXD_USBC_DATA3_MGPIO26B_IN,
       MMUART1_SCK_USBC_DATA4_MGPIO25B_IN,
       MMUART1_TXD_USBC_DATA2_MGPIO24B_IN,
       RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_IN,
       RGMII_MDC_RMII_MDC_IN,
       RGMII_MDIO_RMII_MDIO_USBB_DATA7_IN,
       RGMII_RX_CLK_IN,
       RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_IN,
       RGMII_RXD0_RMII_RXD0_USBB_DATA0_IN,
       RGMII_RXD1_RMII_RXD1_USBB_DATA1_IN,
       RGMII_RXD2_RMII_RX_ER_USBB_DATA3_IN,
       RGMII_RXD3_USBB_DATA4_IN,
       RGMII_TX_CLK_IN,
       RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_IN,
       RGMII_TXD0_RMII_TXD0_USBB_DIR_IN,
       RGMII_TXD1_RMII_TXD1_USBB_STP_IN,
       RGMII_TXD2_USBB_DATA5_IN,
       RGMII_TXD3_USBB_DATA6_IN,
       SPI0_SCK_USBA_XCLK_IN,
       SPI0_SDI_USBA_DIR_MGPIO5A_IN,
       SPI0_SDO_USBA_STP_MGPIO6A_IN,
       SPI0_SS0_USBA_NXT_MGPIO7A_IN,
       SPI0_SS1_USBA_DATA5_MGPIO8A_IN,
       SPI0_SS2_USBA_DATA6_MGPIO9A_IN,
       SPI0_SS3_USBA_DATA7_MGPIO10A_IN,
       SPI0_SS4_MGPIO19A_IN,
       SPI0_SS5_MGPIO20A_IN,
       SPI0_SS6_MGPIO21A_IN,
       SPI0_SS7_MGPIO22A_IN,
       SPI1_SCK_IN,
       SPI1_SDI_MGPIO11A_IN,
       SPI1_SDO_MGPIO12A_IN,
       SPI1_SS0_MGPIO13A_IN,
       SPI1_SS1_MGPIO14A_IN,
       SPI1_SS2_MGPIO15A_IN,
       SPI1_SS3_MGPIO16A_IN,
       SPI1_SS4_MGPIO17A_IN,
       SPI1_SS5_MGPIO18A_IN,
       SPI1_SS6_MGPIO23A_IN,
       SPI1_SS7_MGPIO24A_IN,
       USBC_XCLK_IN,
       CAN_RXBUS_USBA_DATA1_MGPIO3A_OUT,
       CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT,
       CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT,
       DRAM_ADDR,
       DRAM_BA,
       DRAM_CASN,
       DRAM_CKE,
       DRAM_CLK,
       DRAM_CSN,
       DRAM_DM_RDQS_OUT,
       DRAM_DQ_OUT,
       DRAM_DQS_OUT,
       DRAM_FIFO_WE_OUT,
       DRAM_ODT,
       DRAM_RASN,
       DRAM_RSTN,
       DRAM_WEN,
       I2C0_SCL_USBC_DATA1_MGPIO31B_OUT,
       I2C0_SDA_USBC_DATA0_MGPIO30B_OUT,
       I2C1_SCL_USBA_DATA4_MGPIO1A_OUT,
       I2C1_SDA_USBA_DATA3_MGPIO0A_OUT,
       MGPIO25A_OUT,
       MGPIO26A_OUT,
       MMUART0_CTS_USBC_DATA7_MGPIO19B_OUT,
       MMUART0_DCD_MGPIO22B_OUT,
       MMUART0_DSR_MGPIO20B_OUT,
       MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT,
       MMUART0_RI_MGPIO21B_OUT,
       MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT,
       MMUART0_RXD_USBC_STP_MGPIO28B_OUT,
       MMUART0_SCK_USBC_NXT_MGPIO29B_OUT,
       MMUART0_TXD_USBC_DIR_MGPIO27B_OUT,
       MMUART1_CTS_MGPIO13B_OUT,
       MMUART1_DCD_MGPIO16B_OUT,
       MMUART1_DSR_MGPIO14B_OUT,
       MMUART1_DTR_MGPIO12B_OUT,
       MMUART1_RI_MGPIO15B_OUT,
       MMUART1_RTS_MGPIO11B_OUT,
       MMUART1_RXD_USBC_DATA3_MGPIO26B_OUT,
       MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT,
       MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT,
       RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OUT,
       RGMII_MDC_RMII_MDC_OUT,
       RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT,
       RGMII_RX_CLK_OUT,
       RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT,
       RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT,
       RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT,
       RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT,
       RGMII_RXD3_USBB_DATA4_OUT,
       RGMII_TX_CLK_OUT,
       RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OUT,
       RGMII_TXD0_RMII_TXD0_USBB_DIR_OUT,
       RGMII_TXD1_RMII_TXD1_USBB_STP_OUT,
       RGMII_TXD2_USBB_DATA5_OUT,
       RGMII_TXD3_USBB_DATA6_OUT,
       SPI0_SCK_USBA_XCLK_OUT,
       SPI0_SDI_USBA_DIR_MGPIO5A_OUT,
       SPI0_SDO_USBA_STP_MGPIO6A_OUT,
       SPI0_SS0_USBA_NXT_MGPIO7A_OUT,
       SPI0_SS1_USBA_DATA5_MGPIO8A_OUT,
       SPI0_SS2_USBA_DATA6_MGPIO9A_OUT,
       SPI0_SS3_USBA_DATA7_MGPIO10A_OUT,
       SPI0_SS4_MGPIO19A_OUT,
       SPI0_SS5_MGPIO20A_OUT,
       SPI0_SS6_MGPIO21A_OUT,
       SPI0_SS7_MGPIO22A_OUT,
       SPI1_SCK_OUT,
       SPI1_SDI_MGPIO11A_OUT,
       SPI1_SDO_MGPIO12A_OUT,
       SPI1_SS0_MGPIO13A_OUT,
       SPI1_SS1_MGPIO14A_OUT,
       SPI1_SS2_MGPIO15A_OUT,
       SPI1_SS3_MGPIO16A_OUT,
       SPI1_SS4_MGPIO17A_OUT,
       SPI1_SS5_MGPIO18A_OUT,
       SPI1_SS6_MGPIO23A_OUT,
       SPI1_SS7_MGPIO24A_OUT,
       USBC_XCLK_OUT,
       CAN_RXBUS_USBA_DATA1_MGPIO3A_OE,
       CAN_TX_EBL_USBA_DATA2_MGPIO4A_OE,
       CAN_TXBUS_USBA_DATA0_MGPIO2A_OE,
       DM_OE,
       DRAM_DQ_OE,
       DRAM_DQS_OE,
       I2C0_SCL_USBC_DATA1_MGPIO31B_OE,
       I2C0_SDA_USBC_DATA0_MGPIO30B_OE,
       I2C1_SCL_USBA_DATA4_MGPIO1A_OE,
       I2C1_SDA_USBA_DATA3_MGPIO0A_OE,
       MGPIO25A_OE,
       MGPIO26A_OE,
       MMUART0_CTS_USBC_DATA7_MGPIO19B_OE,
       MMUART0_DCD_MGPIO22B_OE,
       MMUART0_DSR_MGPIO20B_OE,
       MMUART0_DTR_USBC_DATA6_MGPIO18B_OE,
       MMUART0_RI_MGPIO21B_OE,
       MMUART0_RTS_USBC_DATA5_MGPIO17B_OE,
       MMUART0_RXD_USBC_STP_MGPIO28B_OE,
       MMUART0_SCK_USBC_NXT_MGPIO29B_OE,
       MMUART0_TXD_USBC_DIR_MGPIO27B_OE,
       MMUART1_CTS_MGPIO13B_OE,
       MMUART1_DCD_MGPIO16B_OE,
       MMUART1_DSR_MGPIO14B_OE,
       MMUART1_DTR_MGPIO12B_OE,
       MMUART1_RI_MGPIO15B_OE,
       MMUART1_RTS_MGPIO11B_OE,
       MMUART1_RXD_USBC_DATA3_MGPIO26B_OE,
       MMUART1_SCK_USBC_DATA4_MGPIO25B_OE,
       MMUART1_TXD_USBC_DATA2_MGPIO24B_OE,
       RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OE,
       RGMII_MDC_RMII_MDC_OE,
       RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE,
       RGMII_RX_CLK_OE,
       RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE,
       RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE,
       RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE,
       RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE,
       RGMII_RXD3_USBB_DATA4_OE,
       RGMII_TX_CLK_OE,
       RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OE,
       RGMII_TXD0_RMII_TXD0_USBB_DIR_OE,
       RGMII_TXD1_RMII_TXD1_USBB_STP_OE,
       RGMII_TXD2_USBB_DATA5_OE,
       RGMII_TXD3_USBB_DATA6_OE,
       SPI0_SCK_USBA_XCLK_OE,
       SPI0_SDI_USBA_DIR_MGPIO5A_OE,
       SPI0_SDO_USBA_STP_MGPIO6A_OE,
       SPI0_SS0_USBA_NXT_MGPIO7A_OE,
       SPI0_SS1_USBA_DATA5_MGPIO8A_OE,
       SPI0_SS2_USBA_DATA6_MGPIO9A_OE,
       SPI0_SS3_USBA_DATA7_MGPIO10A_OE,
       SPI0_SS4_MGPIO19A_OE,
       SPI0_SS5_MGPIO20A_OE,
       SPI0_SS6_MGPIO21A_OE,
       SPI0_SS7_MGPIO22A_OE,
       SPI1_SCK_OE,
       SPI1_SDI_MGPIO11A_OE,
       SPI1_SDO_MGPIO12A_OE,
       SPI1_SS0_MGPIO13A_OE,
       SPI1_SS1_MGPIO14A_OE,
       SPI1_SS2_MGPIO15A_OE,
       SPI1_SS3_MGPIO16A_OE,
       SPI1_SS4_MGPIO17A_OE,
       SPI1_SS5_MGPIO18A_OE,
       SPI1_SS6_MGPIO23A_OE,
       SPI1_SS7_MGPIO24A_OE,
       USBC_XCLK_OE
    )
/* synthesis black_box

pragma attribute MSS_025 ment_tsu0 CAN_RXBUS_F2H_SCP->CLK_BASE+1.484
pragma attribute MSS_025 ment_tsu1 F2HCALIB->CLK_BASE+1.331
pragma attribute MSS_025 ment_tsu2 F2H_INTERRUPT[0]->CLK_BASE+0.971
pragma attribute MSS_025 ment_tsu3 F2H_INTERRUPT[10]->CLK_BASE+1.103
pragma attribute MSS_025 ment_tsu4 F2H_INTERRUPT[11]->CLK_BASE+1.038
pragma attribute MSS_025 ment_tsu5 F2H_INTERRUPT[12]->CLK_BASE+1.024
pragma attribute MSS_025 ment_tsu6 F2H_INTERRUPT[13]->CLK_BASE+1.007
pragma attribute MSS_025 ment_tsu7 F2H_INTERRUPT[14]->CLK_BASE+1.037
pragma attribute MSS_025 ment_tsu8 F2H_INTERRUPT[15]->CLK_BASE+1.009
pragma attribute MSS_025 ment_tsu9 F2H_INTERRUPT[1]->CLK_BASE+0.978
pragma attribute MSS_025 ment_tsu10 F2H_INTERRUPT[2]->CLK_BASE+1.040
pragma attribute MSS_025 ment_tsu11 F2H_INTERRUPT[3]->CLK_BASE+0.972
pragma attribute MSS_025 ment_tsu12 F2H_INTERRUPT[4]->CLK_BASE+1.019
pragma attribute MSS_025 ment_tsu13 F2H_INTERRUPT[5]->CLK_BASE+1.060
pragma attribute MSS_025 ment_tsu14 F2H_INTERRUPT[6]->CLK_BASE+1.010
pragma attribute MSS_025 ment_tsu15 F2H_INTERRUPT[7]->CLK_BASE+1.005
pragma attribute MSS_025 ment_tsu16 F2H_INTERRUPT[8]->CLK_BASE+1.042
pragma attribute MSS_025 ment_tsu17 F2H_INTERRUPT[9]->CLK_BASE+0.995
pragma attribute MSS_025 ment_tsu18 F_FM0_ADDR[0]->CLK_BASE+0.976
pragma attribute MSS_025 ment_tsu19 F_FM0_ADDR[10]->CLK_BASE+1.007
pragma attribute MSS_025 ment_tsu20 F_FM0_ADDR[11]->CLK_BASE+1.031
pragma attribute MSS_025 ment_tsu21 F_FM0_ADDR[12]->CLK_BASE+1.063
pragma attribute MSS_025 ment_tsu22 F_FM0_ADDR[13]->CLK_BASE+1.161
pragma attribute MSS_025 ment_tsu23 F_FM0_ADDR[14]->CLK_BASE+1.044
pragma attribute MSS_025 ment_tsu24 F_FM0_ADDR[15]->CLK_BASE+1.160
pragma attribute MSS_025 ment_tsu25 F_FM0_ADDR[16]->CLK_BASE+1.033
pragma attribute MSS_025 ment_tsu26 F_FM0_ADDR[17]->CLK_BASE+0.600
pragma attribute MSS_025 ment_tsu27 F_FM0_ADDR[18]->CLK_BASE+0.791
pragma attribute MSS_025 ment_tsu28 F_FM0_ADDR[19]->CLK_BASE+0.573
pragma attribute MSS_025 ment_tsu29 F_FM0_ADDR[1]->CLK_BASE+0.998
pragma attribute MSS_025 ment_tsu30 F_FM0_ADDR[20]->CLK_BASE+0.595
pragma attribute MSS_025 ment_tsu31 F_FM0_ADDR[21]->CLK_BASE+0.546
pragma attribute MSS_025 ment_tsu32 F_FM0_ADDR[22]->CLK_BASE+0.592
pragma attribute MSS_025 ment_tsu33 F_FM0_ADDR[23]->CLK_BASE+0.608
pragma attribute MSS_025 ment_tsu34 F_FM0_ADDR[24]->CLK_BASE+0.601
pragma attribute MSS_025 ment_tsu35 F_FM0_ADDR[25]->CLK_BASE+0.692
pragma attribute MSS_025 ment_tsu36 F_FM0_ADDR[26]->CLK_BASE+0.735
pragma attribute MSS_025 ment_tsu37 F_FM0_ADDR[27]->CLK_BASE+0.749
pragma attribute MSS_025 ment_tsu38 F_FM0_ADDR[28]->CLK_BASE+0.744
pragma attribute MSS_025 ment_tsu39 F_FM0_ADDR[29]->CLK_BASE+0.565
pragma attribute MSS_025 ment_tsu40 F_FM0_ADDR[2]->CLK_BASE+0.487
pragma attribute MSS_025 ment_tsu41 F_FM0_ADDR[30]->CLK_BASE+0.668
pragma attribute MSS_025 ment_tsu42 F_FM0_ADDR[31]->CLK_BASE+0.586
pragma attribute MSS_025 ment_tsu43 F_FM0_ADDR[3]->CLK_BASE+1.011
pragma attribute MSS_025 ment_tsu44 F_FM0_ADDR[4]->CLK_BASE+1.014
pragma attribute MSS_025 ment_tsu45 F_FM0_ADDR[5]->CLK_BASE+0.944
pragma attribute MSS_025 ment_tsu46 F_FM0_ADDR[6]->CLK_BASE+0.994
pragma attribute MSS_025 ment_tsu47 F_FM0_ADDR[7]->CLK_BASE+1.016
pragma attribute MSS_025 ment_tsu48 F_FM0_ADDR[8]->CLK_BASE+1.032
pragma attribute MSS_025 ment_tsu49 F_FM0_ADDR[9]->CLK_BASE+1.058
pragma attribute MSS_025 ment_tsu50 F_FM0_ENABLE->CLK_BASE+1.065
pragma attribute MSS_025 ment_tsu51 F_FM0_SEL->CLK_BASE+1.136
pragma attribute MSS_025 ment_tsu52 F_FM0_WDATA[0]->CLK_BASE+0.499
pragma attribute MSS_025 ment_tsu53 F_FM0_WDATA[10]->CLK_BASE+0.365
pragma attribute MSS_025 ment_tsu54 F_FM0_WDATA[11]->CLK_BASE+0.397
pragma attribute MSS_025 ment_tsu55 F_FM0_WDATA[12]->CLK_BASE+0.409
pragma attribute MSS_025 ment_tsu56 F_FM0_WDATA[13]->CLK_BASE+0.483
pragma attribute MSS_025 ment_tsu57 F_FM0_WDATA[14]->CLK_BASE+0.678
pragma attribute MSS_025 ment_tsu58 F_FM0_WDATA[15]->CLK_BASE+0.438
pragma attribute MSS_025 ment_tsu59 F_FM0_WDATA[16]->CLK_BASE+0.430
pragma attribute MSS_025 ment_tsu60 F_FM0_WDATA[17]->CLK_BASE+0.560
pragma attribute MSS_025 ment_tsu61 F_FM0_WDATA[18]->CLK_BASE+0.553
pragma attribute MSS_025 ment_tsu62 F_FM0_WDATA[19]->CLK_BASE+0.386
pragma attribute MSS_025 ment_tsu63 F_FM0_WDATA[1]->CLK_BASE+0.457
pragma attribute MSS_025 ment_tsu64 F_FM0_WDATA[20]->CLK_BASE+0.404
pragma attribute MSS_025 ment_tsu65 F_FM0_WDATA[21]->CLK_BASE+0.393
pragma attribute MSS_025 ment_tsu66 F_FM0_WDATA[22]->CLK_BASE+0.448
pragma attribute MSS_025 ment_tsu67 F_FM0_WDATA[23]->CLK_BASE+0.359
pragma attribute MSS_025 ment_tsu68 F_FM0_WDATA[24]->CLK_BASE+0.491
pragma attribute MSS_025 ment_tsu69 F_FM0_WDATA[25]->CLK_BASE+0.406
pragma attribute MSS_025 ment_tsu70 F_FM0_WDATA[26]->CLK_BASE+0.401
pragma attribute MSS_025 ment_tsu71 F_FM0_WDATA[27]->CLK_BASE+0.470
pragma attribute MSS_025 ment_tsu72 F_FM0_WDATA[28]->CLK_BASE+0.422
pragma attribute MSS_025 ment_tsu73 F_FM0_WDATA[29]->CLK_BASE+0.387
pragma attribute MSS_025 ment_tsu74 F_FM0_WDATA[2]->CLK_BASE+0.392
pragma attribute MSS_025 ment_tsu75 F_FM0_WDATA[30]->CLK_BASE+0.363
pragma attribute MSS_025 ment_tsu76 F_FM0_WDATA[31]->CLK_BASE+0.370
pragma attribute MSS_025 ment_tsu77 F_FM0_WDATA[3]->CLK_BASE+0.391
pragma attribute MSS_025 ment_tsu78 F_FM0_WDATA[4]->CLK_BASE+0.407
pragma attribute MSS_025 ment_tsu79 F_FM0_WDATA[5]->CLK_BASE+0.499
pragma attribute MSS_025 ment_tsu80 F_FM0_WDATA[6]->CLK_BASE+0.379
pragma attribute MSS_025 ment_tsu81 F_FM0_WDATA[7]->CLK_BASE+0.372
pragma attribute MSS_025 ment_tsu82 F_FM0_WDATA[8]->CLK_BASE+0.376
pragma attribute MSS_025 ment_tsu83 F_FM0_WDATA[9]->CLK_BASE+0.364
pragma attribute MSS_025 ment_tsu84 F_FM0_WRITE->CLK_BASE+0.569
pragma attribute MSS_025 ment_tsu85 F_HM0_RDATA[0]->CLK_BASE+0.357
pragma attribute MSS_025 ment_tsu86 F_HM0_RDATA[10]->CLK_BASE+0.370
pragma attribute MSS_025 ment_tsu87 F_HM0_RDATA[11]->CLK_BASE+0.393
pragma attribute MSS_025 ment_tsu88 F_HM0_RDATA[12]->CLK_BASE+0.522
pragma attribute MSS_025 ment_tsu89 F_HM0_RDATA[13]->CLK_BASE+0.312
pragma attribute MSS_025 ment_tsu90 F_HM0_RDATA[14]->CLK_BASE+0.344
pragma attribute MSS_025 ment_tsu91 F_HM0_RDATA[15]->CLK_BASE+0.355
pragma attribute MSS_025 ment_tsu92 F_HM0_RDATA[16]->CLK_BASE+0.409
pragma attribute MSS_025 ment_tsu93 F_HM0_RDATA[17]->CLK_BASE+0.467
pragma attribute MSS_025 ment_tsu94 F_HM0_RDATA[18]->CLK_BASE+0.466
pragma attribute MSS_025 ment_tsu95 F_HM0_RDATA[19]->CLK_BASE+0.310
pragma attribute MSS_025 ment_tsu96 F_HM0_RDATA[1]->CLK_BASE+0.445
pragma attribute MSS_025 ment_tsu97 F_HM0_RDATA[20]->CLK_BASE+0.333
pragma attribute MSS_025 ment_tsu98 F_HM0_RDATA[21]->CLK_BASE+0.404
pragma attribute MSS_025 ment_tsu99 F_HM0_RDATA[22]->CLK_BASE+0.423
pragma attribute MSS_025 ment_tsu100 F_HM0_RDATA[23]->CLK_BASE+0.432
pragma attribute MSS_025 ment_tsu101 F_HM0_RDATA[24]->CLK_BASE+0.342
pragma attribute MSS_025 ment_tsu102 F_HM0_RDATA[25]->CLK_BASE+0.386
pragma attribute MSS_025 ment_tsu103 F_HM0_RDATA[26]->CLK_BASE+0.335
pragma attribute MSS_025 ment_tsu104 F_HM0_RDATA[27]->CLK_BASE+0.374
pragma attribute MSS_025 ment_tsu105 F_HM0_RDATA[28]->CLK_BASE+0.434
pragma attribute MSS_025 ment_tsu106 F_HM0_RDATA[29]->CLK_BASE+0.430
pragma attribute MSS_025 ment_tsu107 F_HM0_RDATA[2]->CLK_BASE+0.340
pragma attribute MSS_025 ment_tsu108 F_HM0_RDATA[30]->CLK_BASE+0.419
pragma attribute MSS_025 ment_tsu109 F_HM0_RDATA[31]->CLK_BASE+0.441
pragma attribute MSS_025 ment_tsu110 F_HM0_RDATA[3]->CLK_BASE+0.351
pragma attribute MSS_025 ment_tsu111 F_HM0_RDATA[4]->CLK_BASE+0.376
pragma attribute MSS_025 ment_tsu112 F_HM0_RDATA[5]->CLK_BASE+0.433
pragma attribute MSS_025 ment_tsu113 F_HM0_RDATA[6]->CLK_BASE+0.379
pragma attribute MSS_025 ment_tsu114 F_HM0_RDATA[7]->CLK_BASE+0.357
pragma attribute MSS_025 ment_tsu115 F_HM0_RDATA[8]->CLK_BASE+0.374
pragma attribute MSS_025 ment_tsu116 F_HM0_RDATA[9]->CLK_BASE+0.352
pragma attribute MSS_025 ment_tsu117 F_HM0_READY->CLK_BASE+1.559
pragma attribute MSS_025 ment_tsu118 F_HM0_RESP->CLK_BASE+0.895
pragma attribute MSS_025 ment_tsu119 I2C0_SDA_F2H_SCP->I2C0_SCL_F2H_SCP+0.197
pragma attribute MSS_025 ment_tsu120 I2C1_SDA_F2H_SCP->I2C1_SCL_F2H_SCP+0.279
pragma attribute MSS_025 ment_tsu121 MGPIO0A_F2H_GPIN->CLK_BASE+0.626
pragma attribute MSS_025 ment_tsu122 MGPIO10A_F2H_GPIN->CLK_BASE+0.483
pragma attribute MSS_025 ment_tsu123 MGPIO11A_F2H_GPIN->CLK_BASE+0.563
pragma attribute MSS_025 ment_tsu124 MGPIO11B_F2H_GPIN->CLK_BASE+0.603
pragma attribute MSS_025 ment_tsu125 MGPIO12A_F2H_GPIN->CLK_BASE+0.646
pragma attribute MSS_025 ment_tsu126 MGPIO13A_F2H_GPIN->CLK_BASE+0.568
pragma attribute MSS_025 ment_tsu127 MGPIO14A_F2H_GPIN->CLK_BASE+0.640
pragma attribute MSS_025 ment_tsu128 MGPIO15A_F2H_GPIN->CLK_BASE+0.672
pragma attribute MSS_025 ment_tsu129 MGPIO16A_F2H_GPIN->CLK_BASE+0.547
pragma attribute MSS_025 ment_tsu130 MGPIO17B_F2H_GPIN->CLK_BASE+0.561
pragma attribute MSS_025 ment_tsu131 MGPIO18B_F2H_GPIN->CLK_BASE+0.694
pragma attribute MSS_025 ment_tsu132 MGPIO19B_F2H_GPIN->CLK_BASE+0.636
pragma attribute MSS_025 ment_tsu133 MGPIO1A_F2H_GPIN->CLK_BASE+0.580
pragma attribute MSS_025 ment_tsu134 MGPIO20B_F2H_GPIN->CLK_BASE+0.717
pragma attribute MSS_025 ment_tsu135 MGPIO21B_F2H_GPIN->CLK_BASE+0.597
pragma attribute MSS_025 ment_tsu136 MGPIO22B_F2H_GPIN->CLK_BASE+0.665
pragma attribute MSS_025 ment_tsu137 MGPIO24B_F2H_GPIN->CLK_BASE+0.568
pragma attribute MSS_025 ment_tsu138 MGPIO25B_F2H_GPIN->CLK_BASE+0.675
pragma attribute MSS_025 ment_tsu139 MGPIO26B_F2H_GPIN->CLK_BASE+0.704
pragma attribute MSS_025 ment_tsu140 MGPIO27B_F2H_GPIN->CLK_BASE+0.655
pragma attribute MSS_025 ment_tsu141 MGPIO28B_F2H_GPIN->CLK_BASE+0.732
pragma attribute MSS_025 ment_tsu142 MGPIO29B_F2H_GPIN->CLK_BASE+0.943
pragma attribute MSS_025 ment_tsu143 MGPIO2A_F2H_GPIN->CLK_BASE+0.666
pragma attribute MSS_025 ment_tsu144 MGPIO30B_F2H_GPIN->CLK_BASE+0.659
pragma attribute MSS_025 ment_tsu145 MGPIO31B_F2H_GPIN->CLK_BASE+0.830
pragma attribute MSS_025 ment_tsu146 MGPIO3A_F2H_GPIN->CLK_BASE+0.547
pragma attribute MSS_025 ment_tsu147 MGPIO4A_F2H_GPIN->CLK_BASE+0.784
pragma attribute MSS_025 ment_tsu148 MGPIO5A_F2H_GPIN->CLK_BASE+0.706
pragma attribute MSS_025 ment_tsu149 MGPIO6A_F2H_GPIN->CLK_BASE+0.593
pragma attribute MSS_025 ment_tsu150 MGPIO7A_F2H_GPIN->CLK_BASE+0.640
pragma attribute MSS_025 ment_tsu151 MGPIO8A_F2H_GPIN->CLK_BASE+0.704
pragma attribute MSS_025 ment_tsu152 MGPIO9A_F2H_GPIN->CLK_BASE+0.486
pragma attribute MSS_025 ment_tsu153 MMUART0_CTS_F2H_SCP->CLK_BASE+1.146
pragma attribute MSS_025 ment_tsu154 MMUART0_DCD_F2H_SCP->CLK_BASE+1.219
pragma attribute MSS_025 ment_tsu155 MMUART0_DSR_F2H_SCP->CLK_BASE+1.170
pragma attribute MSS_025 ment_tsu156 MMUART0_RI_F2H_SCP->CLK_BASE+0.830
pragma attribute MSS_025 ment_tsu157 MMUART0_RXD_F2H_SCP->CLK_BASE+0.949
pragma attribute MSS_025 ment_tsu158 MMUART0_SCK_F2H_SCP->CLK_BASE+1.081
pragma attribute MSS_025 ment_tsu159 MMUART0_TXD_F2H_SCP->CLK_BASE+1.216
pragma attribute MSS_025 ment_tsu160 MMUART1_CTS_F2H_SCP->CLK_BASE+1.062
pragma attribute MSS_025 ment_tsu161 MMUART1_DCD_F2H_SCP->CLK_BASE+0.933
pragma attribute MSS_025 ment_tsu162 MMUART1_DSR_F2H_SCP->CLK_BASE+1.021
pragma attribute MSS_025 ment_tsu163 MMUART1_RI_F2H_SCP->CLK_BASE+0.822
pragma attribute MSS_025 ment_tsu164 MMUART1_SCK_F2H_SCP->CLK_BASE+0.811
pragma attribute MSS_025 ment_tsu165 MMUART1_TXD_F2H_SCP->CLK_BASE+1.064
pragma attribute MSS_025 ment_tsu166 SMBALERT_NI0->I2C0_SCL_F2H_SCP+-0.414
pragma attribute MSS_025 ment_tsu167 SMBALERT_NI1->I2C1_SCL_F2H_SCP+-0.116
pragma attribute MSS_025 ment_tsu168 SMBSUS_NI0->I2C0_SCL_F2H_SCP+-0.372
pragma attribute MSS_025 ment_tsu169 SMBSUS_NI1->I2C1_SCL_F2H_SCP+-0.157
pragma attribute MSS_025 ment_tsu170 SPI1_SDI_F2H_SCP->SPI1_CLK_IN+1.262
pragma attribute MSS_025 ment_tsu171 SPI1_SS0_F2H_SCP->SPI1_CLK_IN+0.103
pragma attribute MSS_025 ment_tco0 CLK_BASE->CAN_RXBUS_MGPIO3A_H2F_A+3.439
pragma attribute MSS_025 ment_tco1 CLK_BASE->CAN_RXBUS_MGPIO3A_H2F_B+3.465
pragma attribute MSS_025 ment_tco2 CLK_BASE->CAN_TXBUS_MGPIO2A_H2F_A+3.364
pragma attribute MSS_025 ment_tco3 CLK_BASE->CAN_TXBUS_MGPIO2A_H2F_B+3.451
pragma attribute MSS_025 ment_tco4 CLK_BASE->CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT+3.846
pragma attribute MSS_025 ment_tco5 CLK_BASE->CAN_TX_EBL_MGPIO4A_H2F_A+3.438
pragma attribute MSS_025 ment_tco6 CLK_BASE->CAN_TX_EBL_MGPIO4A_H2F_B+3.340
pragma attribute MSS_025 ment_tco7 CLK_BASE->CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT+3.752
pragma attribute MSS_025 ment_tco8 CLK_BASE->F_FM0_RDATA[0]+4.297
pragma attribute MSS_025 ment_tco9 CLK_BASE->F_FM0_RDATA[10]+4.255
pragma attribute MSS_025 ment_tco10 CLK_BASE->F_FM0_RDATA[11]+4.154
pragma attribute MSS_025 ment_tco11 CLK_BASE->F_FM0_RDATA[12]+4.326
pragma attribute MSS_025 ment_tco12 CLK_BASE->F_FM0_RDATA[13]+4.327
pragma attribute MSS_025 ment_tco13 CLK_BASE->F_FM0_RDATA[14]+4.205
pragma attribute MSS_025 ment_tco14 CLK_BASE->F_FM0_RDATA[15]+4.159
pragma attribute MSS_025 ment_tco15 CLK_BASE->F_FM0_RDATA[16]+4.240
pragma attribute MSS_025 ment_tco16 CLK_BASE->F_FM0_RDATA[17]+4.244
pragma attribute MSS_025 ment_tco17 CLK_BASE->F_FM0_RDATA[18]+4.216
pragma attribute MSS_025 ment_tco18 CLK_BASE->F_FM0_RDATA[19]+4.246
pragma attribute MSS_025 ment_tco19 CLK_BASE->F_FM0_RDATA[1]+4.187
pragma attribute MSS_025 ment_tco20 CLK_BASE->F_FM0_RDATA[20]+4.281
pragma attribute MSS_025 ment_tco21 CLK_BASE->F_FM0_RDATA[21]+4.277
pragma attribute MSS_025 ment_tco22 CLK_BASE->F_FM0_RDATA[22]+4.240
pragma attribute MSS_025 ment_tco23 CLK_BASE->F_FM0_RDATA[23]+4.230
pragma attribute MSS_025 ment_tco24 CLK_BASE->F_FM0_RDATA[24]+4.272
pragma attribute MSS_025 ment_tco25 CLK_BASE->F_FM0_RDATA[25]+4.259
pragma attribute MSS_025 ment_tco26 CLK_BASE->F_FM0_RDATA[26]+4.225
pragma attribute MSS_025 ment_tco27 CLK_BASE->F_FM0_RDATA[27]+4.316
pragma attribute MSS_025 ment_tco28 CLK_BASE->F_FM0_RDATA[28]+4.274
pragma attribute MSS_025 ment_tco29 CLK_BASE->F_FM0_RDATA[29]+4.293
pragma attribute MSS_025 ment_tco30 CLK_BASE->F_FM0_RDATA[2]+4.281
pragma attribute MSS_025 ment_tco31 CLK_BASE->F_FM0_RDATA[30]+4.190
pragma attribute MSS_025 ment_tco32 CLK_BASE->F_FM0_RDATA[31]+4.206
pragma attribute MSS_025 ment_tco33 CLK_BASE->F_FM0_RDATA[3]+4.304
pragma attribute MSS_025 ment_tco34 CLK_BASE->F_FM0_RDATA[4]+4.240
pragma attribute MSS_025 ment_tco35 CLK_BASE->F_FM0_RDATA[5]+4.160
pragma attribute MSS_025 ment_tco36 CLK_BASE->F_FM0_RDATA[6]+4.123
pragma attribute MSS_025 ment_tco37 CLK_BASE->F_FM0_RDATA[7]+4.168
pragma attribute MSS_025 ment_tco38 CLK_BASE->F_FM0_RDATA[8]+4.245
pragma attribute MSS_025 ment_tco39 CLK_BASE->F_FM0_RDATA[9]+4.141
pragma attribute MSS_025 ment_tco40 CLK_BASE->F_FM0_READYOUT+3.950
pragma attribute MSS_025 ment_tco41 CLK_BASE->F_FM0_RESP+3.881
pragma attribute MSS_025 ment_tco42 CLK_BASE->F_HM0_ADDR[0]+3.467
pragma attribute MSS_025 ment_tco43 CLK_BASE->F_HM0_ADDR[10]+3.247
pragma attribute MSS_025 ment_tco44 CLK_BASE->F_HM0_ADDR[11]+3.262
pragma attribute MSS_025 ment_tco45 CLK_BASE->F_HM0_ADDR[12]+3.203
pragma attribute MSS_025 ment_tco46 CLK_BASE->F_HM0_ADDR[13]+3.243
pragma attribute MSS_025 ment_tco47 CLK_BASE->F_HM0_ADDR[14]+3.210
pragma attribute MSS_025 ment_tco48 CLK_BASE->F_HM0_ADDR[15]+3.237
pragma attribute MSS_025 ment_tco49 CLK_BASE->F_HM0_ADDR[16]+3.254
pragma attribute MSS_025 ment_tco50 CLK_BASE->F_HM0_ADDR[17]+3.250
pragma attribute MSS_025 ment_tco51 CLK_BASE->F_HM0_ADDR[18]+3.238
pragma attribute MSS_025 ment_tco52 CLK_BASE->F_HM0_ADDR[19]+3.226
pragma attribute MSS_025 ment_tco53 CLK_BASE->F_HM0_ADDR[1]+3.508
pragma attribute MSS_025 ment_tco54 CLK_BASE->F_HM0_ADDR[20]+3.219
pragma attribute MSS_025 ment_tco55 CLK_BASE->F_HM0_ADDR[21]+3.222
pragma attribute MSS_025 ment_tco56 CLK_BASE->F_HM0_ADDR[22]+3.244
pragma attribute MSS_025 ment_tco57 CLK_BASE->F_HM0_ADDR[23]+3.277
pragma attribute MSS_025 ment_tco58 CLK_BASE->F_HM0_ADDR[24]+3.194
pragma attribute MSS_025 ment_tco59 CLK_BASE->F_HM0_ADDR[25]+3.228
pragma attribute MSS_025 ment_tco60 CLK_BASE->F_HM0_ADDR[26]+3.270
pragma attribute MSS_025 ment_tco61 CLK_BASE->F_HM0_ADDR[27]+3.226
pragma attribute MSS_025 ment_tco62 CLK_BASE->F_HM0_ADDR[28]+3.261
pragma attribute MSS_025 ment_tco63 CLK_BASE->F_HM0_ADDR[29]+3.191
pragma attribute MSS_025 ment_tco64 CLK_BASE->F_HM0_ADDR[2]+3.266
pragma attribute MSS_025 ment_tco65 CLK_BASE->F_HM0_ADDR[30]+3.225
pragma attribute MSS_025 ment_tco66 CLK_BASE->F_HM0_ADDR[31]+3.261
pragma attribute MSS_025 ment_tco67 CLK_BASE->F_HM0_ADDR[3]+3.231
pragma attribute MSS_025 ment_tco68 CLK_BASE->F_HM0_ADDR[4]+3.236
pragma attribute MSS_025 ment_tco69 CLK_BASE->F_HM0_ADDR[5]+3.253
pragma attribute MSS_025 ment_tco70 CLK_BASE->F_HM0_ADDR[6]+3.234
pragma attribute MSS_025 ment_tco71 CLK_BASE->F_HM0_ADDR[7]+3.222
pragma attribute MSS_025 ment_tco72 CLK_BASE->F_HM0_ADDR[8]+3.275
pragma attribute MSS_025 ment_tco73 CLK_BASE->F_HM0_ADDR[9]+3.222
pragma attribute MSS_025 ment_tco74 CLK_BASE->F_HM0_ENABLE+3.399
pragma attribute MSS_025 ment_tco75 CLK_BASE->F_HM0_SEL+3.297
pragma attribute MSS_025 ment_tco76 CLK_BASE->F_HM0_WDATA[0]+3.200
pragma attribute MSS_025 ment_tco77 CLK_BASE->F_HM0_WDATA[10]+3.343
pragma attribute MSS_025 ment_tco78 CLK_BASE->F_HM0_WDATA[11]+3.396
pragma attribute MSS_025 ment_tco79 CLK_BASE->F_HM0_WDATA[12]+3.330
pragma attribute MSS_025 ment_tco80 CLK_BASE->F_HM0_WDATA[13]+3.479
pragma attribute MSS_025 ment_tco81 CLK_BASE->F_HM0_WDATA[14]+3.261
pragma attribute MSS_025 ment_tco82 CLK_BASE->F_HM0_WDATA[15]+3.391
pragma attribute MSS_025 ment_tco83 CLK_BASE->F_HM0_WDATA[16]+3.362
pragma attribute MSS_025 ment_tco84 CLK_BASE->F_HM0_WDATA[17]+3.406
pragma attribute MSS_025 ment_tco85 CLK_BASE->F_HM0_WDATA[18]+3.333
pragma attribute MSS_025 ment_tco86 CLK_BASE->F_HM0_WDATA[19]+3.466
pragma attribute MSS_025 ment_tco87 CLK_BASE->F_HM0_WDATA[1]+3.207
pragma attribute MSS_025 ment_tco88 CLK_BASE->F_HM0_WDATA[20]+3.335
pragma attribute MSS_025 ment_tco89 CLK_BASE->F_HM0_WDATA[21]+3.457
pragma attribute MSS_025 ment_tco90 CLK_BASE->F_HM0_WDATA[22]+3.420
pragma attribute MSS_025 ment_tco91 CLK_BASE->F_HM0_WDATA[23]+3.129
pragma attribute MSS_025 ment_tco92 CLK_BASE->F_HM0_WDATA[24]+3.325
pragma attribute MSS_025 ment_tco93 CLK_BASE->F_HM0_WDATA[25]+3.482
pragma attribute MSS_025 ment_tco94 CLK_BASE->F_HM0_WDATA[26]+3.516
pragma attribute MSS_025 ment_tco95 CLK_BASE->F_HM0_WDATA[27]+3.480
pragma attribute MSS_025 ment_tco96 CLK_BASE->F_HM0_WDATA[28]+3.453
pragma attribute MSS_025 ment_tco97 CLK_BASE->F_HM0_WDATA[29]+3.514
pragma attribute MSS_025 ment_tco98 CLK_BASE->F_HM0_WDATA[2]+3.287
pragma attribute MSS_025 ment_tco99 CLK_BASE->F_HM0_WDATA[30]+3.565
pragma attribute MSS_025 ment_tco100 CLK_BASE->F_HM0_WDATA[31]+3.516
pragma attribute MSS_025 ment_tco101 CLK_BASE->F_HM0_WDATA[3]+3.144
pragma attribute MSS_025 ment_tco102 CLK_BASE->F_HM0_WDATA[4]+3.342
pragma attribute MSS_025 ment_tco103 CLK_BASE->F_HM0_WDATA[5]+3.331
pragma attribute MSS_025 ment_tco104 CLK_BASE->F_HM0_WDATA[6]+3.421
pragma attribute MSS_025 ment_tco105 CLK_BASE->F_HM0_WDATA[7]+3.428
pragma attribute MSS_025 ment_tco106 CLK_BASE->F_HM0_WDATA[8]+3.434
pragma attribute MSS_025 ment_tco107 CLK_BASE->F_HM0_WDATA[9]+3.423
pragma attribute MSS_025 ment_tco108 CLK_BASE->F_HM0_WRITE+3.634
pragma attribute MSS_025 ment_tco109 CLK_BASE->H2FCALIB+3.131
pragma attribute MSS_025 ment_tco110 CLK_BASE->I2C0_SCL_MGPIO31B_H2F_B+3.495
pragma attribute MSS_025 ment_tco111 CLK_BASE->I2C0_SCL_USBC_DATA1_MGPIO31B_OE+3.495
pragma attribute MSS_025 ment_tco112 CLK_BASE->I2C0_SDA_MGPIO30B_H2F_A+3.541
pragma attribute MSS_025 ment_tco113 CLK_BASE->I2C0_SDA_MGPIO30B_H2F_B+3.437
pragma attribute MSS_025 ment_tco114 CLK_BASE->I2C0_SDA_USBC_DATA0_MGPIO30B_OE+2.923
pragma attribute MSS_025 ment_tco115 CLK_BASE->I2C1_SCL_MGPIO1A_H2F_B+3.445
pragma attribute MSS_025 ment_tco116 CLK_BASE->I2C1_SCL_USBA_DATA4_MGPIO1A_OE+3.470
pragma attribute MSS_025 ment_tco117 CLK_BASE->I2C1_SDA_MGPIO0A_H2F_A+3.387
pragma attribute MSS_025 ment_tco118 CLK_BASE->I2C1_SDA_MGPIO0A_H2F_B+3.538
pragma attribute MSS_025 ment_tco119 CLK_BASE->I2C1_SDA_USBA_DATA3_MGPIO0A_OE+3.370
pragma attribute MSS_025 ment_tco120 CLK_BASE->MGPIO25A_OE+2.823
pragma attribute MSS_025 ment_tco121 CLK_BASE->MGPIO25A_OUT+2.743
pragma attribute MSS_025 ment_tco122 CLK_BASE->MGPIO26A_OE+2.781
pragma attribute MSS_025 ment_tco123 CLK_BASE->MGPIO26A_OUT+2.864
pragma attribute MSS_025 ment_tco124 CLK_BASE->MMUART0_CTS_MGPIO19B_H2F_A+3.403
pragma attribute MSS_025 ment_tco125 CLK_BASE->MMUART0_CTS_MGPIO19B_H2F_B+3.548
pragma attribute MSS_025 ment_tco126 CLK_BASE->MMUART0_DCD_MGPIO22B_H2F_A+3.267
pragma attribute MSS_025 ment_tco127 CLK_BASE->MMUART0_DCD_MGPIO22B_H2F_B+3.437
pragma attribute MSS_025 ment_tco128 CLK_BASE->MMUART0_DSR_MGPIO20B_H2F_A+3.295
pragma attribute MSS_025 ment_tco129 CLK_BASE->MMUART0_DSR_MGPIO20B_H2F_B+3.486
pragma attribute MSS_025 ment_tco130 CLK_BASE->MMUART0_DTR_MGPIO18B_H2F_A+3.273
pragma attribute MSS_025 ment_tco131 CLK_BASE->MMUART0_DTR_MGPIO18B_H2F_B+3.403
pragma attribute MSS_025 ment_tco132 CLK_BASE->MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT+2.864
pragma attribute MSS_025 ment_tco133 CLK_BASE->MMUART0_RI_MGPIO21B_H2F_A+3.493
pragma attribute MSS_025 ment_tco134 CLK_BASE->MMUART0_RI_MGPIO21B_H2F_B+3.454
pragma attribute MSS_025 ment_tco135 CLK_BASE->MMUART0_RTS_MGPIO17B_H2F_A+3.483
pragma attribute MSS_025 ment_tco136 CLK_BASE->MMUART0_RTS_MGPIO17B_H2F_B+3.441
pragma attribute MSS_025 ment_tco137 CLK_BASE->MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT+2.981
pragma attribute MSS_025 ment_tco138 CLK_BASE->MMUART0_RXD_MGPIO28B_H2F_A+3.548
pragma attribute MSS_025 ment_tco139 CLK_BASE->MMUART0_RXD_MGPIO28B_H2F_B+3.469
pragma attribute MSS_025 ment_tco140 CLK_BASE->MMUART0_SCK_MGPIO29B_H2F_A+3.323
pragma attribute MSS_025 ment_tco141 CLK_BASE->MMUART0_SCK_MGPIO29B_H2F_B+3.442
pragma attribute MSS_025 ment_tco142 CLK_BASE->MMUART0_SCK_USBC_NXT_MGPIO29B_OE+3.211
pragma attribute MSS_025 ment_tco143 CLK_BASE->MMUART0_SCK_USBC_NXT_MGPIO29B_OUT+2.764
pragma attribute MSS_025 ment_tco144 CLK_BASE->MMUART0_TXD_MGPIO27B_H2F_A+3.541
pragma attribute MSS_025 ment_tco145 CLK_BASE->MMUART0_TXD_MGPIO27B_H2F_B+3.439
pragma attribute MSS_025 ment_tco146 CLK_BASE->MMUART0_TXD_USBC_DIR_MGPIO27B_OE+3.476
pragma attribute MSS_025 ment_tco147 CLK_BASE->MMUART0_TXD_USBC_DIR_MGPIO27B_OUT+2.966
pragma attribute MSS_025 ment_tco148 CLK_BASE->MMUART1_DTR_MGPIO12B_H2F_A+3.391
pragma attribute MSS_025 ment_tco149 CLK_BASE->MMUART1_DTR_MGPIO12B_OUT+3.117
pragma attribute MSS_025 ment_tco150 CLK_BASE->MMUART1_RTS_MGPIO11B_H2F_A+3.384
pragma attribute MSS_025 ment_tco151 CLK_BASE->MMUART1_RTS_MGPIO11B_H2F_B+3.436
pragma attribute MSS_025 ment_tco152 CLK_BASE->MMUART1_RTS_MGPIO11B_OUT+3.077
pragma attribute MSS_025 ment_tco153 CLK_BASE->MMUART1_RXD_MGPIO26B_H2F_A+3.508
pragma attribute MSS_025 ment_tco154 CLK_BASE->MMUART1_RXD_MGPIO26B_H2F_B+3.215
pragma attribute MSS_025 ment_tco155 CLK_BASE->MMUART1_SCK_MGPIO25B_H2F_A+3.317
pragma attribute MSS_025 ment_tco156 CLK_BASE->MMUART1_SCK_MGPIO25B_H2F_B+3.509
pragma attribute MSS_025 ment_tco157 CLK_BASE->MMUART1_SCK_USBC_DATA4_MGPIO25B_OE+3.691
pragma attribute MSS_025 ment_tco158 CLK_BASE->MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT+2.730
pragma attribute MSS_025 ment_tco159 CLK_BASE->MMUART1_TXD_MGPIO24B_H2F_A+3.464
pragma attribute MSS_025 ment_tco160 CLK_BASE->MMUART1_TXD_MGPIO24B_H2F_B+4.454
pragma attribute MSS_025 ment_tco161 CLK_BASE->MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT+3.318
pragma attribute MSS_025 ment_tco162 CLK_BASE->RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE+3.954
pragma attribute MSS_025 ment_tco163 CLK_BASE->RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT+4.201
pragma attribute MSS_025 ment_tco164 CLK_BASE->SPI0_SDI_MGPIO5A_H2F_A+3.546
pragma attribute MSS_025 ment_tco165 CLK_BASE->SPI0_SDI_MGPIO5A_H2F_B+3.547
pragma attribute MSS_025 ment_tco166 CLK_BASE->SPI0_SDO_MGPIO6A_H2F_A+3.616
pragma attribute MSS_025 ment_tco167 CLK_BASE->SPI0_SDO_MGPIO6A_H2F_B+3.530
pragma attribute MSS_025 ment_tco168 CLK_BASE->SPI0_SDO_USBA_STP_MGPIO6A_OUT+5.270
pragma attribute MSS_025 ment_tco169 CLK_BASE->SPI0_SS0_MGPIO7A_H2F_A+3.399
pragma attribute MSS_025 ment_tco170 CLK_BASE->SPI0_SS0_MGPIO7A_H2F_B+3.503
pragma attribute MSS_025 ment_tco171 CLK_BASE->SPI0_SS1_MGPIO8A_H2F_A+3.533
pragma attribute MSS_025 ment_tco172 CLK_BASE->SPI0_SS1_MGPIO8A_H2F_B+3.558
pragma attribute MSS_025 ment_tco173 CLK_BASE->SPI0_SS2_MGPIO9A_H2F_A+3.368
pragma attribute MSS_025 ment_tco174 CLK_BASE->SPI0_SS2_MGPIO9A_H2F_B+3.395
pragma attribute MSS_025 ment_tco175 CLK_BASE->SPI0_SS3_MGPIO10A_H2F_A+3.422
pragma attribute MSS_025 ment_tco176 CLK_BASE->SPI0_SS3_MGPIO10A_H2F_B+3.482
pragma attribute MSS_025 ment_tco177 CLK_BASE->SPI0_SS4_MGPIO19A_H2F_A+3.563
pragma attribute MSS_025 ment_tco178 CLK_BASE->SPI0_SS5_MGPIO20A_H2F_A+3.248
pragma attribute MSS_025 ment_tco179 CLK_BASE->SPI0_SS6_MGPIO21A_H2F_A+3.435
pragma attribute MSS_025 ment_tco180 CLK_BASE->SPI0_SS7_MGPIO22A_H2F_A+3.667
pragma attribute MSS_025 ment_tco181 CLK_BASE->SPI1_SDI_MGPIO11A_H2F_A+3.621
pragma attribute MSS_025 ment_tco182 CLK_BASE->SPI1_SDI_MGPIO11A_H2F_B+3.944
pragma attribute MSS_025 ment_tco183 CLK_BASE->SPI1_SDO_MGPIO12A_H2F_B+5.142
pragma attribute MSS_025 ment_tco184 CLK_BASE->SPI1_SDO_MGPIO12A_OE+5.431
pragma attribute MSS_025 ment_tco185 CLK_BASE->SPI1_SDO_MGPIO12A_OUT+5.613
pragma attribute MSS_025 ment_tco186 CLK_BASE->SPI1_SS1_MGPIO14A_H2F_A+3.397
pragma attribute MSS_025 ment_tco187 CLK_BASE->SPI1_SS1_MGPIO14A_H2F_B+3.268
pragma attribute MSS_025 ment_tco188 CLK_BASE->SPI1_SS2_MGPIO15A_H2F_A+3.442
pragma attribute MSS_025 ment_tco189 CLK_BASE->SPI1_SS2_MGPIO15A_H2F_B+3.288
pragma attribute MSS_025 ment_tco190 CLK_BASE->SPI1_SS3_MGPIO16A_H2F_A+3.319
pragma attribute MSS_025 ment_tco191 CLK_BASE->SPI1_SS3_MGPIO16A_H2F_B+3.381
pragma attribute MSS_025 ment_tco192 CLK_BASE->SPI1_SS4_MGPIO17A_H2F_A+3.689
pragma attribute MSS_025 ment_tco193 CLK_BASE->SPI1_SS5_MGPIO18A_H2F_A+3.385
pragma attribute MSS_025 ment_tco194 CLK_BASE->SPI1_SS6_MGPIO23A_H2F_A+3.501
pragma attribute MSS_025 ment_tco195 CLK_BASE->SPI1_SS7_MGPIO24A_H2F_A+3.443
*/
/* synthesis black_box black_box_pad ="" */
 ;
output CAN_RXBUS_MGPIO3A_H2F_A;
output CAN_RXBUS_MGPIO3A_H2F_B;
output CAN_TX_EBL_MGPIO4A_H2F_A;
output CAN_TX_EBL_MGPIO4A_H2F_B;
output CAN_TXBUS_MGPIO2A_H2F_A;
output CAN_TXBUS_MGPIO2A_H2F_B;
output CLK_CONFIG_APB;
output COMMS_INT;
output CONFIG_PRESET_N;
output [7:0] EDAC_ERROR;
output [31:0] F_FM0_RDATA;
output F_FM0_READYOUT;
output F_FM0_RESP;
output [31:0] F_HM0_ADDR;
output F_HM0_ENABLE;
output F_HM0_SEL;
output [1:0] F_HM0_SIZE;
output F_HM0_TRANS1;
output [31:0] F_HM0_WDATA;
output F_HM0_WRITE;
output FAB_CHRGVBUS;
output FAB_DISCHRGVBUS;
output FAB_DMPULLDOWN;
output FAB_DPPULLDOWN;
output FAB_DRVVBUS;
output FAB_IDPULLUP;
output [1:0] FAB_OPMODE;
output FAB_SUSPENDM;
output FAB_TERMSEL;
output FAB_TXVALID;
output [3:0] FAB_VCONTROL;
output FAB_VCONTROLLOADM;
output [1:0] FAB_XCVRSEL;
output [7:0] FAB_XDATAOUT;
output FACC_GLMUX_SEL;
output [1:0] FIC32_0_MASTER;
output [1:0] FIC32_1_MASTER;
output FPGA_RESET_N;
output GTX_CLK;
output [15:0] H2F_INTERRUPT;
output H2F_NMI;
output H2FCALIB;
output I2C0_SCL_MGPIO31B_H2F_A;
output I2C0_SCL_MGPIO31B_H2F_B;
output I2C0_SDA_MGPIO30B_H2F_A;
output I2C0_SDA_MGPIO30B_H2F_B;
output I2C1_SCL_MGPIO1A_H2F_A;
output I2C1_SCL_MGPIO1A_H2F_B;
output I2C1_SDA_MGPIO0A_H2F_A;
output I2C1_SDA_MGPIO0A_H2F_B;
output MDCF;
output MDOENF;
output MDOF;
output MMUART0_CTS_MGPIO19B_H2F_A;
output MMUART0_CTS_MGPIO19B_H2F_B;
output MMUART0_DCD_MGPIO22B_H2F_A;
output MMUART0_DCD_MGPIO22B_H2F_B;
output MMUART0_DSR_MGPIO20B_H2F_A;
output MMUART0_DSR_MGPIO20B_H2F_B;
output MMUART0_DTR_MGPIO18B_H2F_A;
output MMUART0_DTR_MGPIO18B_H2F_B;
output MMUART0_RI_MGPIO21B_H2F_A;
output MMUART0_RI_MGPIO21B_H2F_B;
output MMUART0_RTS_MGPIO17B_H2F_A;
output MMUART0_RTS_MGPIO17B_H2F_B;
output MMUART0_RXD_MGPIO28B_H2F_A;
output MMUART0_RXD_MGPIO28B_H2F_B;
output MMUART0_SCK_MGPIO29B_H2F_A;
output MMUART0_SCK_MGPIO29B_H2F_B;
output MMUART0_TXD_MGPIO27B_H2F_A;
output MMUART0_TXD_MGPIO27B_H2F_B;
output MMUART1_DTR_MGPIO12B_H2F_A;
output MMUART1_RTS_MGPIO11B_H2F_A;
output MMUART1_RTS_MGPIO11B_H2F_B;
output MMUART1_RXD_MGPIO26B_H2F_A;
output MMUART1_RXD_MGPIO26B_H2F_B;
output MMUART1_SCK_MGPIO25B_H2F_A;
output MMUART1_SCK_MGPIO25B_H2F_B;
output MMUART1_TXD_MGPIO24B_H2F_A;
output MMUART1_TXD_MGPIO24B_H2F_B;
output MPLL_LOCK;
output [15:2] PER2_FABRIC_PADDR;
output PER2_FABRIC_PENABLE;
output PER2_FABRIC_PSEL;
output [31:0] PER2_FABRIC_PWDATA;
output PER2_FABRIC_PWRITE;
output RTC_MATCH;
output SLEEPDEEP;
output SLEEPHOLDACK;
output SLEEPING;
output SMBALERT_NO0;
output SMBALERT_NO1;
output SMBSUS_NO0;
output SMBSUS_NO1;
output SPI0_CLK_OUT;
output SPI0_SDI_MGPIO5A_H2F_A;
output SPI0_SDI_MGPIO5A_H2F_B;
output SPI0_SDO_MGPIO6A_H2F_A;
output SPI0_SDO_MGPIO6A_H2F_B;
output SPI0_SS0_MGPIO7A_H2F_A;
output SPI0_SS0_MGPIO7A_H2F_B;
output SPI0_SS1_MGPIO8A_H2F_A;
output SPI0_SS1_MGPIO8A_H2F_B;
output SPI0_SS2_MGPIO9A_H2F_A;
output SPI0_SS2_MGPIO9A_H2F_B;
output SPI0_SS3_MGPIO10A_H2F_A;
output SPI0_SS3_MGPIO10A_H2F_B;
output SPI0_SS4_MGPIO19A_H2F_A;
output SPI0_SS5_MGPIO20A_H2F_A;
output SPI0_SS6_MGPIO21A_H2F_A;
output SPI0_SS7_MGPIO22A_H2F_A;
output SPI1_CLK_OUT;
output SPI1_SDI_MGPIO11A_H2F_A;
output SPI1_SDI_MGPIO11A_H2F_B;
output SPI1_SDO_MGPIO12A_H2F_A;
output SPI1_SDO_MGPIO12A_H2F_B;
output SPI1_SS0_MGPIO13A_H2F_A;
output SPI1_SS0_MGPIO13A_H2F_B;
output SPI1_SS1_MGPIO14A_H2F_A;
output SPI1_SS1_MGPIO14A_H2F_B;
output SPI1_SS2_MGPIO15A_H2F_A;
output SPI1_SS2_MGPIO15A_H2F_B;
output SPI1_SS3_MGPIO16A_H2F_A;
output SPI1_SS3_MGPIO16A_H2F_B;
output SPI1_SS4_MGPIO17A_H2F_A;
output SPI1_SS5_MGPIO18A_H2F_A;
output SPI1_SS6_MGPIO23A_H2F_A;
output SPI1_SS7_MGPIO24A_H2F_A;
output [9:0] TCGF;
output TRACECLK;
output [3:0] TRACEDATA;
output TX_CLK;
output TX_ENF;
output TX_ERRF;
output TXCTL_EN_RIF;
output [3:0] TXD_RIF;
output [7:0] TXDF;
output TXEV;
output WDOGTIMEOUT;
output F_ARREADY_HREADYOUT1;
output F_AWREADY_HREADYOUT0;
output [3:0] F_BID;
output [1:0] F_BRESP_HRESP0;
output F_BVALID;
output [63:0] F_RDATA_HRDATA01;
output [3:0] F_RID;
output F_RLAST;
output [1:0] F_RRESP_HRESP1;
output F_RVALID;
output F_WREADY;
output [15:0] MDDR_FABRIC_PRDATA;
output MDDR_FABRIC_PREADY;
output MDDR_FABRIC_PSLVERR;
input  CAN_RXBUS_F2H_SCP;
input  CAN_TX_EBL_F2H_SCP;
input  CAN_TXBUS_F2H_SCP;
input  COLF;
input  CRSF;
input  [1:0] F2_DMAREADY;
input  [15:0] F2H_INTERRUPT;
input  F2HCALIB;
input  [1:0] F_DMAREADY;
input  [31:0] F_FM0_ADDR;
input  F_FM0_ENABLE;
input  F_FM0_MASTLOCK;
input  F_FM0_READY;
input  F_FM0_SEL;
input  [1:0] F_FM0_SIZE;
input  F_FM0_TRANS1;
input  [31:0] F_FM0_WDATA;
input  F_FM0_WRITE;
input  [31:0] F_HM0_RDATA;
input  F_HM0_READY;
input  F_HM0_RESP;
input  FAB_AVALID;
input  FAB_HOSTDISCON;
input  FAB_IDDIG;
input  [1:0] FAB_LINESTATE;
input  FAB_M3_RESET_N;
input  FAB_PLL_LOCK;
input  FAB_RXACTIVE;
input  FAB_RXERROR;
input  FAB_RXVALID;
input  FAB_RXVALIDH;
input  FAB_SESSEND;
input  FAB_TXREADY;
input  FAB_VBUSVALID;
input  [7:0] FAB_VSTATUS;
input  [7:0] FAB_XDATAIN;
input  GTX_CLKPF;
input  I2C0_BCLK;
input  I2C0_SCL_F2H_SCP;
input  I2C0_SDA_F2H_SCP;
input  I2C1_BCLK;
input  I2C1_SCL_F2H_SCP;
input  I2C1_SDA_F2H_SCP;
input  MDIF;
input  MGPIO0A_F2H_GPIN;
input  MGPIO10A_F2H_GPIN;
input  MGPIO11A_F2H_GPIN;
input  MGPIO11B_F2H_GPIN;
input  MGPIO12A_F2H_GPIN;
input  MGPIO13A_F2H_GPIN;
input  MGPIO14A_F2H_GPIN;
input  MGPIO15A_F2H_GPIN;
input  MGPIO16A_F2H_GPIN;
input  MGPIO17B_F2H_GPIN;
input  MGPIO18B_F2H_GPIN;
input  MGPIO19B_F2H_GPIN;
input  MGPIO1A_F2H_GPIN;
input  MGPIO20B_F2H_GPIN;
input  MGPIO21B_F2H_GPIN;
input  MGPIO22B_F2H_GPIN;
input  MGPIO24B_F2H_GPIN;
input  MGPIO25B_F2H_GPIN;
input  MGPIO26B_F2H_GPIN;
input  MGPIO27B_F2H_GPIN;
input  MGPIO28B_F2H_GPIN;
input  MGPIO29B_F2H_GPIN;
input  MGPIO2A_F2H_GPIN;
input  MGPIO30B_F2H_GPIN;
input  MGPIO31B_F2H_GPIN;
input  MGPIO3A_F2H_GPIN;
input  MGPIO4A_F2H_GPIN;
input  MGPIO5A_F2H_GPIN;
input  MGPIO6A_F2H_GPIN;
input  MGPIO7A_F2H_GPIN;
input  MGPIO8A_F2H_GPIN;
input  MGPIO9A_F2H_GPIN;
input  MMUART0_CTS_F2H_SCP;
input  MMUART0_DCD_F2H_SCP;
input  MMUART0_DSR_F2H_SCP;
input  MMUART0_DTR_F2H_SCP;
input  MMUART0_RI_F2H_SCP;
input  MMUART0_RTS_F2H_SCP;
input  MMUART0_RXD_F2H_SCP;
input  MMUART0_SCK_F2H_SCP;
input  MMUART0_TXD_F2H_SCP;
input  MMUART1_CTS_F2H_SCP;
input  MMUART1_DCD_F2H_SCP;
input  MMUART1_DSR_F2H_SCP;
input  MMUART1_RI_F2H_SCP;
input  MMUART1_RTS_F2H_SCP;
input  MMUART1_RXD_F2H_SCP;
input  MMUART1_SCK_F2H_SCP;
input  MMUART1_TXD_F2H_SCP;
input  [31:0] PER2_FABRIC_PRDATA;
input  PER2_FABRIC_PREADY;
input  PER2_FABRIC_PSLVERR;
input  [9:0] RCGF;
input  RX_CLKPF;
input  RX_DVF;
input  RX_ERRF;
input  RX_EV;
input  [7:0] RXDF;
input  SLEEPHOLDREQ;
input  SMBALERT_NI0;
input  SMBALERT_NI1;
input  SMBSUS_NI0;
input  SMBSUS_NI1;
input  SPI0_CLK_IN;
input  SPI0_SDI_F2H_SCP;
input  SPI0_SDO_F2H_SCP;
input  SPI0_SS0_F2H_SCP;
input  SPI0_SS1_F2H_SCP;
input  SPI0_SS2_F2H_SCP;
input  SPI0_SS3_F2H_SCP;
input  SPI1_CLK_IN;
input  SPI1_SDI_F2H_SCP;
input  SPI1_SDO_F2H_SCP;
input  SPI1_SS0_F2H_SCP;
input  SPI1_SS1_F2H_SCP;
input  SPI1_SS2_F2H_SCP;
input  SPI1_SS3_F2H_SCP;
input  TX_CLKPF;
input  USER_MSS_GPIO_RESET_N;
input  USER_MSS_RESET_N;
input  XCLK_FAB;
input  CLK_BASE;
input  CLK_MDDR_APB;
input  [31:0] F_ARADDR_HADDR1;
input  [1:0] F_ARBURST_HTRANS1;
input  [3:0] F_ARID_HSEL1;
input  [3:0] F_ARLEN_HBURST1;
input  [1:0] F_ARLOCK_HMASTLOCK1;
input  [1:0] F_ARSIZE_HSIZE1;
input  F_ARVALID_HWRITE1;
input  [31:0] F_AWADDR_HADDR0;
input  [1:0] F_AWBURST_HTRANS0;
input  [3:0] F_AWID_HSEL0;
input  [3:0] F_AWLEN_HBURST0;
input  [1:0] F_AWLOCK_HMASTLOCK0;
input  [1:0] F_AWSIZE_HSIZE0;
input  F_AWVALID_HWRITE0;
input  F_BREADY;
input  F_RMW_AXI;
input  F_RREADY;
input  [63:0] F_WDATA_HWDATA01;
input  [3:0] F_WID_HREADY01;
input  F_WLAST;
input  [7:0] F_WSTRB;
input  F_WVALID;
input  FPGA_MDDR_ARESET_N;
input  [10:2] MDDR_FABRIC_PADDR;
input  MDDR_FABRIC_PENABLE;
input  MDDR_FABRIC_PSEL;
input  [15:0] MDDR_FABRIC_PWDATA;
input  MDDR_FABRIC_PWRITE;
input  PRESET_N;
input  CAN_RXBUS_USBA_DATA1_MGPIO3A_IN;
input  CAN_TX_EBL_USBA_DATA2_MGPIO4A_IN;
input  CAN_TXBUS_USBA_DATA0_MGPIO2A_IN;
input  [2:0] DM_IN;
input  [17:0] DRAM_DQ_IN;
input  [2:0] DRAM_DQS_IN;
input  [1:0] DRAM_FIFO_WE_IN;
input  I2C0_SCL_USBC_DATA1_MGPIO31B_IN;
input  I2C0_SDA_USBC_DATA0_MGPIO30B_IN;
input  I2C1_SCL_USBA_DATA4_MGPIO1A_IN;
input  I2C1_SDA_USBA_DATA3_MGPIO0A_IN;
input  MGPIO25A_IN;
input  MGPIO26A_IN;
input  MMUART0_CTS_USBC_DATA7_MGPIO19B_IN;
input  MMUART0_DCD_MGPIO22B_IN;
input  MMUART0_DSR_MGPIO20B_IN;
input  MMUART0_DTR_USBC_DATA6_MGPIO18B_IN;
input  MMUART0_RI_MGPIO21B_IN;
input  MMUART0_RTS_USBC_DATA5_MGPIO17B_IN;
input  MMUART0_RXD_USBC_STP_MGPIO28B_IN;
input  MMUART0_SCK_USBC_NXT_MGPIO29B_IN;
input  MMUART0_TXD_USBC_DIR_MGPIO27B_IN;
input  MMUART1_CTS_MGPIO13B_IN;
input  MMUART1_DCD_MGPIO16B_IN;
input  MMUART1_DSR_MGPIO14B_IN;
input  MMUART1_DTR_MGPIO12B_IN;
input  MMUART1_RI_MGPIO15B_IN;
input  MMUART1_RTS_MGPIO11B_IN;
input  MMUART1_RXD_USBC_DATA3_MGPIO26B_IN;
input  MMUART1_SCK_USBC_DATA4_MGPIO25B_IN;
input  MMUART1_TXD_USBC_DATA2_MGPIO24B_IN;
input  RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_IN;
input  RGMII_MDC_RMII_MDC_IN;
input  RGMII_MDIO_RMII_MDIO_USBB_DATA7_IN;
input  RGMII_RX_CLK_IN;
input  RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_IN;
input  RGMII_RXD0_RMII_RXD0_USBB_DATA0_IN;
input  RGMII_RXD1_RMII_RXD1_USBB_DATA1_IN;
input  RGMII_RXD2_RMII_RX_ER_USBB_DATA3_IN;
input  RGMII_RXD3_USBB_DATA4_IN;
input  RGMII_TX_CLK_IN;
input  RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_IN;
input  RGMII_TXD0_RMII_TXD0_USBB_DIR_IN;
input  RGMII_TXD1_RMII_TXD1_USBB_STP_IN;
input  RGMII_TXD2_USBB_DATA5_IN;
input  RGMII_TXD3_USBB_DATA6_IN;
input  SPI0_SCK_USBA_XCLK_IN;
input  SPI0_SDI_USBA_DIR_MGPIO5A_IN;
input  SPI0_SDO_USBA_STP_MGPIO6A_IN;
input  SPI0_SS0_USBA_NXT_MGPIO7A_IN;
input  SPI0_SS1_USBA_DATA5_MGPIO8A_IN;
input  SPI0_SS2_USBA_DATA6_MGPIO9A_IN;
input  SPI0_SS3_USBA_DATA7_MGPIO10A_IN;
input  SPI0_SS4_MGPIO19A_IN;
input  SPI0_SS5_MGPIO20A_IN;
input  SPI0_SS6_MGPIO21A_IN;
input  SPI0_SS7_MGPIO22A_IN;
input  SPI1_SCK_IN;
input  SPI1_SDI_MGPIO11A_IN;
input  SPI1_SDO_MGPIO12A_IN;
input  SPI1_SS0_MGPIO13A_IN;
input  SPI1_SS1_MGPIO14A_IN;
input  SPI1_SS2_MGPIO15A_IN;
input  SPI1_SS3_MGPIO16A_IN;
input  SPI1_SS4_MGPIO17A_IN;
input  SPI1_SS5_MGPIO18A_IN;
input  SPI1_SS6_MGPIO23A_IN;
input  SPI1_SS7_MGPIO24A_IN;
input  USBC_XCLK_IN;
output CAN_RXBUS_USBA_DATA1_MGPIO3A_OUT;
output CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT;
output CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT;
output [15:0] DRAM_ADDR;
output [2:0] DRAM_BA;
output DRAM_CASN;
output DRAM_CKE;
output DRAM_CLK;
output DRAM_CSN;
output [2:0] DRAM_DM_RDQS_OUT;
output [17:0] DRAM_DQ_OUT;
output [2:0] DRAM_DQS_OUT;
output [1:0] DRAM_FIFO_WE_OUT;
output DRAM_ODT;
output DRAM_RASN;
output DRAM_RSTN;
output DRAM_WEN;
output I2C0_SCL_USBC_DATA1_MGPIO31B_OUT;
output I2C0_SDA_USBC_DATA0_MGPIO30B_OUT;
output I2C1_SCL_USBA_DATA4_MGPIO1A_OUT;
output I2C1_SDA_USBA_DATA3_MGPIO0A_OUT;
output MGPIO25A_OUT;
output MGPIO26A_OUT;
output MMUART0_CTS_USBC_DATA7_MGPIO19B_OUT;
output MMUART0_DCD_MGPIO22B_OUT;
output MMUART0_DSR_MGPIO20B_OUT;
output MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT;
output MMUART0_RI_MGPIO21B_OUT;
output MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT;
output MMUART0_RXD_USBC_STP_MGPIO28B_OUT;
output MMUART0_SCK_USBC_NXT_MGPIO29B_OUT;
output MMUART0_TXD_USBC_DIR_MGPIO27B_OUT;
output MMUART1_CTS_MGPIO13B_OUT;
output MMUART1_DCD_MGPIO16B_OUT;
output MMUART1_DSR_MGPIO14B_OUT;
output MMUART1_DTR_MGPIO12B_OUT;
output MMUART1_RI_MGPIO15B_OUT;
output MMUART1_RTS_MGPIO11B_OUT;
output MMUART1_RXD_USBC_DATA3_MGPIO26B_OUT;
output MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT;
output MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT;
output RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OUT;
output RGMII_MDC_RMII_MDC_OUT;
output RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT;
output RGMII_RX_CLK_OUT;
output RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT;
output RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT;
output RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT;
output RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT;
output RGMII_RXD3_USBB_DATA4_OUT;
output RGMII_TX_CLK_OUT;
output RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OUT;
output RGMII_TXD0_RMII_TXD0_USBB_DIR_OUT;
output RGMII_TXD1_RMII_TXD1_USBB_STP_OUT;
output RGMII_TXD2_USBB_DATA5_OUT;
output RGMII_TXD3_USBB_DATA6_OUT;
output SPI0_SCK_USBA_XCLK_OUT;
output SPI0_SDI_USBA_DIR_MGPIO5A_OUT;
output SPI0_SDO_USBA_STP_MGPIO6A_OUT;
output SPI0_SS0_USBA_NXT_MGPIO7A_OUT;
output SPI0_SS1_USBA_DATA5_MGPIO8A_OUT;
output SPI0_SS2_USBA_DATA6_MGPIO9A_OUT;
output SPI0_SS3_USBA_DATA7_MGPIO10A_OUT;
output SPI0_SS4_MGPIO19A_OUT;
output SPI0_SS5_MGPIO20A_OUT;
output SPI0_SS6_MGPIO21A_OUT;
output SPI0_SS7_MGPIO22A_OUT;
output SPI1_SCK_OUT;
output SPI1_SDI_MGPIO11A_OUT;
output SPI1_SDO_MGPIO12A_OUT;
output SPI1_SS0_MGPIO13A_OUT;
output SPI1_SS1_MGPIO14A_OUT;
output SPI1_SS2_MGPIO15A_OUT;
output SPI1_SS3_MGPIO16A_OUT;
output SPI1_SS4_MGPIO17A_OUT;
output SPI1_SS5_MGPIO18A_OUT;
output SPI1_SS6_MGPIO23A_OUT;
output SPI1_SS7_MGPIO24A_OUT;
output USBC_XCLK_OUT;
output CAN_RXBUS_USBA_DATA1_MGPIO3A_OE;
output CAN_TX_EBL_USBA_DATA2_MGPIO4A_OE;
output CAN_TXBUS_USBA_DATA0_MGPIO2A_OE;
output [2:0] DM_OE;
output [17:0] DRAM_DQ_OE;
output [2:0] DRAM_DQS_OE;
output I2C0_SCL_USBC_DATA1_MGPIO31B_OE;
output I2C0_SDA_USBC_DATA0_MGPIO30B_OE;
output I2C1_SCL_USBA_DATA4_MGPIO1A_OE;
output I2C1_SDA_USBA_DATA3_MGPIO0A_OE;
output MGPIO25A_OE;
output MGPIO26A_OE;
output MMUART0_CTS_USBC_DATA7_MGPIO19B_OE;
output MMUART0_DCD_MGPIO22B_OE;
output MMUART0_DSR_MGPIO20B_OE;
output MMUART0_DTR_USBC_DATA6_MGPIO18B_OE;
output MMUART0_RI_MGPIO21B_OE;
output MMUART0_RTS_USBC_DATA5_MGPIO17B_OE;
output MMUART0_RXD_USBC_STP_MGPIO28B_OE;
output MMUART0_SCK_USBC_NXT_MGPIO29B_OE;
output MMUART0_TXD_USBC_DIR_MGPIO27B_OE;
output MMUART1_CTS_MGPIO13B_OE;
output MMUART1_DCD_MGPIO16B_OE;
output MMUART1_DSR_MGPIO14B_OE;
output MMUART1_DTR_MGPIO12B_OE;
output MMUART1_RI_MGPIO15B_OE;
output MMUART1_RTS_MGPIO11B_OE;
output MMUART1_RXD_USBC_DATA3_MGPIO26B_OE;
output MMUART1_SCK_USBC_DATA4_MGPIO25B_OE;
output MMUART1_TXD_USBC_DATA2_MGPIO24B_OE;
output RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OE;
output RGMII_MDC_RMII_MDC_OE;
output RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE;
output RGMII_RX_CLK_OE;
output RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE;
output RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE;
output RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE;
output RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE;
output RGMII_RXD3_USBB_DATA4_OE;
output RGMII_TX_CLK_OE;
output RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OE;
output RGMII_TXD0_RMII_TXD0_USBB_DIR_OE;
output RGMII_TXD1_RMII_TXD1_USBB_STP_OE;
output RGMII_TXD2_USBB_DATA5_OE;
output RGMII_TXD3_USBB_DATA6_OE;
output SPI0_SCK_USBA_XCLK_OE;
output SPI0_SDI_USBA_DIR_MGPIO5A_OE;
output SPI0_SDO_USBA_STP_MGPIO6A_OE;
output SPI0_SS0_USBA_NXT_MGPIO7A_OE;
output SPI0_SS1_USBA_DATA5_MGPIO8A_OE;
output SPI0_SS2_USBA_DATA6_MGPIO9A_OE;
output SPI0_SS3_USBA_DATA7_MGPIO10A_OE;
output SPI0_SS4_MGPIO19A_OE;
output SPI0_SS5_MGPIO20A_OE;
output SPI0_SS6_MGPIO21A_OE;
output SPI0_SS7_MGPIO22A_OE;
output SPI1_SCK_OE;
output SPI1_SDI_MGPIO11A_OE;
output SPI1_SDO_MGPIO12A_OE;
output SPI1_SS0_MGPIO13A_OE;
output SPI1_SS1_MGPIO14A_OE;
output SPI1_SS2_MGPIO15A_OE;
output SPI1_SS3_MGPIO16A_OE;
output SPI1_SS4_MGPIO17A_OE;
output SPI1_SS5_MGPIO18A_OE;
output SPI1_SS6_MGPIO23A_OE;
output SPI1_SS7_MGPIO24A_OE;
output USBC_XCLK_OE;
parameter INIT = 'h0;
parameter ACT_UBITS = 'h0;
parameter MEMORYFILE = "";
parameter RTC_MAIN_XTL_FREQ = 0.0;
parameter RTC_MAIN_XTL_MODE = "";
parameter DDR_CLK_FREQ = 0.0;

endmodule
