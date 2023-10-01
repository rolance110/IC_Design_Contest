module STI_DAC(clk ,reset, load, pi_data, pi_length, pi_fill, pi_msb, pi_low, pi_end,
	       so_data, so_valid,
	       oem_finish, oem_dataout, oem_addr,
	       odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr);

input		clk, reset;
input		load, pi_msb, pi_low, pi_end; 
input	[15:0]	pi_data;      ///輸入的值
input	[1:0]	pi_length;
input		pi_fill;
output		so_data, so_valid;

output  oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr;
output [4:0] oem_addr;
output [7:0] oem_dataout;

//==============================================================================
reg so_data;
reg so_valid;
reg oem_finish; 
reg odd1_wr; 
reg odd2_wr; 
reg odd3_wr; 
reg odd4_wr; 
reg even1_wr; 
reg even2_wr;
reg even3_wr; 
reg even4_wr;
wire [4:0] ooml;
wire [4:0] oom2;
reg [4:0] oem_addr;
reg [7:0] oem_dataout;
reg [1:0] mem_ctr;
reg [2:0] ctr8;
reg msb;
reg [5:0] a;
reg [5:0] length;
//finit state machine
reg [1:0] ns,cs;// ns:nextstate  cs:currentstate
parameter INIT =2'b00;//initial
parameter GET=2'b01;
parameter WAIT=2'b10;
parameter STORE=2'b11;
reg switch;
//set currentstate
always@(posedge clk or posedge reset)
begin
	if(reset)
		cs <= INIT ;
	else
		cs <= ns ;
end
//set nextstate from currentstate
always@(*)
begin
	case(cs)
		INIT:
			ns = GET;  
		GET:
			ns = WAIT;  //other
		WAIT:
			ns =STORE;
		STORE:
			if (pi_msb==0 && a==length) begin //condition 結束存值  
				ns = INIT;
			end
			else if(pi_msb==1 && a==0) begin //condition 結束存值  
				ns = INIT;
			end
			else
				ns = STORE;
		default:
			ns = INIT ;
	endcase
