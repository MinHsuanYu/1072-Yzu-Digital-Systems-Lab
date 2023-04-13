module S1061534_lab2(A,B,Cin,Cout,S);
	input [3:0] A,B;
	input Cin;
	output [3:0] S;
	output Cout;
	four_bit_adder(A,B,Cin,Cout,S);
endmodule

module full_adder(a,b,Cin,Cout,s);
	input a,b,Cin;
	output Cout,s;
	assign s = a ^ b ^ Cin;
	assign Cout = (a & b)|(b & Cin)|(Cin & a);
endmodule

module four_bit_adder(A,B,Cin,Cout,S);
	input [3:0] A,B;
	input Cin;
	output [3:0] S;
	output Cout;
	wire C1,C2,C3;
	full_adder(A[0],B[0],Cin,C1,S[0]);
	full_adder(A[1],B[1],C1,C2,S[1]);
	full_adder(A[2],B[2],C2,C3,S[2]);
	full_adder(A[3],B[3],C3,Cout,S[3]);
endmodule
