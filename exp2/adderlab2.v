module adderlab2(
input A,
input B,
input Cin,
output sum,
output Cout );

assign {sum, Cout} = A+B+Cin;
endmodule
