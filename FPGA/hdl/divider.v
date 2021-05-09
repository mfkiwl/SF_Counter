///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: divider.v
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


module divider(
    input reset,
    input clock,
    output reg one_second_gate
    );
    //parameter N = 50000000; // one second under 50MHz Ref Clock 
    parameter N = 500000; // 1 second under 500KHz Clock 
    
    reg [31:0] counter;
    reg signal;
    
    always @ ( posedge clock ) begin
        if( ~reset ) begin
            counter <= 0;
            one_second_gate <= 0;
        end
        else if ( counter == N ) begin
            one_second_gate <= ~one_second_gate;
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end
endmodule