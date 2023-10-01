module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;

reg [2:0] next_state;
reg [2:0] current_state;
reg [7:0]index_string[31:0];
reg [7:0]index_pattern[7:0];
reg valid;
reg match;
reg [4:0]match_index;

integer a,b,i,j;

parameter IDLE = 3'd0;
parameter STRING = 3'd1;
parameter PATTERN = 3'd2;
parameter SME = 3'd3;
parameter FINISH = 3'd4;
parameter WAIT1 = 3'd5;
parameter WAIT2 = 3'd6;
parameter WAIT3 = 3'd7;

always@(posedge clk or posedge reset)begin
if(reset)
current_state <= IDLE;
else 
current_state <= next_state;
end

always@(*)begin
case(current_state)
    IDLE:
        if(isstring)
            next_state = STRING;
        else
            next_state = IDLE; 
    STRING:
        if(isstring)
            next_state = STRING;
        else if(ispattern)
            next_state = PATTERN;
        else
            next_state =  STRING;
    PATTERN:
        if(ispattern)
            next_state = PATTERN;
        else 
            next_state = WAIT1;
    WAIT1:
        next_state = WAIT2;
    WAIT2:
        next_state = WAIT3;
    WAIT3:
        next_state = SME;
    SME:
        if(i == b || j == a)
            next_state = FINISH;
        else 
            next_state = SME;
    FINISH:
        if(isstring)
            next_state = STRING;
        else if(ispattern)
            next_state = PATTERN;
        else
            next_state = FINISH;
    default:
        next_state = IDLE;
endcase
end

//valid
always@(posedge clk or posedge reset)begin
if(reset)valid <=0;
else if(current_state == FINISH && next_state == FINISH)
valid <= 1;
else
valid <=0;
end

integer x;
//index_string
always@(posedge clk or posedge reset)begin
if(reset)begin
    for(x=0;x<64;x=x+1)begin
        index_string[x] <= 0;
    end
    a <= 0;
end
else if(current_state == FINISH && isstring == 1)begin
    a <= 1;
    for(x=1;x<64;x=x+1)begin
        index_string[x] <= 0;
    end
    index_string[0] <= chardata;
end
else if(next_state == STRING)begin
index_string[a] <= chardata;
a <= a+1;
end
end
//ctr3
reg [1:0] ctr3;
always@(posedge reset or posedge clk) begin
    if (reset)begin
        ctr3 <= 3;
    end
    else if (next_state==WAIT1)
        ctr3 <= 0;
    else if(ctr3<3)begin
        ctr3 <= ctr3+1;
    end
    else begin
        ctr3 <= ctr3;
    end
end
integer y;
//index_pattern
always@(posedge clk or posedge reset)begin
    if(reset)begin
        for(y=0;y<256;y=y+1)begin
            index_pattern[y] <= 0;
        end
    b <= 0;
    end
    else if(current_state == FINISH && ispattern ==0)begin
        b <= 0;
        for(y=0;y<256;y=y+1)begin
            index_pattern[y] <= 0;  
        end
    end
    else if(next_state == PATTERN)begin
        index_pattern[b] <= chardata;
        b <= b+1;
    end

    else if(ctr3==0 &&index_pattern[0] == 8'h5E)begin
        index_pattern[0] <= 8'h20;
    end
    else if(ctr3==1 && index_pattern[b-1] == 8'h24)begin
        index_pattern[b-1] <= 8'h20;
    end
end
//i,j
always@(posedge clk or posedge reset)begin
    if(reset)begin
        i <= 0;
        j <= 0;
    end
    else if(current_state == FINISH)begin
        i <= 0;
        j <= 0;
    end
    else if(next_state == SME)begin   ////
        if((i <= b && j <= a) || (i != a && index_pattern[i+1] != 8'd20))begin
            if(((index_pattern[i] == index_string[j]) || index_pattern[i] == 8'h2E))begin
                i <= i+1;  //yes
                j <= j+1;
            end
            else if(i!=0)begin
                i <= 0;
                j <= j-i+1;
            end
            else begin
                i <= 0;        //normal
                j <= j+1;
            end
        end
    end
end
//match
always@(posedge clk or posedge reset)begin
if(reset)begin
match <= 0;
end
else if(current_state == FINISH)begin
    if((i+1)==b && index_pattern[b-1]==8'h20)  //$ 
        match <= 1;
    else if(i==b && i!=0)
        match <= 1;
    else
        match <= 0;
    end
end

//match_index
always@(posedge clk or posedge reset)begin
    if(reset)begin
        match_index <= 0;
    end
    else if(next_state == FINISH)begin
        if((i+1)==b && index_pattern[b-1]==8'h20 && index_pattern[0]==8'h20)
            match_index <= j-i+1;
        else if((i+1)==b && index_pattern[b-1]==8'h20) //$
            match_index <= j-i;
        else if(i==b && index_pattern[0]==8'h20)  //^
            match_index <= j-i+1;
        else if(i == b)
            match_index <= j-i;

    end
end

endmodule