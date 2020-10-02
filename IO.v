module IO_mod(
		input wire clk,
		input wire IO_SC,
		input wire IO_WC,
		input wire IO_n_LB_w,
		input wire IO_n_LB_r,
		input wire[7:0] n_IV_out,
		input wire[7:0] LB_Din,
		input wire[7:0] RB_Din,
		output wire[7:0] LB_Dout,
		output wire[7:0] RB_Dout,
		output wire[7:0] n_IV_in,
		output wire[15:0] IO_address);
reg[7:0] LB_A;
reg[7:0] LB_D;
reg[7:0] RB_A;
reg[7:0] RB_D;
always @(posedge clk)
begin
	if(IO_WC)
	begin
		if(IO_n_LB_w)
			RB_D <= ~n_IV_out;
		else
			LB_D <= ~n_IV_out;
	end
	if(IO_SC)
	begin
		if(IO_n_LB_w)
			RB_A <= ~n_IV_out;
		else
			LB_A <= ~n_IV_out;
	end
end
assign n_IV_in = (IO_n_LB_r)? ~RB_Din : ~LB_Din;
assign LB_Dout = LB_D;
assign RB_Dout = RB_D;
assign IO_address = {LB_A, RB_A};
endmodule

module testmem(input wire clk, input wire wren, input wire[7:0] A, input wire[7:0] Din, output wire[7:0] Dout);
reg[7:0] mem[255:0];
reg[7:0] oreg;
always @(posedge clk)
begin
	oreg <= mem[A];
	if(wren)
		mem[A] <= Din;
end
assign Dout = oreg;
endmodule
