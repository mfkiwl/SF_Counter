
module Gate_Set(
    input reset,
    input sampled_signal,
    input sample_enable,
    output sample_gate
    );
    parameter N = 100000;
    
    reg sample_gate;
    reg [31:0] counter;
    
    reg signal = sample_enable & sampled_signal;
    
    always @ ( posedge signal or negedge reset ) begin
        if( ~reset ) begin
            sample_gate <= 0;
            counter <= 0;
        end
        else if ( counter == N-1 ) begin
            sample_gate <= ~sample_gate;
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end
endmodule
