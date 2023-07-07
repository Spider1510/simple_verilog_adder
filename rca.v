
module rca(
	a,
	b,
	out
);

parameter WIDTH = 4;

input [WIDTH-1:0] a;
input [WIDTH-1:0] b;
output [WIDTH:0] out;

assign out = a + b;

endmodule

