module LASER (
input CLK,
input RST,
input [3:0] X,//target
input [3:0] Y,//target
output reg [3:0] C1X,
output reg [3:0] C1Y,
output reg [3:0] C2X,
output reg [3:0] C2Y,
output reg DONE);
//40 all save
//finit state machine
reg [3:0] ns,cs;// ns:nextstate  cs:currentstate
parameter INIT =4'd0;//initial
parameter SAVE_40=4'd1;
parameter F_C=4'd2;
parameter COMPARE_in=4'd3;
parameter COMPARE_num=4'd4;
parameter DIS=4'd5;
parameter F_C2=4'd6;
parameter C_FINISH=4'd7;
parameter WAIT39=4'd8;

integer  i,j,k,m,n,p;
reg [5:0] cnt40;
reg [3:0] t_X [39:0];//must
reg [3:0] t_Y [39:0];//must
reg [4:0] circle;
reg c_flag;
reg [5:0] C1_max_num; //record C1 target in number
reg [5:0] C2_max_num; //record C2 target in number

reg [3:0] CX_cur;
reg [3:0] CY_cur;
reg [5:0] C_cur_num;

reg [3:0] x_distance;
reg [3:0] y_distance;
reg [3:0] x_distance2;
reg [3:0] y_distance2;
reg in;
reg in2;

reg [2:0] cnt_littleX;
reg [2:0] cnt_littleY;

reg [5:0] C_repeat_num;
reg [5:0] C_re_m_num;
reg C2_flag;
reg bigger;

//set currentstate
always@(posedge CLK or posedge RST)
begin
    if(RST)
        cs <= INIT ;
    else if(DONE)
        cs <= INIT;
    else
        cs <= ns ;
end

