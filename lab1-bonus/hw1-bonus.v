module hw1_bonus(A0,A1,A2,A3,B0,B1,B2,B3,D0,D1,D2);
	input A0,A1,A2,A3,B0,B1,B2,B3;
	output D0,D1,D2;
	wire A0b,A1b,A2b,A3b,B0b,B1b,B2b,B3b;
	not (A0b,A0);
	not	(A1b,A1);
	not (A2b,A2);
	not (A3b,A3);
	not (B0b,B0);
	not (B1b,B1);
	not (B2b,B2);
	not (B3b,B3);
	wire AbB0,ABb0,AbB1,ABb1,AbB2,ABb2,AbB3,ABb3;
	and	(AbB0,A0b,B0); 
	and (ABb0,A0,B0b); 
	and	(AbB1,A1b,B1); 
	and (ABb1,A1,B1b);
	and	(AbB2,A2b,B2); 
	and (ABb2,A2,B2b);
	and	(AbB3,A3b,B3); 
	and (ABb3,A3,B3b);
	wire x0,x1,x2,x3;
	nor (x0,AbB0,ABb0);
	nor (x1,AbB1,ABb1);
	nor (x2,AbB2,ABb2);
	nor (x3,AbB3,ABb3);
	wire D10,D11,D12,D20,D21,D22;
	and (D10,ABb0,x1,x2,x3);
	and (D11,ABb1,x2,x3);
	and (D12,ABb2,x3);
	and (D20,AbB0,x1,x2,x3);
	and (D21,AbB1,x2,x3);
	and (D22,AbB2,x3);
	and (D0,x0,x1,x2,x3);
	or (D1,D10,D11,D12,ABb3);
	or (D2,D20,D21,D22,AbB3);
endmodule 