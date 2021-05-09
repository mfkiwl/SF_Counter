/*******************************************************************************
 * (c) Copyright 2008-2015 Microsemi SoC Products Group.  All rights reserved.
 *
 * This example project demonstrates communications with an external flash
 * device.
 *
 * Please refer to the file README.txt for further details about this example.
 *
 * SVN $Revision: 7721 $
 * SVN $Date: 2015-09-01 19:35:23 +0530 (Tue, 01 Sep 2015) $
 */

#include "drivers/mss_spi/mss_spi.h"
#include "drivers/mss_gpio/mss_gpio.h"
#include "drivers/mss_uart/mss_uart.h"
#include "CMSIS/system_m2sxxx.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

static void delay(void);

mss_uart_instance_t * const gp_my_uart = &g_mss_uart1;

void fill_uart(char* uart_buff, uint8_t* read_buffer, int length)
{
    for(int idx = 0; idx < length; idx++)
    	sprintf(uart_buff + strlen(uart_buff), "%02X ",	read_buffer[idx]);
    sprintf(uart_buff + strlen(uart_buff), "\n\r");
    MSS_UART_polled_tx_string(gp_my_uart, (uint8_t*)uart_buff);
}


void fill_uart_decimal(char* uart_buff, uint8_t* read_buffer, int length)
{
    for(int idx = 0; idx < length; idx++)
    	sprintf(uart_buff + strlen(uart_buff), "%d ", read_buffer[idx]);
    sprintf(uart_buff + strlen(uart_buff), "\n\r");
    MSS_UART_polled_tx_string(gp_my_uart, (uint8_t*)uart_buff);
}

void SPI_0_select()
{
	uint32_t gpio_pattern = 0x00000000;
	MSS_GPIO_set_outputs( gpio_pattern );
}


void SPI_0_clear()
{
	uint32_t gpio_pattern = MSS_GPIO_get_outputs();
	gpio_pattern |= 0x00000008;
	MSS_GPIO_set_outputs( gpio_pattern );
}


void FPGA_stop_counting()
{
	uint32_t gpio_pattern = MSS_GPIO_get_outputs();
	gpio_pattern &= 0xFFFFFFFE;
	MSS_GPIO_set_outputs( gpio_pattern );
}


void FPGA_start_counting()
{
	uint32_t gpio_pattern = MSS_GPIO_get_outputs();
	gpio_pattern |= 0x00000001;
	MSS_GPIO_set_outputs( gpio_pattern );
}

