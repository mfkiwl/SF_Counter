

module Recip_Freq_Count(
    input reset,
    input ref_clk,
    input sample_gate,
    
    output recip_counter,
    output recip_valid
    );
    
    reg [31:0] recip_counter;
    reg [31:0] counter_local;
    reg recip_valid;
    
    always @ ( posedge ref_clk ) begin
        if ( ~reset | ~sample_gate ) begin
            counter_local <= 0;
            recip_valid <= 1 & reset;
        end
        else if ( sample_gate ) begin
            counter_local <= counter_local + 1;
            recip_valid <= 0;
        end
    end
    
    always @ ( negedge sample_gate ) begin
        recip_counter <= counter_local;
    end 
            
endmodule
