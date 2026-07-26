module tb_fsm_101;
    reg clk, rst_n, in;
    wire out;

    fsm_101 dut (.clk(clk), .rst_n(rst_n), .in(in), .out(out));

    always #5 clk = ~clk;

    initial begin
        
        clk = 0; rst_n = 0; in = 0;
        #12 rst_n = 1;
       
        @(posedge clk) in = 0;
        @(posedge clk) in = 1;
        @(posedge clk) in = 1;
        @(posedge clk) in = 0;
	@(posedge clk) in = 1;
	@(posedge clk) in = 0;
	@(posedge clk) in = 1;
	@(posedge clk) in = 1;
	@(posedge clk) in = 0;
        @(posedge clk) in = 0;
        #10 $finish;
    end
endmodule
