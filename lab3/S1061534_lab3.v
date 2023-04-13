module S1061534_lab3 (D , clk , enable , seed);
	input clk, enable, seed;//set value
	output [5:0] D;
	reg [5:0] D;//in loop we need set to reg
	always @(posedge clk)//use positive edge triger
	begin//deliver in same time
		D[0]<=enable?seed:D[4]^D[5];//if enable==1 D[0]=seed else D[0]=D[4] xor D[5]
		D[1]<=D[0];
		D[2]<=D[1];
		D[3]<=D[2];
		D[4]<=D[3];
		D[5]<=D[4];
	end	
endmodule 