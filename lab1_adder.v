module lab1_adder(
input A,
input B,
input Cin,
output sum,
output Cout );
//sum operation
wire w1;
xor x1(w1,A,B);
xor x2(sum, w1,Cin);

//carry operation - (A.B) + (Cin(A^B))

wire c1,c2;
and a1(c1,A,B);
and a2(c2,Cin,w1);
or cry(Cout,c1,c2);

endmodule
