///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: Add_Counter.v
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


module Add_Counters(

    input [31:0] recip_count,
    input [31:0] fine_count,
    
    output [31:0] final_count
    );
    
    assign final_count = recip_count * 8 + fine_count;
    
endmodule

