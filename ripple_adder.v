module ripple_adder(
input [3:0] A,
input [3:0] B,
input Cin,
output [3:0] sum, 
output Cout );

wire [2:0] c;
lab1_adder fa0(.Cout(c[0]),.A(A[0]),.B(B[0]),.Cin(Cin),.sum(sum[0]));

lab1_adder fa1(.Cout(c[1]),.A(A[1]),.B(B[1]),.Cin(c[0]),.sum(sum[1]));
lab1_adder fa2(.Cout(c[2]),.A(A[2]),.B(B[2]),.Cin(c[1]),.sum(sum[2]));
lab1_adder fa3(.Cout(Cout),.A(A[3]),.B(B[3]),.Cin(c[2]),.sum(sum[3]));

endmodule


