module fsm_101(
input clk,
input rst_n,
input in,
output reg out
);

parameter S0=2'b00, S1=2'b01, S10= 2'b10, S101 = 2'b11;
reg [1:0] state, next_state;

always @(posedge clk or negedge rst_n) begin
if (!rst_n) 
state <= S0;
else
state <= next_state;
end

always @(*) begin
next_state = state; 
        out = 1'b0;        
        
        case (state)
            S0:   next_state = in ? S1   : S0;
            S1:   next_state = in ? S1   : S10;
            S10:  next_state = in ? S101 : S0;
            S101: begin
                      out = 1'b1;
                      next_state = in ? S1 : S10; 
                  end
        endcase
    end
endmodule
