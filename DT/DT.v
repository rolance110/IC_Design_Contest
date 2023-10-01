module DT(
	input 			clk, 
	input			reset,
	output	reg		done ,
	output	reg		sti_rd ,
	output	reg 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	reg		res_wr ,
	output	reg		res_rd ,
	output	reg 	[13:0]	res_addr ,
	output	reg 	[7:0]	res_do,
	input		[7:0]	res_di
	);
reg [7:0] min;
reg [3:0] counter;
wire [7:0] compute_temp;
assign compute_temp = res_di + 1;
reg flag_F_B;

//fsm
reg [2:0] cs;
reg [2:0] ns;
parameter INIT = 3'd0;
parameter W_INVERSE = 3'd1;
parameter READ_F = 3'd2;
parameter READ_B = 3'd3;
parameter WRITE_F = 3'd4;
parameter WRITE_B = 3'd5;
parameter COUNT_5 = 3'd6;
parameter FINISH = 3'd7;

always@(posedge clk or negedge reset) begin
	if(~reset) 
		cs <= INIT;
	else 
		cs <= ns;
end

always@(*) begin
	case(cs)
		INIT:
			ns = W_INVERSE;
		W_INVERSE:
			if(res_addr == 14'd16383)//initial RAM finish
				ns = READ_F;
			else 
				ns = W_INVERSE;
		READ_F:
			if(res_di) 
				ns = COUNT_5;
			else begin
				if(res_addr == 14'd16254)//complete Forward final pixel 
					ns = READ_B;
				else 
					ns = READ_F;
			end 
		COUNT_5:
			if(counter== 4'd5)
				if(~flag_F_B)
					ns = WRITE_F;
				else
					ns = WRITE_B;
			else 
				ns = COUNT_5;
		WRITE_F:
			if(res_addr == 14'd16254) //complete Forward final pixel 
				ns = READ_B;
			else 
				ns = READ_F;
		READ_B:
			if(res_di) 
				ns = COUNT_5;
			else begin
				if(res_addr == 14'd128) 
					ns = FINISH;
				else 
					ns = READ_B;
			end
		WRITE_B:
			if(res_addr == 14'd128)
				ns = FINISH;
			else 
				ns = READ_B;
		FINISH:
			ns = FINISH;
		default: 
			ns = INIT;
	endcase
end
//flag_F_B
always@(posedge clk or negedge reset) begin
	if(~reset) 
		flag_F_B <= 1'b0;
	else if(cs == READ_F && res_addr == 14'd16254) 
		flag_F_B <= 1'b1;
end

//min
always@(posedge clk or negedge reset)begin
	if(~reset) 
		min <= 0;
	else if(cs == COUNT_5 && flag_F_B==1'b0) begin
		if(counter == 4'd1) 
			min <= res_di;
		else if(min>res_di) 
			min <= res_di; 
	end
	else if(cs == READ_B) 
		min <= res_di;
	else if(cs == COUNT_5 && flag_F_B==1'b1 && min>compute_temp )
		min <= compute_temp;
end
//counter
always@(posedge clk or negedge reset)begin
	if(~reset) 
		counter <= 4'd15;
	else if(ns == W_INVERSE && counter==0) 
		counter <= 15;
	else if(ns == W_INVERSE && cs != INIT)
		counter <= counter - 1;
	else if(ns == WRITE_F || ns == WRITE_B || ns == READ_F || ns == READ_B)
		counter <= 4'd0;
	else if(ns == COUNT_5)
		counter <= counter + 4'd1;
end

//sti_addr
always@(posedge clk or negedge reset)begin
	if(~reset) 
		sti_addr <= 10'd8;
	else if(ns == W_INVERSE && counter==4'd15 && cs!=INIT) 
		sti_addr <= sti_addr + 10'd1;
end
//sti_rd
always@(posedge clk or negedge reset)begin
	if(~reset) 
		sti_rd <= 1'b0;
	else if((ns == W_INVERSE && counter==4'd0) || cs == INIT) 
		sti_rd <= 1'b1;
	else 
		sti_rd <= 1'b0;
end
//res_rd
always@(posedge clk or negedge reset)begin
	if(~reset) 
		res_rd <= 1'b0;
	else if(ns == READ_F || ns == READ_B || ns == COUNT_5)
		res_rd <= 1'b1;
	else 
		res_rd <= 1'b0;
end
//res_wr
always@(posedge clk or negedge reset)begin
	if(~reset) 
		res_wr <= 1'd0;
	else if((ns == W_INVERSE && cs!=INIT) || ns == WRITE_F || ns == WRITE_B) 
		res_wr <= 1'd1;
	else 
		res_wr <= 1'd0;
end

//res_addr
always@(posedge clk or negedge reset)begin
	if(~reset) 
		res_addr <= 14'd127;
	else if(ns == W_INVERSE && cs!=INIT) 
		res_addr <= res_addr + 14'd1;
	else if(cs == W_INVERSE && ns == READ_F)
		res_addr <= 14'd129;
	else if(cs == W_INVERSE && ns == READ_F)
		res_addr <= 14'd16255;
	else if(ns == COUNT_5 || cs == COUNT_5) begin
		if(flag_F_B==1'b0)begin
		case(counter)
			4'd0: res_addr <= res_addr - 14'd129;
			4'd1: res_addr <= res_addr + 14'd1;
			4'd2: res_addr <= res_addr + 14'd1;
			4'd3: res_addr <= res_addr + 14'd126;
			4'd4: res_addr <= res_addr + 14'd1;
		endcase
		end
		else begin
		case(counter)  
			4'd0: res_addr <= res_addr + 14'd129;
			4'd1: res_addr <= res_addr - 14'd1;
			4'd2: res_addr <= res_addr - 14'd1;
			4'd3: res_addr <= res_addr - 14'd126;
			4'd4: res_addr <= res_addr - 14'd1;
		endcase
		end
	end
	else if(cs == READ_F || cs == WRITE_F) 
		res_addr <= res_addr + 14'd1;
	else if(cs == READ_B || cs == WRITE_B) 
		res_addr <= res_addr - 14'd1;
end
//res_do
always@(posedge clk or negedge reset)begin
	if(~reset) 
		res_do <= 0;
	else if(ns == W_INVERSE) 
		res_do <= sti_di[counter];
	else if(ns == WRITE_F) 
		res_do <= min + 1;
	else if(ns == WRITE_B) 
		res_do <= min;
end
//done
always@(posedge clk or negedge reset)begin
	if(~reset) 
		done <= 1'b0;
	else if(cs == FINISH) 
		done <= 1'b1;
end

endmodule
