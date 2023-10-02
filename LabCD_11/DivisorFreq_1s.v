module DivisorFreq_1s(CLOCK,clk);
	input CLOCK;
	output reg clk;	
	reg [25:0] cont;

	always @ (posedge CLOCK)
		if (cont == 26'd50000000) begin
			cont <= 26'd0;
			clk = 1;
		end
		else begin
			cont <= cont+1;
			clk = 0;
		end

endmodule 