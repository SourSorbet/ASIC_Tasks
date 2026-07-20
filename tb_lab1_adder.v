module tb_lab1_adder;
reg A;
reg B;
reg Cin;
wire Cout;
wire sum;
lab1_adder dut(.A(A),.B(B),.Cin(Cin),.Cout(Cout),.sum(sum));
 
initial begin
$dumpfile("lab_wave.vcd");
$dumpvars(0,tb_lab1_adder);
$monitor("Time=%0t | A=%b, B=%b, Cin=%b, sum=%b, Cout=%b", $time, A, B, Cin, sum, Cout);

A=0; B=0; Cin=0; #10;
A=0; B=0; Cin=1; #10;
A=0; B=1; Cin=0; #10;
A=0; B=1; Cin=1; #10;
A=1; B=0; Cin=0; #10;
A=1; B=0; Cin=1; #10;
A=1; B=1; Cin=0; #10;
A=1; B=1; Cin=1; #10;
$finish;
end
endmodule
