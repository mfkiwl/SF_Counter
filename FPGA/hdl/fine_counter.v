///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: fine_counter.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S025> <Package::256 VF>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module fine_counter( clk1, clk2, clk3, clk4, reset, sample_gate, fine_count );
input clk1, clk2, clk3, clk4, reset;
input sample_gate;
output fine_count;

reg [31:0] fine_count;
wire [3:0] DFF_out;
reg [31:0] rising_error;
reg [31:0] falling_error;

assign DFF_out[0] = clk1;
assign DFF_out[1] = clk2;
assign DFF_out[2] = clk3;
assign DFF_out[3] = clk4;
    
    always @( posedge sample_gate or negedge reset ) begin
        if ( ~reset ) begin
            rising_error <= 0;
        end
        else begin
            case ( DFF_out )
              4'b1000 : rising_error <= 7;
              4'b1100 : rising_error <= 6;
              4'b1110 : rising_error <= 5;
              4'b1111 : rising_error <= 4;          
              4'b0111 : rising_error <= 3;
              4'b0011 : rising_error <= 2;
              4'b0001 : rising_error <= 1;
              4'b0000 : rising_error <= 0;
              default : rising_error <= 0;
            endcase
        end
    end
    
    always @( negedge sample_gate or negedge reset ) begin
        if ( ~reset ) begin
            falling_error <= 0;
        end
        else begin
            case ( DFF_out )
              4'b1000 : rising_error <= -7;
              4'b1100 : rising_error <= -6;
              4'b1110 : rising_error <= -5;
              4'b1111 : rising_error <= -4;          
              4'b0111 : rising_error <= -3;
              4'b0011 : rising_error <= -2;
              4'b0001 : rising_error <= -1;
              4'b0000 : rising_error <= 0;
              default : rising_error <= 0;
            endcase
        end
    end
    
    assign fine_count = rising_error + falling_error;

endmodule

