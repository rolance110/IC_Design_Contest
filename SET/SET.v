module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output busy;
output valid;
output [7:0] candidate;

reg busy;
reg valid;
reg [7:0] candidate;

reg [2:0] comput_max;
reg [2:0] compute_ctr;

reg [3:0] x;
reg [3:0] y;
reg [3:0] r;

reg [3:0] x_distance;
reg [3:0] y_distance;

reg Ain;
reg Bin;
reg Cin;

reg [1:0] circle_ctr_max;

wire  [7:0] r_squre;
assign r_squre = r*r;
wire  [7:0] x_squre;
assign x_squre = x_distance*x_distance;
wire  [7:0] y_squre;
assign y_squre = y_distance*y_distance;



//finit state machine
reg [2:0] ns,cs;// ns:nextstate  cs:currentstate
parameter INIT = 3'b000;//initial
parameter GET = 3'b001;
parameter DISTANCE = 3'b010;
parameter BIDA = 3'b011;
parameter CANDI = 3'b100;
parameter INIT0 = 3'b101;

//set currentstate
always@(posedge clk or posedge rst)
begin
    if(rst)
        cs <= INIT0;
    else
        cs <= ns;
end

//set nextstate from currentstate
always@(*)
begin
    case(cs)
        INIT0:
            ns=INIT;
        INIT:
            ns=GET;             
        GET:
            ns=DISTANCE;
        DISTANCE:
            ns=BIDA;
        BIDA:
            if(circle_ctr_max==0)
                ns=CANDI;
            else
                ns=DISTANCE;
        CANDI:
            if(x==8 && y==8)
                ns=INIT;
            else
                ns=GET;
        default:
            ns=INIT ;
    endcase
end

//x
always@(posedge rst or posedge clk) begin
    if (rst)begin
        x <= 0;
    end
    else if(ns==INIT)begin
        x <= 0;
    end
    else if(ns==GET && x==8)begin
        x <= 1;
    end
    else if(ns==GET)
        x <= x+1;
    else
        x <= x;
end
//y
always@(posedge rst or posedge clk) begin
    if (rst)begin
        y <= 0;
        end
    else if(ns==INIT)begin
        y <= 1;
    end
    else if(ns==GET && x==8)
        y <= y+1;
    else
        y <= y;
end

//circle_ctr_max
always@(posedge rst or posedge clk) begin
    if (rst)begin
        circle_ctr_max <= 0;
    end
    else if(ns==GET)begin
        case (mode)
            0:  circle_ctr_max<=1;
            1:  circle_ctr_max<=2;
            2:  circle_ctr_max<=2;
            3:  circle_ctr_max<=3; 
            default: circle_ctr_max<=circle_ctr_max;
        endcase
    end
    else if(ns==DISTANCE)begin
        circle_ctr_max <= circle_ctr_max -1;
    end
end

//x_distance
always@(posedge rst or posedge clk) begin
    if (rst)begin
        x_distance <= 0;
    end
    else if(ns==DISTANCE)begin
        case (circle_ctr_max)
            2'b11: 
                if(x>central[7:4])
                    x_distance <= x-central[7:4];
                else
                    x_distance <= central[7:4]-x;
            2'b10: 
                if(x>central[15:12])
                    x_distance <= x-central[15:12];
                else
                    x_distance <= central[15:12]-x;
            2'b01: 
                if(x>central[23:20])
                    x_distance <= x-central[23:20];
                else
                    x_distance <= central[23:20]-x;
            default: x_distance <= x_distance;
        endcase    
    end
    else begin
         x_distance <= x_distance;
    end
end
//y_distance
always@(posedge rst or posedge clk) begin
    if (rst)begin
        y_distance <= 0;
    end
    else if(ns==DISTANCE)begin
        case (circle_ctr_max)
            2'b11: 
                if(y>central[3:0])
                    y_distance <= y-central[3:0];
                else
                    y_distance <= central[3:0]-y;
            2'b10: 
                if(y>central[11:8])
                    y_distance <= y-central[11:8];
                else
                    y_distance <= central[11:8]-y;
            2'b01: 
                if(y>central[19:16])
                    y_distance <= y-central[19:16];
                else
                    y_distance <= central[19:16]-y;
            default: y_distance <= y_distance;
        endcase    
    end
    else begin
         y_distance <= y_distance;
    end
end
//r
always@(posedge rst or posedge clk) begin
    if (rst)begin
        r <= 0;
    end
    else if(ns==DISTANCE)begin
        case (circle_ctr_max)
            2'b11: 
                r <= radius[3:0];
            2'b10: 
                r <= radius[7:4]; 
            2'b01: 
                r <= radius[11:8];
            default: r <= r;
        endcase    
    end
    else begin
         r <= r;
    end
end

//Ain
always@(posedge rst or posedge clk) begin
    if (rst)begin
        Ain <= 0;
    end
    else if(ns==BIDA && (circle_ctr_max == 0) && ((x_squre+y_squre) <= r_squre))begin
        Ain <= 1; 
    end
    else if(ns==BIDA && (circle_ctr_max == 0) && ((x_squre+y_squre) > r_squre))begin
        Ain <= 0; 
    end
    else begin
        Ain <= Ain;
    end
end
//Bin
always@(posedge rst or posedge clk) begin
    if (rst)begin
        Bin <= 0;
    end
    else if(ns==BIDA && (circle_ctr_max == 1) && ((x_squre+y_squre) <= r_squre))begin
        Bin <= 1; 
    end
    else if(ns==BIDA && (circle_ctr_max == 1) && ((x_squre+y_squre) > r_squre))begin
        Bin <= 0; 
    end
    else begin
        Bin <= Bin;
    end
end
//Cin
always@(posedge rst or posedge clk) begin
    if (rst)begin
        Cin <= 0;
    end
    else if(ns==BIDA && (circle_ctr_max == 2) && ((x_squre+y_squre) <= r_squre))begin
        Cin <= 1; 
    end
    else if(ns==BIDA && (circle_ctr_max == 2) && ((x_squre+y_squre) > r_squre))begin
        Cin <= 0; 
    end
    else begin
        Cin <= Cin;
    end
end
//candidate
always@(posedge rst or posedge clk) begin
    if (rst)begin
        candidate <= 0;
    end
    else if(ns==INIT)begin
        candidate <= 0;
    end
    else if(ns==CANDI)begin
        case (mode)
            0:
                if(Ain)
                    candidate <= candidate +1;
                else
                    candidate <= candidate;
            1:
                if(Ain&Bin)
                    candidate <= candidate +1;
                else
                    candidate <= candidate;
            2:  
                if(Ain^Bin)
                    candidate <= candidate +1;
                else
                    candidate <= candidate;

            3:  
               if(~(Ain&Bin&Cin)&((Ain&Bin)|(Cin&Bin)|(Cin&Ain)))
                    candidate <= candidate +1;
                else
                    candidate <= candidate; 

            default: candidate <= candidate;
        endcase
    end
    else begin
        candidate <= candidate;
    end
end
//valid
always@(posedge rst or posedge clk) begin
    if (rst)begin
        valid <= 0;
    end
    else if(ns==CANDI && x==8 && y==8)begin
        valid <= 1;
    end
    else begin
        valid <= 0;
    end
end
//busy
always@(posedge rst or posedge clk) begin
    if (rst)begin
        busy <= 0;
    end
    else if(ns == GET)begin
        busy <= 1;
    end
    else if(ns==CANDI && x==8 && y==8)begin
        busy <= 0;
    end
    else begin
        busy <= busy;
    end
end


endmodule