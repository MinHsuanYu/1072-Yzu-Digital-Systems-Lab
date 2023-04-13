module S1061534_lab4(str_out, match, rst, str_in, clk);
input clk, rst, str_in;
output [2:0]str_out;
output match;
reg [2:0]str_out;
reg [1:0]current_state,next_state;//need four states
reg match;
parameter state0=0,state1=1,state2=2,state3=3;
always@(posedge clk or posedge rst)//reset
begin //CS
	if(rst)current_state <= state0;
	else current_state <= next_state;
end
always@(current_state or str_in)//set next state with input
begin //NS
	case(current_state)
	state0:
		next_state=(str_in==0)?state0:state1;
	state1:
		next_state=(str_in==0)?state0:state2;
	state2:
		next_state=(str_in==0)?state3:state2;
	state3:
		next_state=(str_in==0)?state0:state1;
	endcase
end
always@(current_state or str_in)//find output
begin//OL
	case(current_state)
	state0:
		match=0;
	state1:
		match=0;
	state2:
		match=0;
	state3:
		match=1;
	endcase
end
always@(posedge clk)//deliver
begin//OL
	str_out[0]<=str_in;
	str_out[1]<=str_out[0];
	str_out[2]<=str_out[1];
end
endmodule