end
reg [31:0] temp_data;
always@(posedge reset or posedge clk) begin
	if (reset)begin
		temp_data <= 0;
	end
	else if(cs == GET)begin   
		case (pi_length)
			2'b00:     //8 bits
				if(pi_low)
					temp_data[7:0] <= pi_data[15:8];
				else
					temp_data[7:0] <= pi_data[7:0];
			2'b01: //16bits
				temp_data[15:0] <= pi_data;
			2'b10:  //24 bits
				if(pi_fill)
					temp_data <= {pi_data,8'b0000_0000};
				else
					temp_data <= {8'b0000_0000,pi_data};
			2'b11:  //32 bits
				if(pi_fill)
					temp_data <= {pi_data,16'd0};
				else
					temp_data <= {16'd0,pi_data};
			default: temp_data <= temp_data;
		endcase        
	end
end
//a
always@(posedge reset or posedge clk) begin
	if (reset)begin
		a <= 0;
	end
	else if(cs ==GET)begin  //GET
		if(pi_msb==0)
			a <= 0;
		else if(pi_msb==1)
		    case(pi_length)
			2'b00:a<=8;
			2'b01:a<=16;
			2'b10:a<=24;//////////
			2'b11:a<=32;  
			endcase
	end
	else if(ns == STORE)begin
		if(pi_msb == 0 && a <= length)
			a <= a+1;
		else if(pi_msb == 1 && a >= 0)
			a <= a-1;
	end
end
//so_data
always@(posedge reset or posedge clk) begin
	if (reset)begin
		so_data <= 0;
	end
	else if(ns == STORE && pi_msb==1)
		so_data <= temp_data[a-1]; 
	else if(ns == STORE && pi_msb==0)
		so_data <= temp_data[a];  
end
//so_valid
always@(posedge reset or posedge clk) begin
	if (reset)begin
		so_valid <= 0;
	end
	else if(ns == STORE)
		so_valid <= 1;
	else
		so_valid <= 0; 
end

wire even;
assign even = even1_wr|even2_wr|even3_wr|even4_wr;
wire odd;
assign odd = odd1_wr|odd2_wr|odd3_wr|odd4_wr;
//oem_addr
always@(posedge reset or posedge clk) begin
	if (reset)begin
		oem_addr <= 0;
	end
	else if(cs==INIT && odd==1 && oem_addr==31 && switch==1)begin ///////
		oem_addr <= 0;
	end
	else if(cs==INIT && even==1 && oem_addr==31 && switch==0)begin ///////
		oem_addr <= 0;
	end
	else if(ctr8==7 && even==1 && switch==0)begin
		oem_addr <= oem_addr+1;
	end
	else if(ctr8==7 && odd==1 && switch==1)begin
		oem_addr <= oem_addr+1;
	end
end
assign ooml = oem_addr+1;
assign oom2 = oem_addr+5;


always@(posedge reset or posedge clk) begin
	if (reset)begin
		switch <= 0;
	end
	else if(oem_addr[2:0]==0 && mem_ctr>0)
		switch <= 0;
	else if(oem_addr[2:0]==0 && oem_addr>5)
		switch <= 0;
	else if(oem_addr[1:0]==0 && oem_addr>2)begin
		switch <= 1;
	end
	else
		switch <= switch;	

end

reg pre_odd;
//pre_odd
always@(posedge reset or negedge clk) begin
	if (reset)begin
		pre_odd <= 0;
	end
	else if(switch==0  && even==1 && ((oem_addr+1)%4==0))begin
		pre_odd <= 1; 
	end
	else if(switch==1  && odd==1 && ((oem_addr+1)%8==0))begin
		pre_odd <= 0; 
	end
	
	/*else if(even==1 && oem_addr==19)begin
		pre_odd <= 1; 
	end
	else if(even==1 && oem_addr==11)begin
		pre_odd <= 1; 
	end
	else if(even==1 && oem_addr==3)begin
		pre_odd <= 1;
	end 
	
	else if(odd==1 && oem_addr==15)begin
		pre_odd <= 0; 
	end
	else if(odd==1 && oem_addr==7)begin
		pre_odd <= 0; 
	end*/

	else if(odd)begin
		pre_odd <= 1;
	end
	else if(even)begin
		pre_odd <= 0;
	end
end
reg [2:0] oem_ctr; 
//oem_ctr
always@(posedge reset or posedge clk) begin
	if (reset)begin
		oem_ctr <= 0;
	end
	else if(cs==INIT)begin
		oem_ctr <= 0; 
	end
	else if(ns == STORE)   ///\
		oem_ctr <= oem_ctr+1;

end


//ctr8
always@(posedge reset or posedge clk) begin
	if (reset)begin
		ctr8 <= 7;
	end
	else if (ctr8 == 0)begin
		ctr8 <= 7;
	end
	else if(cs==STORE)begin
		ctr8 <= ctr8-1;
	end
end

//go_or_stop
reg go_or_stop;
always@(posedge reset or posedge clk) begin
	if (reset)begin
		go_or_stop <= 0;	
	end
	else if(cs == GET && pi_end==1)begin
		go_or_stop <= 1;
	end
	else
		go_or_stop <= go_or_stop;
end

//oem_dataout
always@(posedge reset or posedge clk) begin
	if (reset)begin
		oem_dataout <= 0;
	end
	else if(go_or_stop)
		oem_dataout <= 0; 
	else if(cs==STORE)
		oem_dataout[ctr8] <= so_data; 
	else begin
		oem_dataout <= oem_dataout ;
	end
end

always@(posedge reset or posedge clk) begin
	if (reset)begin
		mem_ctr <= 0;
	end
	else if (switch==1 && odd==1 && oem_addr==31)begin    ///////
		mem_ctr <=mem_ctr + 1;
	end
	else if (switch==0 && even==1 && oem_addr==31)begin    ///////
		mem_ctr <=mem_ctr + 1;
	end
end
//odd1
always@(posedge reset or posedge clk) begin
	if (reset)begin
		odd1_wr <= 0;
	end
	else if((ns == STORE||ns==INIT) && pre_odd==0 && mem_ctr==0 && ctr8==0)begin // 
		odd1_wr <= 1;
	end
	else if(ns == STORE && pre_odd==1 && mem_ctr==0)begin  
		odd1_wr <= 0;
	end
	else	
		odd1_wr <= 0;
end
//even1
always@(posedge reset or posedge clk) begin
	if (reset)begin
		even1_wr <= 0;
	end
	else if((ns == STORE||ns==INIT) && pre_odd==1 && mem_ctr==0 && ctr8==0)begin  //
		even1_wr <= 1;
	end
	else	
		even1_wr <= 0;
end
//odd2
always@(posedge reset or posedge clk) begin
	if (reset)begin
		odd2_wr <= 0;
	end
	else if((ns == STORE||ns==INIT) && pre_odd==0 && mem_ctr==1 && ctr8==0)begin  
		odd2_wr <= 1;
	end
	else	
		odd2_wr <= 0;
end
//even2
always@(posedge reset or posedge clk) begin
	if (reset)begin
		even2_wr <= 0;
	end
	else if((ns == STORE||ns==INIT) && pre_odd==1 && mem_ctr==1&& ctr8==0)begin  
		even2_wr <= 1;
	end
	else	
		even2_wr <= 0;
end



//odd3
always@(posedge reset or posedge clk) begin
	if (reset)begin
		odd3_wr <= 0;
	end
	else if((ns == STORE||ns==INIT) && pre_odd==0 && mem_ctr==2 && ctr8==0)begin  
		odd3_wr <= 1;
	end
	else	
		odd3_wr <= 0;
end
//even3
always@(posedge reset or posedge clk) begin
	if (reset)begin
		even3_wr <= 0;
	end
	else if((ns == STORE||ns==INIT)  && pre_odd==1 && mem_ctr==2&& ctr8==0)begin  
		even3_wr <= 1;
	end
	else	
		even3_wr <= 0;
end

//odd4
always@(posedge reset or posedge clk) begin
	if (reset)begin
		odd4_wr <= 0;
	end
	else if((ns == STORE||ns==INIT)  && pre_odd==0 && mem_ctr==3 && ctr8==0)begin  
		odd4_wr <= 1;
	end
	else	
		odd4_wr <= 0;
end
//even4
always@(posedge reset or posedge clk) begin
	if (reset)begin
		even4_wr <= 0;
	end
	else if((ns == STORE||ns==INIT) && pre_odd==1 && mem_ctr==3&& ctr8==0)begin  
		even4_wr <= 1;
	end
	else	
		even4_wr <= 0;
end



//oem_finish
always@(posedge reset or posedge clk) begin
	if (reset)begin
		oem_finish <= 0;
	end
	else if(ns==GET && mem_ctr == 3 && oem_addr==31 && odd==1) begin
		oem_finish <= 1;
	end
end



always@(posedge reset or posedge clk) begin
	if (reset)begin
		length <= 0;
	end
	else if (cs == GET)begin     ///bit_ctr 初始化
		case (pi_length)
			2'b00:  length <= 8;
			2'b01:  length <= 16;
			2'b10:  length <= 24;
			2'b11:  length <= 32;
			default: length <= length;
		endcase
	end
end

endmodule