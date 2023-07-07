`timescale 1ns/1ps

module tb_rca();

parameter WIDTH = 4;

reg [WIDTH-1:0] a;
reg [WIDTH-1:0] b;
wire [WIDTH:0] out;
integer i;

rca dut (
	.a(a), .b(b), .out(out)
);

initial begin
	$dumpfile("tb_rca.vcd");
	$dumpvars();
	
	a <= 4'd0;
	b <= 4'd0;
	#10;

	$display("a=%d + b=%d = out=%d", a, b, out);

	for (i=0; i<10; i=i+1) begin
		a <= $random;
		b <= $random;
		#10;
		$display("a=%d + b=%d = out=%d", a, b, out);
	end
	#10;
	a <= 4'hF;
	b <= 4'hF;
	#10;
	$display("a=%d + b=%d = out=%d", a, b, out);
end

endmodule

