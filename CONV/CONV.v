`timescale 1ns/10ps
module  CONV(
  input		clk,
  input		reset,
  output	reg	busy,	
  input		ready,	  
  output reg	[11:0] iaddr,
  input		[19:0] idata,	

  output	reg  	cwr,
  output	reg [11:0]	caddr_wr,
  output	reg signed [19:0] 	cdata_wr,

  output	reg crd,
  output	reg[11:0] 	caddr_rd,
  input	  [19:0]	cdata_rd,

  output	reg [2:0] 	csel
);
  
integer i;
reg [5:0] window_x,window_y;
reg signed [19:0] op1;

reg [3:0] conv_cnt;

reg signed [19:0] kernel1[0:8];

reg signed [44:0] conv_out1;
wire signed [44:0] conv_out2;
wire signed [20:0] conv_out3;//?

always@(posedge reset or posedge clk) begin
  if (reset)begin
    kernel1[0] = 20'h0A89E;
    kernel1[1] = 20'h092D5;
    kernel1[2] = 20'h06D43;
    kernel1[3] = 20'h01004;
    kernel1[4] = 20'hF8F71;
    kernel1[5] = 20'hF6E54;
    kernel1[6] = 20'hFA6D7;
    kernel1[7] = 20'hFC834;
    kernel1[8] = 20'hFAC19;
  end
end

//finit state machine
reg [2:0] ns,cs;// ns:nextstate  cs:currentstate
parameter INIT =3'b000;//initial
parameter MOVE=3'b001;
parameter CONV=3'b010;
parameter MAXPOOL=3'b011;
parameter LAYRER_0_FINISH=3'b100;
parameter MAXPOOL_STORE=3'b101;

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
            ns=MOVE;             
        MOVE:
			ns =CONV;
		CONV:
			if(conv_cnt == 4'd10 && (&caddr_wr))//run to final
				ns=LAYRER_0_FINISH;
			else if(conv_cnt == 4'd10)
				ns=MOVE;
			else
				ns=CONV;
    	LAYRER_0_FINISH:
            ns=MAXPOOL;
    	MAXPOOL:
            if(conv_cnt==4'd4)
                ns = MAXPOOL_STORE;
            else
                ns = MAXPOOL;
    	MAXPOOL_STORE:
            ns=MAXPOOL;
    	default:
            ns=INIT;
    endcase
end
//window x,y
always@(posedge reset or posedge clk) begin
  if (reset)begin
	window_x <= 6'd63;
	window_y <= 6'd63;
  end
  else if(ns == MOVE && (&window_x))begin
	window_x <= 6'd0;
	window_y <= window_y + 6'd1;
  end
  else if(ns == MOVE)begin
	window_x <= window_x + 6'd1;
	window_y <= window_y;
  end
  else begin
	window_x <= window_x;
	window_y <= window_y;
  end
end
//conv_cnt
always@(posedge reset or posedge clk) begin
  	if (reset)
		conv_cnt <= 0;
  	else if(ns == MOVE)
		conv_cnt <= 4'd15;
	else if(ns == LAYRER_0_FINISH || ns == MAXPOOL_STORE)
		conv_cnt <= 4'd0;
  	else if(ns == CONV || ns == MAXPOOL)
		conv_cnt <= conv_cnt + 4'd1;
end
//busy
always@(posedge reset or posedge clk) begin
  if (reset)begin
    busy <= 0;
  end
  else if(cs == MAXPOOL_STORE && caddr_wr == 1023)begin
    busy <= 0;
  end
  else if(cs==INIT)begin
    busy <= 1;
  end
end

//cwr
always@(posedge reset or posedge clk) begin
  if (reset)begin
    cwr <= 1'b0;
  end
  else if(ns == MOVE || ns == LAYRER_0_FINISH)begin
    cwr <= 1'b1;
  end
  else if(ns == MAXPOOL_STORE)begin
    cwr <= 1'b1;
  end
  else begin
    cwr <= 1'b0;
  end
end
//csel
always@(posedge reset or posedge clk) begin
  if (reset)begin
    csel <= 2'b00;
  end
  else if(ns == CONV || ns == MOVE || ns == LAYRER_0_FINISH)begin
    csel <= 2'b01;
  end
  else if(ns == MAXPOOL)begin
    csel <= 2'b01;
  end
  else if(ns == MAXPOOL_STORE)begin
    csel <= 2'b11;
  end
end
//caddr_wr
always@(posedge reset or posedge clk) begin
  if (reset)begin
    caddr_wr <= 0;
  end
  else if(ns == CONV)begin
    caddr_wr <= {window_y,window_x};
  end
  else if(ns == MAXPOOL_STORE && caddr_rd == 65)begin
    caddr_wr <= 0;
  end
  else if(ns == MAXPOOL_STORE)begin
    caddr_wr <= caddr_wr + 1;
  end
end
//op1 : operator1
always@(posedge reset or posedge clk)begin
	if(reset)
		op1 <= 0;
	else if(ns==CONV && conv_cnt<4'd9)begin//?store 0~8
		case (conv_cnt)
			4'd0:begin
				if(window_x == 6'd0 || window_y == 6'd0)
					op1 <= 0;
				else
					op1 <= idata;
			end 
			4'd1:begin
				if(window_y == 6'd0)
					op1 <= 0;
				else
					op1 <= idata;
			end
			4'd2:begin
				if(window_x == 6'd63 || window_y == 6'd0)
					op1 <= 0;
				else
					op1 <= idata;
			end
			4'd3:begin
				if(window_x == 6'd0)
					op1 <= 0;
				else
					op1 <= idata;
			end
			4'd4:begin
				op1 <= idata;
			end
			4'd5:begin
				if(window_x == 6'd63)
					op1 <= 0;
				else
					op1 <= idata;
			end
			4'd6:begin
				if(window_x == 6'd0 || window_y == 6'd63)
					op1 <= 0;
				else
					op1 <= idata;
			end
			4'd7:begin
				if(window_y == 6'd63)
					op1 <= 0;
				else
					op1 <= idata;
			end
			4'd8:begin
				if(window_x == 6'd63 || window_y == 6'd63)
					op1 <= 0;
				else
					op1 <= idata;
			end
			default: 
				op1 <= 0;
		endcase
  end
	else
		op1 <= 0;
end
//3*3 window
always@(posedge reset or posedge clk)begin
	if(reset)
		conv_out1 <= 0;
	else if(ns==CONV && conv_cnt != 4'd0 && conv_cnt<4'd10)//?evaluate 1~9
		conv_out1 <= conv_out1 + op1*kernel1[conv_cnt-1];
	else
		conv_out1 <= 0;
end
assign  conv_out2 = conv_out1 + {20'h01310,16'h0};
assign  conv_out3 = conv_out2[35:15]+20'd1;//advance
//cdata_wr
always@(posedge reset or posedge clk) begin
  if (reset)begin
    cdata_wr <= 0;
  end
  else if(ns == MOVE || ns == LAYRER_0_FINISH)begin
		if(conv_out2[35])
			cdata_wr <= 20'd0 ;
		else
			cdata_wr <= conv_out3[20:1] ;//?
	end
  else if(ns == MAXPOOL && conv_cnt == 4'd0)begin
    cdata_wr <= cdata_rd;
  end
  else if(ns == MAXPOOL && cdata_wr < cdata_rd)begin
    cdata_wr <= cdata_rd;
  end
end
//iaddr
always@(posedge reset or posedge clk) begin
  	if(reset)
    	iaddr <= 0;
	else if(ns == CONV)begin
		case(conv_cnt)
			4'd15: iaddr <= {window_y-6'd1,window_x-6'd1};
			4'd0:  iaddr <= {window_y-6'd1,window_x};
			4'd1:  iaddr <= {window_y-6'd1,window_x+6'd1};
			4'd2:  iaddr <= {window_y,window_x-6'd1};
			4'd3:  iaddr <= {window_y,window_x};
			4'd4:  iaddr <= {window_y,window_x+6'd1};
			4'd5:  iaddr <= {window_y+6'd1,window_x-6'd1};
			4'd6:  iaddr <= {window_y+6'd1,window_x};
			4'd7:  iaddr <= {window_y+6'd1,window_x+6'd1};
			default: iaddr <= 12'd0;
		endcase
	end
end
//caddr_rd
always@(posedge reset or posedge clk) begin
  	if(reset)
    	caddr_rd <= 0;
	else if (ns == LAYRER_0_FINISH)begin
		caddr_rd <= 0;
	end
  	else if(ns == MAXPOOL)begin
    	case (conv_cnt)
    	  4'd0: caddr_rd <= caddr_rd+1;
    	  4'd1: caddr_rd <= caddr_rd+63;
    	  4'd2: caddr_rd <= caddr_rd+1;
    	  4'd3:begin 
    	    if(&caddr_rd[6:0])
    	      caddr_rd <= caddr_rd +1;
    	    else
    	      caddr_rd <= caddr_rd-63;
    	  end
    	  default: caddr_rd <= caddr_rd;
    	endcase
  end
end
//crd
always@(posedge reset or posedge clk) begin
  if (reset)begin
    crd <= 0;
  end
  else if(ns == CONV || ns == MAXPOOL)begin
    crd <= 1;
  end
  else begin
    crd <= 0;
  end
end

endmodule