module ContadorAssincrono(Clock, Reset, S);
	input wire Clock, Reset;
	output reg [2:0] S;
	
	initial begin
		S = 3'b000;
	end
	
	always @(negedge Clock or posedge Reset) begin
		if(Reset)
			S[0] = 0;
		else
			S[0] <= ~S[0];
	end
	always @(negedge S[0] or posedge Reset) begin
		if(Reset)
			S[1] = 0;
		else
			S[1] <= ~S[1];
	end
	always @(negedge S[1] or posedge Reset) begin
		if(Reset)
			S[2] = 0;
		else
			S[2] <= ~S[2];
	end
	
endmodule
