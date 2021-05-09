

module SPI_Slave
(
   // Control/Data Signals,
   input            reset,    // FPGA Reset
   input            clk,      // FPGA Clock
   
   // Interface to local counter
   input reg [31:0] data_in,
   
   // SPI Interface
   input      SPI_Clk,
   output reg SPI_MISO,
   input      SPI_MOSI,
   input      SPI_CS_n
);

  reg [25:0] counter;
  reg SPI_MISO_Bit;
  reg [4:0] Data_index;
  reg [31:0] Data;
  
  
  always @ (negedge SPI_CS_n)
  begin
    Data <= data_in;
  end
  
  assign SPI_MISO = SPI_CS_n ? 1'bZ : SPI_MISO_Bit;

  always @(posedge SPI_Clk or posedge SPI_CS_n)
  begin
    if (SPI_CS_n)
    begin
      Data_index <= 5'b11111;  // Send MSb first
      SPI_MISO_Bit <= Data[5'b11111];  // Reset to MSb
    end
    else
    begin
      Data_index <= Data_index - 1;
      SPI_MISO_Bit <= Data[Data_index];
    end 
  end
  
  //always @(posedge clk)
  //begin
    //if (~reset)
    //begin
      //Data <= {8'd1, 8'd2, 8'd3, 8'd4};
      //counter <= 0;
    //end
    //else
    //begin
      //counter <= counter + 1;
      //if (counter == 0)
      //begin
        //Data <= {Data[7:0], Data[31:24], Data[23:16], Data[15:8]};
      //end
    //end
  //end

endmodule // SPI_Slave

