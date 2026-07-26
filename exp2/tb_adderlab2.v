module tb_adderlab2;
reg A;
reg B;
reg Cin;
wire Cout;
wire sum;
adderlab2 dut(.A(A),.B(B),.Cin(Cin),.Cout(Cout),.sum(sum));
 
initial begin

A=0; B=0; Cin=0; #10;
A=1; B=1; Cin=1; #10;
A=0; B=1; Cin=0; #10;


$finish;
end
endmodule
