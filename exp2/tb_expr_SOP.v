module tb_expr_SOP;
reg [3:0] A, B, C, D;
wire [3:0] y;
expr_SOP dut(.A(A),.B(B),.C(C),.D(D),.y(y));
 
initial begin

A=15; B=0; C=0; D=0; #10;
A=0; B=15; C=15; D=15; #10;
A=15; B=0; C=0; D=0; #10;
$finish;
end
endmodule
