module tb_ripple_adder;
reg [3:0] A, B;
reg Cin;
wire Cout;
wire [3:0] sum;

ripple_adder dut(
.A(A), .B(B), .Cin(Cin), .Cout(Cout), .sum(sum));

integer i,j,k;
integer errc;
reg [4:0] expected_val;

initial begin
$dumpfile("ripple_wave.vcd");
$dumpvars(0,tb_ripple_adder);
errc=0;
for(i=0;i<16;i=i+1) begin
        for (j=0; j<16; j=j+1) begin
               for (k=0; k<2; k=k+1) begin
                    A=i;
                    B=j;
                    Cin=k;
                    
                    #10;
                    expected_val=i+j+k;
                    
                    if({Cout,sum} !==expected_val) begin
                         $display("ERROR  at time = %0t | A=%b, B=%b, Cin=%b, sum = %b, Cout=%b", $time, A, B, Cin, sum, Cout);
                         $display("Expected value = %b, (%d), but got %b and %b", expected_val, expected_val, Cout, sum);
                         errc=errc+1;
                    end
                 end
          end
end

if (errc==0) begin
   $display("ALL 512 CASES SUCCESSFUL!!");
end
else begin
   $display("Failure: found %0d errors", errc);
end

$finish;
end
endmodule



