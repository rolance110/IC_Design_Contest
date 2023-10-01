
`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   	clk;
input   	reset;
output  reg [13:0] 	gray_addr;
output  reg       	gray_req;
input   	gray_ready;
input   [7:0] 	gray_data;
output  reg [13:0] 	lbp_addr;
output  reg	lbp_valid;
output  reg [7:0] 	lbp_data;
output  reg	finish;
//====================================================================
reg [3:0] state;
reg T1,T2,T3,T5,T6,T7,T4,T0;

//finish
always@(posedge reset or posedge clk) begin
    if (reset)begin
        finish <= 0;
    end
    else if(lbp_addr==16254 && lbp_valid==1)begin
        finish<=1;
    end
end

//gray_req
always@(posedge reset or posedge clk) begin
    if (reset)begin
        gray_req <= 0;
    end
    else if (gray_ready == 1)begin
        gray_req <= 1;
    end
end
//gray_addr///////////////////////////////////
//state
always@(posedge reset or posedge clk) begin
    if (reset)begin
        state<=0;
    end
    else if (state==9)begin
        state<=1;
    end
    else if(gray_req==1)begin
        state<=state+1;
    end
end
//gray_addr
//mid_addr
reg [13:0] mid_addr;
always@(posedge reset or posedge clk) begin
    if (reset)begin
        mid_addr<=0;
    end
    else if(state==1)begin
        mid_addr<=gray_addr;
    end
end
//mid_data
reg [7:0] mid_data;
always@(posedge reset or posedge clk) begin
    if (reset)begin
        mid_data<=0;
    end
    else if(state==1)begin
        mid_data<=gray_data;
    end
end
always@(posedge reset or posedge clk) begin
    if (reset)begin
        gray_addr <= 129;
    end
    else if(gray_req) begin
        if(state==1)begin
            gray_addr <= gray_addr-129;
        end
        else if(state==2)begin
            gray_addr <= mid_addr-128;
        end
        else if(state==3)begin
            gray_addr <= mid_addr-127;
        end
        else if(state==4)begin
            gray_addr <= mid_addr-1;
        end
        else if(state==5)begin
            gray_addr <= mid_addr+1;
        end
        else if(state==6)begin
            gray_addr <= mid_addr+127;
        end
        else if(state==7)begin
            gray_addr <= mid_addr+128;
        end
        else if(state==8)begin
            gray_addr <= mid_addr+129;
        end
        else if(state==9)begin
            if((mid_addr-126)%128==0)
                gray_addr<=mid_addr+3;
            else
                gray_addr <= mid_addr+1;
        end
    end
end


//compute threshold
//T0
always@(posedge reset or posedge clk) begin
    if (reset)begin
        T0<=0;
    end
    else if(state==2)begin
        if (gray_data>=mid_data) begin
            T0<=1;
        end
        else begin
            T0<=0;
        end
    end
end
//T1
always@(posedge reset or posedge clk) begin
    if (reset)begin
        T1<=0;
    end
    else if(state==3)begin
        if (gray_data>=mid_data) begin
            T1<=1;
        end
        else begin
            T1<=0;
        end
    end
end
//T2
always@(posedge reset or posedge clk) begin
    if (reset)begin
        T2<=2;
    end
    else if(state==4)begin
        if (gray_data>=mid_data) begin
            T2<=1;
        end
        else begin
            T2<=0;
        end
    end
end
//T3
always@(posedge reset or posedge clk) begin
    if (reset)begin
        T3<=0;
    end
    else if(state==5)begin
        if (gray_data>=mid_data) begin
            T3<=1;
        end
        else begin
            T3<=0;
        end
    end
end
//T4
always@(posedge reset or posedge clk) begin
    if (reset)begin
        T4<=0;
    end
    else if(state==6)begin
        if (gray_data>=mid_data) begin
            T4<=1;
        end
        else begin
            T4<=0;
        end
    end
end
//T5
always@(posedge reset or posedge clk) begin
    if (reset)begin
        T5<=0;
    end
    else if(state==7)begin
        if (gray_data>=mid_data) begin
            T5<=1;
        end
        else begin
            T5<=0;
        end
    end
end
//T6
always@(posedge reset or posedge clk) begin
    if (reset)begin
        T6<=0;
    end
    else if(state==8)begin
        if (gray_data>=mid_data) begin
            T6<=1;
        end
        else begin
            T6<=0;
        end
    end
end
//T7
always@(posedge reset or posedge clk) begin
    if (reset)begin
        T7<=0;
    end
    else if(state==9)begin
        if (gray_data>=mid_data) begin
            T7<=1;
        end
        else begin
            T7<=0;
        end
    end
end

//compute LBP_data////******************************************
always@(posedge reset or posedge clk) begin
    if(reset)
        lbp_data<=0;
    else
        lbp_data <= T0+T1*2+T2*4+T3*8+T4*16+T5*32+T6*64+T7*128;
end
//lbp_valid
always@(posedge reset or negedge clk) begin
    if (reset)begin
        lbp_valid <= 0;
    end
    else if (state==1)begin// && lbp_addr!=0
        lbp_valid<=1;
    end
    else if (state==2)begin
        lbp_valid<=0;
    end
end
//lbp_addr
always@(posedge reset or posedge clk) begin
    if (reset)begin
        lbp_addr<=0;
    end
    else begin
        lbp_addr<=mid_addr;
    end
end
//====================================================================
endmodule
