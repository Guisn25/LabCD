module registradores(Clock,RESET,E,r);
	input Clock, RESET;
	input [3:0] E;
	output reg [3:0] r;

	initial begin
		r <= 4'b0000;
	end
	
	always @(posedge Clock)
		if(~RESET)
			r <= E;
		else
			r <= 4'b0000;

endmodule 