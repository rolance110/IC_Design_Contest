module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );


reg [3:0] change_point_index;
reg [2:0] bigger_min_index;

reg [2:0] temp;
integer i,j,p,u,q;
reg [2:0] ar [7:0] ; 
reg [9:0] sum;
reg [2:0] temp1 ;
reg [2:0] WJ_cnt;

reg [3:0] change_max_time;

reg change_state;
reg [3:0] cnt;
//finit state machine
reg [3:0] ns,cs;// ns:nextstate  cs:currentstate
parameter INIT =4'd0;//initial
parameter FIND_C=4'd1;
parameter FIND_M=4'd2;
parameter CHANGE=4'd3;
parameter FLIP=4'd4;
parameter COST=4'd5;
parameter COMPARE=4'd6;
parameter FINISH=4'd7;
parameter WAIT2=4'd9;
parameter WAIT3=4'd10;
parameter WAIT4=4'd11;
//set currentstate
always@(posedge CLK or posedge RST)
begin
    if(RST)
        cs <= INIT ;
    else
        cs <= ns ;
end

//set nextstate from currentstate
always@(*)
begin
    case(cs)
        INIT:
             ns = COST;            
        FIND_C:
            if(change_point_index==8)
                ns = FINISH;
            else if(change_point_index==6)
                ns = CHANGE;
            else
                ns = FIND_M;
        FIND_M:
            if(cnt==8)
                ns = CHANGE;
            else
                ns = FIND_M;
        CHANGE:
            if(change_point_index ==6)
                ns = COST;
            else
                ns = FLIP;
        FLIP:
            ns = COST;
        COST:
            if(WJ_cnt == 3'd7)
                ns = WAIT3;
            else
                ns = COST;
        WAIT3:
            ns = WAIT4;
        WAIT4:
            ns = COMPARE;
        COMPARE:
            ns = FIND_C;
        FINISH:
            ns = FINISH;
        default:
            ns=INIT ;
    endcase
end
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        change_max_time <= 0;
    end
    else if(ns == FIND_M)begin   //compute change times for flip
        change_max_time <= (4'd7-change_point_index)>>1;
    end
end
//valid
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        Valid <= 1'd0;
    end
    else if(ns == FINISH)begin
        Valid <= 1'd1;
    end
end
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        bigger_min_index <= 3'd0;
    end
    else if(ns == COMPARE)begin
        bigger_min_index <= 8;
    end
    else if(ns == FIND_C)begin
        for(q=0;q<7;q=q+1)begin
            if(ar[q+1]>ar[q])begin
                bigger_min_index <= q+1;
            end
        end
    end
    else if(ns==FIND_M && (ar[bigger_min_index] > ar[cnt])  && (ar[cnt] > ar[change_point_index]))begin ///
        bigger_min_index <=  cnt;
    end
end
//cnt
always@(posedge CLK or posedge RST) begin
    if (RST)begin
        cnt <= 0;
    end
    else if(ns == COMPARE)begin
        cnt <= 8;//initial 6
    end
    else if(ns == FIND_C)begin
        for(u=0;u<7;u=u+1)begin
            if(ar[u+1]>ar[u])begin
                cnt <= u+2;
            end
        end
    end
    else if(ns == FIND_M)begin
        cnt <= cnt +1;
    end 
end
//change point
always@(posedge CLK or posedge RST) begin
    if (RST)begin
        change_point_index <= 0;
    end
    else if(ns == COMPARE)begin
        change_point_index <= 8;//initial 6
    end
    else if(ns == FIND_C)begin
        for(p=0;p<7;p=p+1)begin
            if(ar[p+1]>ar[p])begin
                change_point_index <= p;
            end
        end
    end 
end

always@(posedge RST or posedge CLK) begin
    if (RST)begin
        for(i=0;i<8;i=i+1)begin
            ar[i] <= i;
        end 
    end
    else if (ns == CHANGE)begin  
        ar[bigger_min_index] <= ar[change_point_index];
        ar[change_point_index] <= ar[bigger_min_index];
    end
    else if(ns == FLIP)begin
        for(i=0;i<8;i=i+1)begin
            if(i<change_max_time)begin
                ar[change_point_index+1+i] <= ar[7-i];//ar[6] <= ar[7]
                ar[7-i] <= ar[change_point_index+1+i];
            end
        end
    end
end


//WJ_cnt
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        WJ_cnt <= 0;
    end
    else if(ns == COMPARE)begin
        WJ_cnt <= 0;
    end
    else if(ns == COST)
        WJ_cnt <= WJ_cnt + 1;
    else
        WJ_cnt <= WJ_cnt;    
end
//W
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        W <= 3'd0;
    end
    else if(ns == COST || cs ==COST)begin
        W <= WJ_cnt;
    end
end
//J
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        J <= 3'd0;
    end
    else if(ns == COST || cs == COST)begin
        J <= ar[WJ_cnt];
    end
end
//sum
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        sum <= 10'd0;
    end
    else if(WJ_cnt == 0 && ns == COST)begin //initial sum 
        sum <= 0;
    end
    else if(ns == COST||cs == COST||ns==WAIT4)begin                 //sum 7 times
        sum <= sum + Cost;
    end
end
//MinCost
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        MinCost <= 10'd1023;
    end
    else if(ns == COMPARE && MinCost > sum)begin
        MinCost <= sum;
    end
end
//MatchCount
always@(posedge RST or posedge CLK) begin
    if (RST)begin
        MatchCount <= 4'd0;
    end
    else if(ns == COMPARE && MinCost > sum)begin
        MatchCount <= 4'd1;
    end
    else if(ns == COMPARE && MinCost == sum)begin
        MatchCount <= MatchCount + 4'd1;
    end
end
endmodule