//set nextstate from currentstate
always@(*)
begin
    case(cs)
        INIT:
            ns = SAVE_40;     
        SAVE_40:
            if(cnt40==6'd39)
                ns = WAIT39;
            else
                ns = SAVE_40;
        WAIT39:
            ns = F_C;
        F_C://change current center
            ns = DIS;
        DIS://compute distance
            ns = COMPARE_in;
        COMPARE_in://decide in or not?
            if(cnt40==40)begin      
                ns = COMPARE_num;
            end
            else begin
                ns = DIS;
            end
        COMPARE_num://is max number?
            if(CX_cur==0 && CY_cur==0)begin
                ns = C_FINISH;
            end
            else if(bigger)begin
                ns = C_FINISH;
            end
            else begin 
                ns = F_C;
            end
        C_FINISH:
            ns = F_C;
        default:
            ns=INIT ;
    endcase
end
//cnt40
 
//bigger
always@(posedge RST or posedge CLK) begin
    if (DONE)begin
        bigger <= 0;
    end
    else if(ns == COMPARE_num && circle[0]==1 && (C_cur_num >= C1_max_num) && c_flag==1)begin
        bigger <= 1;
    end
    else if(ns == COMPARE_num && circle[0]==0 && C2_flag && (C_cur_num >= C2_max_num) && c_flag==1)begin
        bigger <= 1;
    end
    else
        bigger <= 0;
end
wire clr = RST | DONE;
always@(posedge clr or posedge CLK) begin
    if( clr)
        cnt40 <= 0;
    else if(ns == WAIT39)begin
        cnt40 <= 6'd0;
    end
    else if(ns == F_C)begin
        cnt40 <= 6'd0;
    end
    else if(ns == COMPARE_in && cnt40==6'd40)begin
        cnt40 <= 6'd0;
    end
    else if(ns == SAVE_40 || ns == COMPARE_in)begin
        cnt40 <= cnt40 + 6'd1;
    end
end
always@(posedge clr or posedge CLK) begin
    if (clr)begin
        for(i=0;i<40;i=i+1)begin
            t_X[i] <= 4'd0; 
            t_Y[i] <= 4'd0;
        end
    end
    else if(ns == SAVE_40 || ns == WAIT39)begin
        t_X[cnt40] <= X; 
        t_Y[cnt40] <= Y;
    end
end
always@(posedge clr or posedge CLK) begin
    if (clr)begin
        circle <= 1;
    end
    else if(ns == C_FINISH)begin
        circle <= circle+1;
    end
end

always@(posedge clr or posedge CLK) begin
    if (clr)begin
        c_flag <= 1'b0;
    end
    else if(ns == C_FINISH)begin
        c_flag <= 1'b1;
    end
end
//C2_flag
always@(posedge RST or posedge CLK) begin
    if (DONE)begin
        C2_flag <= 0;
    end
    else if(ns == C_FINISH && c_flag==1)begin
        C2_flag <= 1;
    end
end
/*
    c1 -> 1
    c2 -> 0  
*/


///C1X max_index
///C1Y max_index
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        C1X <= 4'd0;
        C1Y <= 4'd0;
        C2X <= 4'd0;
        C2Y <= 4'd0;
    end
    else if(ns == COMPARE_num && C_cur_num >= C1_max_num && circle[0]==1)begin
        C1X <= CX_cur; 
        C1Y <= CY_cur;
    end
    else if(ns == COMPARE_num && C_cur_num >= C2_max_num && circle[0]==0)begin
        C2X <= CX_cur; 
        C2Y <= CY_cur;
    end
end
//total_num
reg [5:0] total_num;
always@(posedge clr or posedge CLK) begin
    if (clr)begin
        total_num <= 6'd0;
    end
    else if(ns == C_FINISH && C_cur_num >= C2_max_num)begin
        total_num <= C1_max_num + C2_max_num + C_re_m_num;
    end
end
///C1_max_num//TODO:number
always@(posedge clr or posedge CLK) begin
    if (clr)begin
        C1_max_num <= 6'd0;
    end
    else if(ns == C_FINISH && c_flag==1 && C2_flag==0)begin //sub joint 
        C1_max_num <= C1_max_num - C_re_m_num;
    end
    else if(ns == COMPARE_num && C_cur_num >= C1_max_num && circle[0]==1)begin
        C1_max_num <= C_cur_num;
    end
end
///C2_max_num
always@(posedge clr or posedge CLK) begin
    if (clr)begin
        C2_max_num <= 6'd0;
    end
    else if(ns == COMPARE_num && C_cur_num >= C2_max_num && circle[0]==0)begin
        C2_max_num <= C_cur_num;
    end
end
//C1_and_C2_num
always@(posedge clr or posedge CLK) begin
    if (clr)begin
        C_re_m_num <= 6'd0;
    end
    else if(ns == COMPARE_num && C_cur_num >= C2_max_num)begin
        C_re_m_num <= C_repeat_num;
    end
end

///C_cur_num
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        C_cur_num <= 6'd0;
    end
    else if(ns == F_C)begin/*COMPARE_num*/
        C_cur_num <= 6'd0;
    end
    else if(ns == COMPARE_in && c_flag==0 && in==1)begin  //run 1 (circle 1 first)
        C_cur_num <= C_cur_num + 6'd1;
    end
    else if(ns == COMPARE_in && c_flag==1 && in==1 && in2!=1)begin  //run other
        C_cur_num <= C_cur_num + 6'd1;
    end
end
//C_repeat_num
always@(posedge RST or posedge CLK) begin
    if (DONE)begin
        C_repeat_num <= 0;
    end
    else if(ns == COMPARE_num)begin
        C_repeat_num <= 6'd0;
    end
    else if(ns == COMPARE_in && c_flag==1 && in==1 && in2==1)begin //&& c_flag==1 && C2_flag==0  
        C_repeat_num <= C_repeat_num + 1;
    end
end
///CX_cur
///CY_cur
always@(posedge clr or posedge CLK) begin
    if (clr)begin
        CX_cur <= 4'd0;
    end
    //TODO:Little change
    else if(ns == F_C && circle>2 && (cnt_littleX==0 || cs == C_FINISH))begin 
        CX_cur <= circle[0]? C1X+2: C2X+2;
    end
    //TODO:Little change
    else if(ns == F_C && CX_cur == 0 && CY_cur == 0)begin
        CX_cur <= 4'd15;
    end
    else if(ns == F_C && CX_cur==4'd0)begin
        CX_cur <= 4'd15;                        //?          ns : x x x F F F F F F F F F F
    end                                         //! cnt_littleX : 0 0 0 0 3 2 1 0 3 2 1 0 3
    else if(ns == F_C)begin                     //! cnt_littleY : 0 0 0 0 3 3 3 3 2 2 2 2 1 
        CX_cur <= CX_cur - 4'd1;                //*      CX_cur : 3 3 3 3 5 4 3 2 5 4 3 2 5
    end                                         //*      CY_cur : x x x x 5 5 5 5 4 4 4 4 3
end
always@(posedge clr or posedge CLK) begin
    if (clr)begin
        CY_cur <= 4'd0;
    end
    //TODO:Little change
    else if(ns == F_C && circle>2 && (cnt_littleY==0 && cnt_littleX==0 || cs == C_FINISH))begin//FIXME:
        CY_cur <= circle[0]? C1Y+2: C2Y+2;
    end
    //TODO:Little change
    else if(ns == F_C && CX_cur == 0 && CY_cur == 0)begin
        CY_cur <= 4'd15;
    end
    else if(ns == F_C && (CX_cur==0 || (circle>2 && cnt_littleX==0)))begin
        CY_cur <= CY_cur - 4'd1;
    end
end
//TODO:cnt_little
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        cnt_littleX <= 0;
    end
    else if( (cs==C_FINISH || (ns == F_C  && cnt_littleX==0))&& circle>2)begin
        cnt_littleX <= 4;
    end
    else if(ns == F_C && circle>2)begin
        cnt_littleX <= cnt_littleX -1;
    end
end
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        cnt_littleY <= 0;
    end
    else if((cs==C_FINISH || (ns == F_C  && cnt_littleY==0 && cnt_littleX==0))&& circle>2)begin
        cnt_littleY <= 4;
    end
    else if(ns == F_C && circle>2 && cnt_littleX==0)begin
        cnt_littleY <= cnt_littleY -1;
    end
end
/*in===============================================================*/
always@(*) begin
    if (x_distance == 4 && y_distance == 0)begin
        in = 1;
    end
    else if (x_distance == 0 && y_distance == 4)begin
        in = 1;
    end
    else if(x_distance == 3 && y_distance == 3)begin
        in = 0;
    end
    else if ((x_distance<4) && (y_distance<4))begin
        in = 1;
    end
    else
        in = 0;
end
always@(*) begin
    if (x_distance2 == 4 && y_distance2 == 0)begin
        in2 = 1;
    end
    else if (x_distance2 == 0 && y_distance2 == 4)begin
        in2 = 1;
    end
    else if(x_distance2 == 3 && y_distance2 == 3)begin
        in2 = 0;
    end
    else if ((x_distance2<4) && (y_distance2<4))begin
        in2 = 1;
    end
    else
        in2 = 0;
end
/*================================================================*/
/*distance================================================================*/
//distance
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        x_distance <= 4'd0;
    end
    else if(ns == DIS && t_X[cnt40] > CX_cur)begin
        x_distance <= t_X[cnt40] - CX_cur;
    end
    else if(ns == DIS)begin
        x_distance <= CX_cur - t_X[cnt40];
    end
end
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        y_distance <= 4'd0;
    end
    else if(ns == DIS && t_Y[cnt40] > CY_cur)begin
        y_distance <= t_Y[cnt40] - CY_cur;
    end
    else if(ns == DIS)begin
        y_distance <= CY_cur - t_Y[cnt40];
    end
end
//distance for circle
wire [3:0] CX_center;
wire [3:0] CY_center;
assign CX_center = circle[0]? C2X: C1X;
assign CY_center = circle[0]? C2Y: C1Y;
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        x_distance2 <= 4'd0;
    end
    else if(ns == DIS && t_X[cnt40] > CX_center)begin
        x_distance2 <= t_X[cnt40] - CX_center;
    end
    else if(ns == DIS)begin
        x_distance2 <= CX_center - t_X[cnt40];
    end
end
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        y_distance2 <= 4'd0;
    end
    else if(ns == DIS && t_Y[cnt40] > CY_center)begin
        y_distance2 <= t_Y[cnt40] - CY_center;
    end
    else if(ns == DIS)begin
        y_distance2 <= CY_center - t_Y[cnt40];
    end
end
/*================================================================*/
//done
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        DONE <= 1'd1;
    end

    else if(cs==F_C && circle>2 && circle[0]==0 && cnt_littleX==0 && cnt_littleY==0)begin
        DONE <= 1'd1;
    end
    else
        DONE <= 1'b0;

end
endmodule