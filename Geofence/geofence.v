module geofence ( clk,reset,X,Y,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
output valid;
output is_inside;

reg valid;
reg is_inside;

integer i,j;
reg signed [10:0] xg [5:0]; //x    
reg signed [10:0] yg [5:0]; //y

reg signed [10:0] xt;  //target
reg signed [10:0] yt;


reg signed [10:0] tempx ;
reg signed [10:0] tempy ;

reg [2:0] ctr6;

reg signed [10:0] ABx;
reg signed [10:0] ABy;


reg signed [21:0] cross;//can short
reg [2:0] counter_max;
reg compare;
reg sort_dicide;

//finit state machine
reg [3:0] ns,cs;// ns:nextstate  cs:currentstate
parameter INIT =4'd0;//initial
parameter GETT=4'd1;
parameter GETXY=4'd2;
parameter SORT=4'd4;
parameter SWITCH=4'd5;
parameter WAIT1=4'd6;
parameter WAIT2 =4'd7;
parameter FINISH = 4'd9;
parameter COMPARE = 4'd10;
parameter WAIT3 = 4'd11;
parameter CR1 = 4'd12;
parameter CR2 = 4'd13;
parameter CR3 = 4'd14;


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
            ns = GETT ;            
        GETT:
            ns = GETXY; 
        GETXY:
            if(ctr6==6)    //------
                ns = WAIT1 ;
            else begin
                ns = GETXY;
            end
        WAIT1:
            ns = CR1;
        CR1:
            ns=CR2;
        CR2:
            ns=CR3;
        CR3:
            if(sort_dicide==0)
                ns=SORT;
            else
                ns=COMPARE;
        SORT:
            if(cross[21]==0)// need switch
                ns = SWITCH;
            else if(counter_max == 0)
                ns = WAIT2;
            else    
                ns = CR1;
        SWITCH:
            if(counter_max == 0)
                ns = WAIT2;
            else
                ns = CR1;
        WAIT2:
            ns = CR1;
        COMPARE:
            if(compare == 0)
                ns = FINISH;
            else if(ctr6 == 5)
                ns = FINISH;
            else
                ns = CR1;
        FINISH:
            ns = WAIT3;
        WAIT3:
            ns = GETT;
       default:
             ns=INIT;
    endcase
end
//ctr6
always@(posedge reset or posedge clk) begin
    if (reset)begin
        ctr6 <= 0;
    end
    
    else if(ns==GETXY)begin 
        ctr6 <= ctr6+1;
    end 
    else if(ns==WAIT1)begin
        ctr6 <= 1;//initail == 1(first run)
    end
    else if(ctr6==counter_max && ((ns==SORT  && cross[21]==1) ||(ns==SWITCH  && cross[21]==0)))begin
        ctr6 <= 1;//initail == 1(the other)
    end
    else if((ns==SWITCH && cross[21]==0) ||(ns==SORT && cross[21]==1) || (ns == COMPARE))begin
        ctr6 <= ctr6 +1;
    end
    else if(ns == WAIT2 ||(ns == COMPARE && ctr6 == 5) ||ns == WAIT3)begin
        ctr6 <= 0;
    end
    else    
        ctr6 <= ctr6;
end

//sort_dicide
always@(posedge reset or posedge clk) begin
    if (reset)begin
        sort_dicide <= 0;
    end
    else if(ns == WAIT2)begin
        sort_dicide <= 1;
    end
    else if(ns == WAIT3)begin
        sort_dicide <= 0;
    end
    else begin
        sort_dicide <= sort_dicide;
    end
end

/*              cr1     cr2         cr3             sort
    ABx:        Ax      Bx  
    ABy:        By      Ay
    cross:              ABx*ABy     cross-ABx*ABy 
*/
//ABx
always@(posedge reset or posedge clk) begin
    if (reset)begin
        ABx <= 0;
    end
    else if(ns==CR1 && sort_dicide==0)begin
        ABx <= xg[ctr6] - xg[0];    //Ax
    end
    else if(ns==CR2 && sort_dicide==0)begin          
        ABx <= xg[ctr6+1] - xg[0];  //Bx
    end
    else if (ns==CR2 && ctr6==5 && sort_dicide==1)begin
        ABx <= xg[0] - xg[5];         //Bx
    end
    else if(ns == CR2 && sort_dicide==1)begin
        ABx <= xg[ctr6+1] - xg[ctr6]; //Bx
    end
    else if((ns==WAIT2 || ns==CR1) && sort_dicide==1) begin
        ABx <= xg[ctr6] - xt;         //Ax
    end
    else begin
        ABx <= ABx;
    end
end
//ABy
always@(posedge reset or posedge clk) begin
    if (reset)begin
        ABy <= 0;
    end
    else if(ns==CR1 && sort_dicide==0)begin
        ABy <= yg[ctr6+1] - yg[0];  //By
    end
    else if(ns==CR2 && sort_dicide==0)begin          
        ABy <= yg[ctr6] - yg[0];    //Ay
    end
    else if ((ns==CR1 || ns==WAIT2) && ctr6==5 && sort_dicide==1)begin
        ABy <= yg[0] - yg[5];         //By
    end
    else if((ns == CR1  || ns == WAIT2) && sort_dicide==1)begin
        ABy <= yg[ctr6+1] - yg[ctr6]; //By
    end
    else if(ns==CR2 && sort_dicide==1) begin
        ABy <= yg[ctr6] - yt;         //Ay
    end
    else begin
        ABy <= ABy;
    end
end

//cross
always@(posedge reset or posedge clk) begin
    if (reset)begin
        cross <= 0;
    end
    else if(ns==CR2)begin
        cross <= ABx*ABy;
    end
    else if(ns==CR3)begin
        cross <= cross - ABx*ABy;
    end
    else begin
        cross <= cross;
    end
end
//t(target)
always@(posedge reset or posedge clk) begin
    if (reset)begin
        xt <= 0;
    end
    else if(ns == GETT)begin
        xt <= X;
    end
    else begin
        xt <= xt;
    end
end
always@(posedge reset or posedge clk) begin
    if (reset)begin
        yt <= 0;
    end
    else if(ns == GETT)begin
        yt <= Y;
    end
    else begin
        yt <= yt;
    end
end
//xg
always@(posedge reset or posedge clk) begin
    if (reset)begin
        for ( i=0 ;i<6 ;i=i+1 ) begin
            xg[i] <= 0;
        end
    end
    else if(ns == GETXY)begin
        xg[ctr6] <= X;
    end
    else if(ns == SORT)begin
        if(cross[21]==0)begin      //don't switch
            tempx <= xg[ctr6+1];
            xg[ctr6+1] <= xg[ctr6];
        end
        else
            xg[0] <= xg[0];
    end
    else if(ns == SWITCH)begin
        xg[ctr6] <= tempx; //
    end
    else begin
        for ( i=0 ;i<6 ;i=i+1 ) begin
            xg[i] <=  xg[i];
        end
    end
end
//yg
always@(posedge reset or posedge clk) begin
    if (reset)begin
        for ( j=0 ;j<6 ;j=j+1) begin
            yg[j] <= 0;
        end
    end
    else if(ns == GETXY)begin
        yg[ctr6] <= Y;
    end
    else if(ns == SORT)begin
        if(cross[21]==0)begin      //don't switch
            tempy <= yg[ctr6+1];
            yg[ctr6+1] <= yg[ctr6];
        end
        else
            yg[0] <= yg[0];
    end
    else if(ns == SWITCH)begin
        yg[ctr6] <= tempy; //
    end
    else begin
        for ( j=0 ;j<6 ;j=j+1 ) begin
            yg[j] <=  yg[j];
        end
    end
end
always@(posedge reset or posedge clk) begin
    if (reset)begin
        counter_max <= 0;
    end
    else if(ns==GETT)begin
        counter_max <= 4;
    end
    else if(ns!=GETXY && ctr6==counter_max && ns==SWITCH && cross[21]==0)begin
        counter_max <= counter_max-1;
    end
    else if(ns!=GETXY && ctr6==counter_max && ns==SORT && cross[21]==1)begin
        counter_max <= counter_max-1;
    end
   /* else if(counter_max == 1)begin   //can skip
        counter_max <= 0;            //
    end*/
    else begin
        counter_max <= counter_max;
    end
end




/*

ns==AB1 && (counter_max==4)   => ctr6=1
ns==AB1 && (ctr6==counter_max)   => ctr6=1
ns==AB1 ctr6+1

[first run]
counter_max==4  at ns=GETT
1:ctr6=1
    x[1]-x[0] :Ax  =  xg[ctr6]   - xg[0] 
    x[2]-x[0] :Bx  =  xg[ctr6+1] - xg[0]
    y[1]-y[0] :Ay  =  yg[ctr6]   - yg[0]
    y[2]-y[0] :By  =  yg[ctr6+1] - yg[0]
2:ctr6=2
    x[2]-x[0] :Ax  =  x[ctr6]   - x[0] 
    x[3]-x[0] :Bx  =  x[ctr6+1] - x[0]
    y[2]-y[0] :Ay  =  y[ctr6]   - y[0]
    y[3]-y[0] :By  =  y[ctr6+1] - y[0]
.
.
.
5:ctr6="4"  
    x[4]-x[0] :Ax  =  xg[ctr6]   - xg[0] 
    x[5]-x[0] :Bx  =  xg[ctr6+1] - xg[0]
    y[4]-y[0] :Ay  =  yg[ctr6]   - yg[0]
    y[5]-y[0] :By  =  yg[ctr6+1] - yg[0]   =>x[5] sure
*/


//compare
always@(posedge reset or posedge clk) begin
    if (reset)begin
        compare <= 0;
    end
    else if(ns == COMPARE)begin
        if(cross[21]==1)
            compare <= 1;
        else
            compare <= 0;
    end
    else if(ns == WAIT3)
        compare <= 0;
end


//valid
always@(posedge reset or posedge clk) begin
    if (reset)begin
        valid <= 0;
    end
    else if(ns == FINISH)
        valid <= 1;
    else
        valid <= 0;
end

//is_inside
always@(posedge reset or posedge clk) begin
    if (reset)begin
        is_inside <= 0;
    end
    else if(ns == FINISH)begin
        if(compare)/////////////////////
            is_inside <= 1;
        else
            is_inside <= 0;
    end
    else 
        is_inside <= 0;
end

endmodule