module btgc_test;
	reg [3:0] binary;
	wire [3:0] gray;
	btgc dut(.binary(binary),.gray(gray));
	initial begin
	$dumpfile("test_btgc.vcd");
	$dumpvars(0,btgc_test);
	$display("this is a 4 bit binary to gray converter");
	$monitor("binary =%b,gray =%b",binary,gray);
		binary = 4'b0000; #10;
		binary = 4'b1011; #10;
		binary = 4'b0011; #10;
		binary = 4'b1000; #10;
		binary = 4'b1010; #10;
		binary = 4'b1100; #10;
		binary = 4'b1101; #10;
		binary = 4'b1111; #10;
		$finish;
	end
endmodule