int main()
{
    uint32_t address = 0;
    uint16_t loop_count;
    uint8_t manufacturer_id = 0;
    uint8_t device_id = 0;
    uint32_t gpio_pattern = 0x00000000;
    
    char uart_buff[256] = {0};



    /* Disable Watchdog */
    SYSREG->WDOG_CR = 0x00000000;

    MSS_UART_init(gp_my_uart,
                  MSS_UART_57600_BAUD,
                  MSS_UART_DATA_8_BITS | MSS_UART_NO_PARITY | MSS_UART_ONE_STOP_BIT);

    MSS_UART_polled_tx_string(gp_my_uart,(const uint8_t*)"\n\r\n\r****** MY TEST *********\n\r");

    /* SPI_0 initialization */
	MSS_SPI_init( &g_mss_spi0 );
	MSS_SPI_configure_master_mode(
		&g_mss_spi0,
		MSS_SPI_SLAVE_0,
		MSS_SPI_MODE3,
		128u,
		MSS_SPI_BLOCK_TRANSFER_FRAME_SIZE);

    /* SPI_1 initialization */
	MSS_SPI_init(&g_mss_spi1);
	MSS_SPI_configure_master_mode(
		&g_mss_spi1,
		MSS_SPI_SLAVE_0,
		MSS_SPI_MODE1,
		256u,
		MSS_SPI_BLOCK_TRANSFER_FRAME_SIZE);

    MSS_GPIO_init();
    MSS_GPIO_config( MSS_GPIO_0 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config( MSS_GPIO_1 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config( MSS_GPIO_2 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config( MSS_GPIO_3 , MSS_GPIO_OUTPUT_MODE ); // chip select

    uint8_t FRAM_get_device_ID_cmd[1]= {0x9F};
	uint8_t FRAM_device_ID[9] = {0};

    SPI_0_select();
    MSS_SPI_transfer_block( &g_mss_spi0, FRAM_get_device_ID_cmd, 1, FRAM_device_ID, sizeof(FRAM_device_ID) );
    SPI_0_clear();

    sprintf(uart_buff, "Device ID: ");
    fill_uart(uart_buff, FRAM_device_ID, 9);
    // Should be A1 2F C2 7F 7F 7F 7F 7F 7F

    uint8_t FRAM_read_SR_cmd[1] = {0x05};
    uint8_t FRAM_write_SR_cmd[2] = {0x01, 0x70};
    uint8_t FRAM_status_register[1] = {0xFF};
    uint8_t dummy[1] = {0};

	SPI_0_select();
	MSS_SPI_transfer_block( &g_mss_spi0, FRAM_read_SR_cmd, 1, FRAM_status_register, 1);
	SPI_0_clear();
	sprintf(uart_buff, "Status register initial:\n\r");
	fill_uart(uart_buff, FRAM_status_register, 1);


	uint8_t FRAM_WREN[1] = {0x06}; // WREN: write enable
    uint8_t FRAM_write_cmd_buff[4+128]; // first 4 bytes are commands

    FRAM_write_cmd_buff[0] = 0x02; // WRITE: write opcode
    FRAM_write_cmd_buff[1] = 0x00; // address byte 1
    FRAM_write_cmd_buff[2] = 0x00; // address byte 2
    FRAM_write_cmd_buff[3] = 0x00; // address byte 3

    for(int idx = 4; idx < 4+128; idx++)
    	FRAM_write_cmd_buff[idx] = idx + 1;

	SPI_0_select();
	MSS_SPI_transfer_block( &g_mss_spi0, FRAM_WREN, 1, dummy, 0);
	SPI_0_clear();

	SPI_0_select();
	MSS_SPI_transfer_block( &g_mss_spi0, FRAM_read_SR_cmd, 1, FRAM_status_register, 1);
	SPI_0_clear();
	sprintf(uart_buff, "Status register after WREN:\n\r");
	fill_uart(uart_buff, FRAM_status_register, 1);

	SPI_0_select();
	MSS_SPI_transfer_block( &g_mss_spi0, FRAM_write_cmd_buff, 4+128, dummy, 0);
	SPI_0_clear();

	uint8_t FRAM_read_cmd[4];
    uint8_t FRAM_read_buff[128] = {0};
    FRAM_read_cmd[0] = 0x03; // READ opcode
    FRAM_read_cmd[1] = 0x00; // address byte 1
    FRAM_read_cmd[2] = 0x00; // address byte 2
    FRAM_read_cmd[3] = 0x00; // address byte 3

    SPI_0_select();
	MSS_SPI_transfer_block( &g_mss_spi0, FRAM_read_cmd, 4, FRAM_read_buff, sizeof(FRAM_read_buff) );
	SPI_0_clear();

	sprintf(uart_buff, "Data read from FRAM:\n\r");
	fill_uart(uart_buff, FRAM_read_buff, sizeof(FRAM_read_buff));



	FPGA_start_counting();
    while(1)
    {
    	delay();

		uint8_t SPI_buff[4] = {0};
		MSS_SPI_set_slave_select(&g_mss_spi1, MSS_SPI_SLAVE_0);
		MSS_SPI_transfer_block(&g_mss_spi1, 0, 0, SPI_buff, 4);
		MSS_SPI_clear_slave_select(&g_mss_spi1, MSS_SPI_SLAVE_0);
		sprintf(uart_buff, "Data from SPI_1:\n\r");
		fill_uart(uart_buff, SPI_buff, 4);

		int count = (int)SPI_buff[3] +
					(int)SPI_buff[2] * pow(2,  8) +
					(int)SPI_buff[1] * pow(2, 16) +
					(int)SPI_buff[0] * pow(2, 24);

		sprintf(uart_buff, "Counter Value: %d\n\r", count);
    	MSS_UART_polled_tx_string(gp_my_uart, (uint8_t*)uart_buff);

    	int ref_freq = 50000;
    	float sample_freq = 1000.0 * 100000.0 * ref_freq / count * 8;
		sprintf(uart_buff, "Sample Freq: %.5f Hz\n\r", sample_freq);
    	MSS_UART_polled_tx_string(gp_my_uart, (uint8_t*)uart_buff);
    }
}



static void delay(void)
{
    volatile uint32_t delay_count = SystemCoreClock / 256u;

    while(delay_count > 0u)
    {
        --delay_count;
    }
}

