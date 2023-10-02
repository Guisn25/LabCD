module MaquinaDeEstado(CLOCK,UD,RESET,s);
	input CLOCK,RESET;
	input [1:0] UD;
	output [3:0] s;
	wire [3:0] proxE,rATUAL;

	entradas E0(.UD(UD), .ATUAL(rATUAL), .prox(proxE));
	registradores R0(.Clock(CLOCK),.RESET(RESET),.E(proxE),.r(rATUAL));
	saida S0(.R(rATUAL), .UD(UD), .s(s));
	
endmodule 