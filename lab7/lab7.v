module lab7(in_a,in_b,cin,out_a,out_b,out_c,out_d);
	input [2:0]in_a,in_b;
	input cin;
	output reg[0:6]out_a,out_b,out_c,out_d;
	reg [3:0] tem1, tem2;
	reg [3:0]sum;
always @ (1)
begin
	case(in_a[2:0])
		3'b000 : out_a = 7'b0000001;
      3'b001 : out_a = 7'b1001111;
      3'b010 : out_a = 7'b0010010;
      3'b011 : out_a = 7'b0000110;
      3'b100 : out_a = 7'b1001100;
      3'b101 : out_a = 7'b0100100;
      3'b110 : out_a = 7'b0100000;
      3'b111 : out_a = 7'b0001111;
	endcase

	case(in_b[2:0])
		3'b000 : out_b = 7'b0000001;
      3'b001 : out_b = 7'b1001111;
      3'b010 : out_b = 7'b0010010;
      3'b011 : out_b = 7'b0000110;
      3'b100 : out_b = 7'b1001100;
      3'b101 : out_b = 7'b0100100;
      3'b110 : out_b = 7'b0100000;
      3'b111 : out_b = 7'b0001111;
	endcase


	sum = in_a + in_b + cin;
	tem1 = sum / 10;
	tem2 = sum % 10;

case(tem1)
	4'b0001: out_c[0:6] = 7'b1001111; 
default: out_c[0:6] = 7'b0000001;
endcase

case(tem2)
		4'b0000: out_d[0:6] = 7'b0000001;  
		4'b0001: out_d[0:6] = 7'b1001111;  
		4'b0010: out_d[0:6] = 7'b0010010; 
		4'b0011: out_d[0:6] = 7'b0000110; 
		4'b0100: out_d[0:6] = 7'b1001100; 
		4'b0101: out_d[0:6] = 7'b0100100;
		4'b0110: out_d[0:6] = 7'b0100000; 
		4'b0111: out_d[0:6] = 7'b0001111; 
		4'b1000: out_d[0:6] = 7'b0000000; 
		4'b1001: out_d[0:6] = 7'b0000100; 
		default: out_d[0:6] = 7'b0000001; 
endcase
		
end
endmodule 