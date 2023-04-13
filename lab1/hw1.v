module hw1(D0,D1,D2,D3,V,x,y);
	input D0,D1,D2,D3;
	output V,x,y;
	wire D2b,out1,out3;
	not (D2b,D2);
	and (out1,D2b,D1);
	or (x,D2,D3);
	or (y,D3,out1);
	or (V,x,D0,D1);
endmodule
