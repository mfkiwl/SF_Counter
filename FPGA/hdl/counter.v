///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: counter.v
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

module counter( sys_clk, reset, signal_1, signal_2, out_data );
input sys_clk, reset;
input signal_1, signal_2;
output reg [31:0] out_data;

reg [31:0] counter;

always @ (posedge sys_clk) begin
    if (signal_1) begin
        counter <= counter + 1;
    end
    else begin
        counter <= 0;
    end
end

always @ (negedge signal_1) begin
assign out_data = counter;
end

//always @ (posedge sys_clk) begin
    //if (~reset) begin
        //out_data <= 0;
        //counter <= 0;
    //end
    //else begin
        //counter <= counter + 1;
        //out_data <= counter;
    //end
//end

endmodule

