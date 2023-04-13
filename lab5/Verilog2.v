module S1061534_lab5_test;
reg [3:0]a,b;
reg c_input;
wire [3:0]s;
wire c_output;
S1061534_lab5 DUT(
	.a(a),
	.b(b),
	.c_input(c_input),
	.s(s),
	.c_output(c_output)
);

initial begin
	a=4'b0000;b=4'b0000;c_input=0;
	#10000 a=4'b1011;b=4'b0100;
	#10000 a=4'b0111;b=4'b1101;c_input=1;
	#10000 ;
end
initial $monitor("a=%b,b=%b,s=%b,c_input=%b,c_output=%b",a,b,s,c_input,c_output);
endmodule 