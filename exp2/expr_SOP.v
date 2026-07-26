module expr_SOP(
input [3:0] A,B,C,D,
output [3:0] y 
);

wire [3:0] p1 = (~A) & B;
wire [3:0] p2 = C & D;
assign y = p1|p2;

endmodule
