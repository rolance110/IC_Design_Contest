/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Wed Nov 16 20:26:02 2022
/////////////////////////////////////////////////////////////


module DT_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module DT_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1, n2;
  wire   [7:2] carry;

  ADDHX4 U1_1_2 ( .A(A[2]), .B(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(n2), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  AND2X2 U1 ( .A(A[3]), .B(carry[3]), .Y(n2) );
  XOR2X1 U2 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  AND2X2 U3 ( .A(A[1]), .B(A[0]), .Y(n1) );
  XOR2XL U4 ( .A(A[3]), .B(carry[3]), .Y(SUM[3]) );
  XOR2X1 U5 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U6 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  CLKINVX1 U1 ( .A(n16), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[11]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[10]), .Y(n4) );
  AO21X1 U5 ( .A0(n5), .A1(A[9]), .B0(n6), .Y(SUM[9]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[8]), .B0(n5), .Y(SUM[8]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[7]), .B0(n7), .Y(SUM[7]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[6]), .B0(n8), .Y(SUM[6]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[5]), .B0(n9), .Y(SUM[5]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[4]), .B0(n10), .Y(SUM[4]) );
  OAI2BB1X1 U11 ( .A0N(n12), .A1N(A[3]), .B0(n11), .Y(SUM[3]) );
  OAI2BB1X1 U12 ( .A0N(n13), .A1N(A[2]), .B0(n12), .Y(SUM[2]) );
  OAI2BB1X1 U13 ( .A0N(A[0]), .A1N(A[1]), .B0(n13), .Y(SUM[1]) );
  XOR2X1 U14 ( .A(A[13]), .B(n14), .Y(SUM[13]) );
  NOR2X1 U15 ( .A(A[12]), .B(n15), .Y(n14) );
  XNOR2X1 U16 ( .A(A[12]), .B(n15), .Y(SUM[12]) );
  OAI21XL U17 ( .A0(n1), .A1(n3), .B0(n15), .Y(SUM[11]) );
  NAND2X1 U18 ( .A(n1), .B(n3), .Y(n15) );
  OAI21XL U19 ( .A0(n6), .A1(n4), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U20 ( .A(n6), .B(n4), .Y(n16) );
  NOR2X1 U21 ( .A(n5), .B(A[9]), .Y(n6) );
  OR2X1 U22 ( .A(n7), .B(A[8]), .Y(n5) );
  OR2X1 U23 ( .A(n8), .B(A[7]), .Y(n7) );
  OR2X1 U24 ( .A(n9), .B(A[6]), .Y(n8) );
  OR2X1 U25 ( .A(n10), .B(A[5]), .Y(n9) );
  OR2X1 U26 ( .A(n11), .B(A[4]), .Y(n10) );
  OR2X1 U27 ( .A(n12), .B(A[3]), .Y(n11) );
  OR2X1 U28 ( .A(n13), .B(A[2]), .Y(n12) );
  NAND2BX1 U29 ( .AN(A[1]), .B(SUM[0]), .Y(n13) );
endmodule


module DT_DW01_inc_3 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd;
  wire   N43, N44, N45, N46, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, N167, N168, N169, N170, N171, N172,
         N173, N174, N175, N176, N177, N178, N190, N191, N192, N193, N194,
         N195, N196, N197, N198, N199, N200, N201, N202, N203, N223, N224,
         N225, N226, N227, N228, N229, N230, N231, N232, N233, N234, N235,
         N264, N266, N267, N268, N269, N270, N271, N272, N273, N274, N275,
         N276, N277, N330, N331, N332, N333, N334, N335, N336, N337, N338,
         N339, N340, N341, N342, N343, N344, N345, N346, N347, N348, N349,
         N350, N351, N352, N353, N354, N355, N356, N373, N374, N375, N376,
         N377, N378, N379, N380, N381, N382, N383, N384, N495, N496, N497,
         N498, N499, N500, N501, N502, N503, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n230, n231, n238, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, \add_238/carry[2] , \add_238/carry[3] ,
         \add_238/carry[4] , \add_238/carry[5] , \add_238/carry[6] ,
         \add_238/carry[7] , \add_238/carry[8] , \add_238/carry[9] ,
         \add_238/carry[10] , \add_238/carry[11] , \add_238/carry[12] ,
         \add_238/carry[13] , \sub_229/carry[2] , \sub_229/carry[3] ,
         \sub_229/carry[4] , \sub_229/carry[5] , \sub_229/carry[6] ,
         \sub_229/carry[7] , \sub_229/carry[8] , \sub_229/carry[9] ,
         \sub_229/carry[10] , \sub_229/carry[11] , \sub_229/carry[12] ,
         \sub_229/carry[13] , n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613;
  wire   [7:0] compute_temp;
  wire   [1:0] ns0;
  wire   [3:0] ns;
  wire   [3:0] read_counter;
  wire   [7:0] min;
  wire   [14:0] \sub_241/carry ;
  wire   [13:1] \add_232/carry ;

  DT_DW01_inc_0 add_258 ( .A(min), .SUM({N503, N502, N501, N500, N499, N498, 
        N497, N496}) );
  DT_DW01_inc_1 add_184 ( .A(sti_addr), .SUM({N176, N175, N174, N173, N172, 
        N171, N170, N169, N168, N167}) );
  DT_DW01_inc_2 add_18 ( .A(res_di), .SUM(compute_temp) );
  DT_DW01_dec_0 r430 ( .A(res_addr), .SUM({N356, N355, N354, N353, N352, N351, 
        N350, N349, N348, N347, N346, N345, N344, N343}) );
  DT_DW01_inc_3 r426 ( .A(res_addr), .SUM({N203, N202, N201, N200, N199, N198, 
        N197, N196, N195, N194, N193, N192, N191, N190}) );
  DFFRX2 done_reg ( .D(n249), .CK(clk), .RN(n371), .Q(done), .QN(n219) );
  DFFRX2 \res_do_reg[0]  ( .D(n297), .CK(clk), .RN(n373), .Q(res_do[0]), .QN(
        n301) );
  DFFRX2 \res_do_reg[1]  ( .D(n256), .CK(clk), .RN(n371), .Q(res_do[1]), .QN(
        n309) );
  DFFRX2 \res_do_reg[2]  ( .D(n255), .CK(clk), .RN(n371), .Q(res_do[2]), .QN(
        n303) );
  DFFRX2 \res_do_reg[3]  ( .D(n254), .CK(clk), .RN(n371), .Q(res_do[3]), .QN(
        n320) );
  DFFRX2 \res_do_reg[4]  ( .D(n253), .CK(clk), .RN(n371), .Q(res_do[4]), .QN(
        n302) );
  DFFRX2 \res_do_reg[5]  ( .D(n252), .CK(clk), .RN(n371), .Q(res_do[5]), .QN(
        n310) );
  DFFRX2 \res_do_reg[6]  ( .D(n251), .CK(clk), .RN(n371), .Q(res_do[6]), .QN(
        n304) );
  DFFRX2 \res_do_reg[7]  ( .D(n250), .CK(clk), .RN(n371), .Q(res_do[7]), .QN(
        n321) );
  DFFRX2 \sti_addr_reg[9]  ( .D(n278), .CK(clk), .RN(n372), .Q(sti_addr[9]) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n281), .CK(clk), .RN(n372), .Q(sti_addr[6]) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n280), .CK(clk), .RN(n372), .Q(sti_addr[7]) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n279), .CK(clk), .RN(n372), .Q(sti_addr[8]) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n286), .CK(clk), .RN(n372), .Q(sti_addr[1]) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n285), .CK(clk), .RN(n372), .Q(sti_addr[2]) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n283), .CK(clk), .RN(n372), .Q(sti_addr[4]) );
  DFFRX2 \sti_addr_reg[5]  ( .D(n282), .CK(clk), .RN(n372), .Q(sti_addr[5]) );
  DFFRX2 \sti_addr_reg[0]  ( .D(n287), .CK(clk), .RN(n372), .Q(sti_addr[0]) );
  DFFSX2 \sti_addr_reg[3]  ( .D(n284), .CK(clk), .SN(reset), .Q(sti_addr[3])
         );
  DFFRX2 \min_reg[6]  ( .D(n258), .CK(clk), .RN(n371), .Q(min[6]), .QN(n221)
         );
  DFFRX1 \read_counter_reg[0]  ( .D(n296), .CK(clk), .RN(n373), .Q(
        read_counter[0]), .QN(n317) );
  DFFSX1 \ROM_index_reg[0]  ( .D(n290), .CK(clk), .SN(reset), .Q(N43), .QN(
        n230) );
  DFFSX1 \ROM_index_reg[3]  ( .D(n289), .CK(clk), .SN(reset), .Q(N46), .QN(
        n228) );
  DFFRX1 \min_reg[2]  ( .D(n262), .CK(clk), .RN(n373), .Q(min[2]), .QN(n225)
         );
  DFFRX1 \read_counter_reg[3]  ( .D(n292), .CK(clk), .RN(n373), .Q(n318), .QN(
        n607) );
  DFFSX1 \ROM_index_reg[1]  ( .D(n295), .CK(clk), .SN(reset), .Q(N44), .QN(
        n231) );
  DFFSX1 \ROM_index_reg[2]  ( .D(n288), .CK(clk), .SN(reset), .Q(N45), .QN(
        n227) );
  DFFRX1 \min_reg[1]  ( .D(n263), .CK(clk), .RN(n371), .Q(min[1]), .QN(n226)
         );
  DFFRX1 \res_addr_reg[13]  ( .D(n291), .CK(clk), .RN(n373), .Q(n614) );
  DFFRX1 \res_addr_reg[7]  ( .D(n265), .CK(clk), .RN(reset), .Q(n620), .QN(
        n314) );
  DFFRX1 \cs0_reg[0]  ( .D(ns0[0]), .CK(clk), .RN(n373), .Q(n609), .QN(n308)
         );
  DFFRX1 \cs0_reg[1]  ( .D(ns0[1]), .CK(clk), .RN(n373), .Q(n608), .QN(n319)
         );
  DFFRX1 \read_counter_reg[1]  ( .D(n294), .CK(clk), .RN(n373), .Q(
        read_counter[1]), .QN(n307) );
  DFFRX1 \read_counter_reg[2]  ( .D(n293), .CK(clk), .RN(n373), .Q(
        read_counter[2]), .QN(n315) );
  DFFRX1 \res_addr_reg[12]  ( .D(n275), .CK(clk), .RN(reset), .Q(n615) );
  DFFRX1 \res_addr_reg[11]  ( .D(n274), .CK(clk), .RN(reset), .Q(n616) );
  DFFRX1 \res_addr_reg[10]  ( .D(n273), .CK(clk), .RN(reset), .Q(n617) );
  DFFRX1 \res_addr_reg[9]  ( .D(n272), .CK(clk), .RN(reset), .Q(n618) );
  DFFRX1 \res_addr_reg[8]  ( .D(n271), .CK(clk), .RN(reset), .Q(n619) );
  DFFSX1 \res_addr_reg[0]  ( .D(n277), .CK(clk), .SN(reset), .Q(N264), .QN(
        n312) );
  DFFSX1 \res_addr_reg[1]  ( .D(n276), .CK(clk), .SN(reset), .Q(n626), .QN(
        n311) );
  DFFSX1 \res_addr_reg[2]  ( .D(n270), .CK(clk), .SN(reset), .Q(n625) );
  DFFSX1 \res_addr_reg[3]  ( .D(n269), .CK(clk), .SN(reset), .Q(n624) );
  DFFSX1 \res_addr_reg[4]  ( .D(n268), .CK(clk), .SN(n373), .Q(n623) );
  DFFSX1 \res_addr_reg[5]  ( .D(n267), .CK(clk), .SN(n373), .Q(n622) );
  DFFSX1 \res_addr_reg[6]  ( .D(n266), .CK(clk), .SN(n373), .Q(n621) );
  DFFRX1 \cs_reg[2]  ( .D(ns[2]), .CK(clk), .RN(n373), .Q(n610), .QN(n313) );
  DFFRX1 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(n373), .Q(n611), .QN(n305) );
  DFFRX1 \cs_reg[3]  ( .D(ns[3]), .CK(clk), .RN(n372), .Q(n612), .QN(n306) );
  DFFRX2 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(n372), .Q(n613), .QN(n316) );
  DFFRX2 sti_rd_reg ( .D(n298), .CK(clk), .RN(n372), .Q(sti_rd) );
  DFFRX2 res_wr_reg ( .D(n354), .CK(clk), .RN(n372), .Q(res_wr) );
  DFFRX2 res_rd_reg ( .D(N177), .CK(clk), .RN(n372), .Q(res_rd) );
  DFFRX1 \min_reg[7]  ( .D(n257), .CK(clk), .RN(n371), .Q(min[7]), .QN(n220)
         );
  DFFRX1 \min_reg[0]  ( .D(n264), .CK(clk), .RN(reset), .Q(min[0]), .QN(n238)
         );
  DFFRX1 \min_reg[3]  ( .D(n261), .CK(clk), .RN(reset), .Q(min[3]), .QN(n224)
         );
  DFFRX1 \min_reg[5]  ( .D(n259), .CK(clk), .RN(n371), .Q(min[5]), .QN(n222)
         );
  DFFRX1 \min_reg[4]  ( .D(n260), .CK(clk), .RN(n371), .Q(min[4]), .QN(n223)
         );
  BUFX4 U271 ( .A(n424), .Y(n349) );
  AOI2BB1XL U272 ( .A0N(n400), .A1N(n495), .B0(n345), .Y(n424) );
  AOI22X1 U273 ( .A0(n533), .A1(n538), .B0(n492), .B1(n539), .Y(n535) );
  OR2X4 U274 ( .A(n335), .B(n336), .Y(n538) );
  AOI221X4 U275 ( .A0(n574), .A1(n429), .B0(n579), .B1(n580), .C0(n581), .Y(
        n600) );
  BUFX6 U276 ( .A(n425), .Y(n352) );
  BUFX8 U277 ( .A(n423), .Y(n350) );
  NOR2BXL U278 ( .AN(n499), .B(n490), .Y(n423) );
  OR2XL U279 ( .A(n527), .B(n515), .Y(n327) );
  INVX4 U280 ( .A(n300), .Y(n527) );
  BUFX8 U281 ( .A(n513), .Y(n299) );
  OAI21X1 U282 ( .A0(n492), .A1(n534), .B0(n517), .Y(n513) );
  INVX3 U283 ( .A(ns[2]), .Y(n416) );
  OAI222X4 U284 ( .A0(n536), .A1(n593), .B0(n588), .B1(n594), .C0(n579), .C1(
        n504), .Y(ns[2]) );
  BUFX3 U285 ( .A(compute_temp[5]), .Y(n300) );
  OR2X2 U286 ( .A(n559), .B(compute_temp[6]), .Y(n329) );
  AOI32X1 U287 ( .A0(n554), .A1(n555), .A2(n556), .B0(n557), .B1(n558), .Y(
        n552) );
  NAND2X1 U288 ( .A(n329), .B(n221), .Y(n558) );
  NAND3X1 U289 ( .A(n414), .B(n416), .C(n505), .Y(n430) );
  INVX3 U290 ( .A(n430), .Y(n400) );
  OR3X2 U291 ( .A(n323), .B(n324), .C(n325), .Y(n260) );
  NOR3X2 U292 ( .A(n343), .B(n344), .C(n573), .Y(n577) );
  NAND3X1 U293 ( .A(ns[1]), .B(ns[3]), .C(ns[0]), .Y(n498) );
  INVX3 U294 ( .A(n501), .Y(n492) );
  NAND2X2 U295 ( .A(n505), .B(ns[2]), .Y(n401) );
  NAND2XL U296 ( .A(n492), .B(n494), .Y(n496) );
  OAI31X1 U297 ( .A0(n510), .A1(n370), .A2(n511), .B0(n512), .Y(n494) );
  OAI21X1 U298 ( .A0(n392), .A1(n319), .B0(n308), .Y(ns0[1]) );
  NAND4BX2 U299 ( .AN(n581), .B(n582), .C(n583), .D(n571), .Y(n573) );
  BUFX20 U300 ( .A(n331), .Y(n322) );
  CLKINVX4 U301 ( .A(n330), .Y(n331) );
  AND3X8 U302 ( .A(n346), .B(n493), .C(n502), .Y(n345) );
  NAND4X1 U303 ( .A(n613), .B(n611), .C(n585), .D(n586), .Y(n583) );
  INVX12 U304 ( .A(n348), .Y(n517) );
  NAND2X6 U305 ( .A(n601), .B(n602), .Y(n586) );
  MXI2X1 U306 ( .A(n507), .B(n508), .S0(n498), .Y(n346) );
  INVX1 U307 ( .A(n427), .Y(n330) );
  NOR2XL U308 ( .A(n524), .B(n299), .Y(n323) );
  NOR2XL U309 ( .A(n525), .B(n515), .Y(n324) );
  NOR2XL U310 ( .A(n223), .B(n517), .Y(n325) );
  NAND3X2 U311 ( .A(n532), .B(n517), .C(n533), .Y(n515) );
  AO22X4 U312 ( .A0(n593), .A1(n532), .B0(n586), .B1(n534), .Y(n581) );
  NOR2XL U313 ( .A(n220), .B(compute_temp[7]), .Y(n336) );
  OR2XL U314 ( .A(n526), .B(n299), .Y(n326) );
  NAND3X1 U315 ( .A(n326), .B(n327), .C(n328), .Y(n259) );
  OR2XL U316 ( .A(n222), .B(n517), .Y(n328) );
  INVXL U317 ( .A(res_di[5]), .Y(n526) );
  AOI32X2 U318 ( .A0(n555), .A1(min[4]), .A2(n525), .B0(min[5]), .B1(n527), 
        .Y(n559) );
  BUFX4 U319 ( .A(n426), .Y(n351) );
  CLKINVX1 U320 ( .A(ns[0]), .Y(n414) );
  OR2XL U321 ( .A(n299), .B(n514), .Y(n337) );
  NAND3X1 U322 ( .A(n337), .B(n338), .C(n339), .Y(n264) );
  NOR2XL U323 ( .A(n523), .B(n515), .Y(n333) );
  OR3X2 U324 ( .A(n332), .B(n333), .C(n334), .Y(n261) );
  NOR2XL U325 ( .A(n522), .B(n299), .Y(n332) );
  NOR2XL U326 ( .A(n224), .B(n517), .Y(n334) );
  INVXL U327 ( .A(res_di[3]), .Y(n522) );
  NAND2XL U328 ( .A(n559), .B(compute_temp[6]), .Y(n557) );
  NOR2X6 U329 ( .A(n552), .B(n553), .Y(n335) );
  NOR2X6 U330 ( .A(n531), .B(min[7]), .Y(n553) );
  OR2XL U331 ( .A(n515), .B(n516), .Y(n338) );
  OR2XL U332 ( .A(n238), .B(n517), .Y(n339) );
  INVXL U333 ( .A(res_di[0]), .Y(n514) );
  OR2X8 U334 ( .A(n498), .B(n345), .Y(n490) );
  CLKINVX1 U335 ( .A(compute_temp[7]), .Y(n531) );
  NAND3X1 U336 ( .A(n340), .B(n341), .C(n342), .Y(n257) );
  OR2XL U337 ( .A(n530), .B(n299), .Y(n340) );
  OR2XL U338 ( .A(n531), .B(n515), .Y(n341) );
  OR2XL U339 ( .A(n220), .B(n517), .Y(n342) );
  INVXL U340 ( .A(res_di[7]), .Y(n530) );
  CLKBUFX3 U341 ( .A(N178), .Y(n354) );
  NOR2X4 U342 ( .A(n347), .B(n573), .Y(n435) );
  MXI2XL U343 ( .A(n403), .B(ns0[1]), .S0(n370), .Y(n296) );
  NOR4XL U344 ( .A(n410), .B(n500), .C(n499), .D(n494), .Y(n509) );
  AND2X2 U345 ( .A(n429), .B(n578), .Y(n343) );
  AND2X2 U346 ( .A(n579), .B(n580), .Y(n344) );
  INVXL U347 ( .A(n494), .Y(n491) );
  MXI2XL U348 ( .A(n414), .B(n575), .S0(n434), .Y(N177) );
  NAND2XL U349 ( .A(n414), .B(ns[2]), .Y(n575) );
  CLKINVX1 U350 ( .A(n435), .Y(ns[3]) );
  NOR3BXL U351 ( .AN(n410), .B(n501), .C(n490), .Y(n425) );
  NAND2BXL U352 ( .AN(n413), .B(ns0[1]), .Y(n403) );
  OAI2BB1XL U353 ( .A0N(n562), .A1N(n224), .B0(n523), .Y(n563) );
  MXI2XL U354 ( .A(n406), .B(n407), .S0(read_counter[1]), .Y(n294) );
  OAI211XL U355 ( .A0(n231), .A1(n404), .B0(n405), .C0(n397), .Y(n295) );
  XNOR2XL U356 ( .A(n227), .B(n405), .Y(n433) );
  BUFX4 U357 ( .A(n626), .Y(res_addr[1]) );
  BUFX4 U358 ( .A(N264), .Y(res_addr[0]) );
  NOR4X6 U359 ( .A(res_di[3]), .B(res_di[2]), .C(res_di[1]), .D(res_di[0]), 
        .Y(n601) );
  NOR4X6 U360 ( .A(res_di[7]), .B(res_di[6]), .C(res_di[5]), .D(res_di[4]), 
        .Y(n602) );
  AO21X1 U361 ( .A0(n508), .A1(n392), .B0(n572), .Y(n347) );
  NAND2X4 U362 ( .A(ns[1]), .B(n435), .Y(n415) );
  AOI211X1 U363 ( .A0(N343), .A1(n421), .B0(n441), .C0(n353), .Y(n440) );
  NOR2BX1 U364 ( .AN(n500), .B(n490), .Y(n426) );
  NAND2X1 U365 ( .A(n506), .B(n498), .Y(n493) );
  NOR3BXL U366 ( .AN(n410), .B(n492), .C(n490), .Y(n427) );
  CLKBUFX3 U367 ( .A(n422), .Y(n353) );
  NOR2X1 U368 ( .A(n504), .B(n503), .Y(n422) );
  OA21X4 U369 ( .A0(n535), .A1(n536), .B0(n537), .Y(n348) );
  BUFX4 U370 ( .A(n615), .Y(res_addr[12]) );
  BUFX4 U371 ( .A(n625), .Y(res_addr[2]) );
  BUFX4 U372 ( .A(n616), .Y(res_addr[11]) );
  BUFX4 U373 ( .A(n617), .Y(res_addr[10]) );
  BUFX4 U374 ( .A(n618), .Y(res_addr[9]) );
  BUFX4 U375 ( .A(n619), .Y(res_addr[8]) );
  BUFX4 U376 ( .A(n621), .Y(res_addr[6]) );
  BUFX4 U377 ( .A(n623), .Y(res_addr[4]) );
  BUFX4 U378 ( .A(n622), .Y(res_addr[5]) );
  BUFX4 U379 ( .A(n624), .Y(res_addr[3]) );
  BUFX4 U380 ( .A(n620), .Y(res_addr[7]) );
  CLKBUFX3 U381 ( .A(n614), .Y(res_addr[13]) );
  CLKBUFX3 U382 ( .A(n436), .Y(n355) );
  NAND3X1 U383 ( .A(n613), .B(n306), .C(n589), .Y(n436) );
  CLKBUFX3 U384 ( .A(read_counter[0]), .Y(n370) );
  CLKBUFX3 U385 ( .A(reset), .Y(n373) );
  CLKBUFX3 U386 ( .A(reset), .Y(n371) );
  CLKBUFX3 U387 ( .A(reset), .Y(n372) );
  OAI21X1 U388 ( .A0(n414), .A1(n415), .B0(n416), .Y(n413) );
  MXI2XL U389 ( .A(n415), .B(n416), .S0(ns[0]), .Y(N178) );
  OAI211X4 U390 ( .A0(n536), .A1(n501), .B0(n599), .C0(n600), .Y(ns[0]) );
  NOR2BX2 U391 ( .AN(n354), .B(n414), .Y(n402) );
  AOI2BB1XL U392 ( .A0N(n586), .A1N(n537), .B0(n587), .Y(n594) );
  NOR3X6 U393 ( .A(n353), .B(n400), .C(n441), .Y(n502) );
  OAI211X4 U394 ( .A0(n392), .A1(n497), .B0(n576), .C0(n577), .Y(ns[1]) );
  OAI31X4 U395 ( .A0(n490), .A1(n491), .A2(n492), .B0(n493), .Y(n421) );
  XOR2X1 U396 ( .A(res_addr[13]), .B(\add_238/carry[13] ), .Y(N342) );
  AND2X1 U397 ( .A(\add_238/carry[12] ), .B(res_addr[12]), .Y(
        \add_238/carry[13] ) );
  XOR2X1 U398 ( .A(res_addr[12]), .B(\add_238/carry[12] ), .Y(N341) );
  AND2X1 U399 ( .A(\add_238/carry[11] ), .B(res_addr[11]), .Y(
        \add_238/carry[12] ) );
  XOR2X1 U400 ( .A(res_addr[11]), .B(\add_238/carry[11] ), .Y(N340) );
  AND2X1 U401 ( .A(\add_238/carry[10] ), .B(res_addr[10]), .Y(
        \add_238/carry[11] ) );
  XOR2X1 U402 ( .A(res_addr[10]), .B(\add_238/carry[10] ), .Y(N339) );
  AND2X1 U403 ( .A(\add_238/carry[9] ), .B(res_addr[9]), .Y(
        \add_238/carry[10] ) );
  XOR2X1 U404 ( .A(res_addr[9]), .B(\add_238/carry[9] ), .Y(N338) );
  AND2X1 U405 ( .A(\add_238/carry[8] ), .B(res_addr[8]), .Y(\add_238/carry[9] ) );
  XOR2X1 U406 ( .A(res_addr[8]), .B(\add_238/carry[8] ), .Y(N337) );
  OR2X1 U407 ( .A(res_addr[7]), .B(\add_238/carry[7] ), .Y(\add_238/carry[8] )
         );
  XNOR2X1 U408 ( .A(\add_238/carry[7] ), .B(res_addr[7]), .Y(N336) );
  AND2X1 U409 ( .A(\add_238/carry[6] ), .B(res_addr[6]), .Y(\add_238/carry[7] ) );
  XOR2X1 U410 ( .A(res_addr[6]), .B(\add_238/carry[6] ), .Y(N335) );
  AND2X1 U411 ( .A(\add_238/carry[5] ), .B(res_addr[5]), .Y(\add_238/carry[6] ) );
  XOR2X1 U412 ( .A(res_addr[5]), .B(\add_238/carry[5] ), .Y(N334) );
  AND2X1 U413 ( .A(\add_238/carry[4] ), .B(res_addr[4]), .Y(\add_238/carry[5] ) );
  XOR2X1 U414 ( .A(res_addr[4]), .B(\add_238/carry[4] ), .Y(N333) );
  AND2X1 U415 ( .A(\add_238/carry[3] ), .B(res_addr[3]), .Y(\add_238/carry[4] ) );
  XOR2X1 U416 ( .A(res_addr[3]), .B(\add_238/carry[3] ), .Y(N332) );
  AND2X1 U417 ( .A(\add_238/carry[2] ), .B(res_addr[2]), .Y(\add_238/carry[3] ) );
  XOR2X1 U418 ( .A(res_addr[2]), .B(\add_238/carry[2] ), .Y(N331) );
  AND2X1 U419 ( .A(res_addr[0]), .B(res_addr[1]), .Y(\add_238/carry[2] ) );
  XOR2X1 U420 ( .A(res_addr[1]), .B(res_addr[0]), .Y(N330) );
  XNOR2X1 U421 ( .A(res_addr[13]), .B(\sub_229/carry[13] ), .Y(N235) );
  OR2X1 U422 ( .A(res_addr[12]), .B(\sub_229/carry[12] ), .Y(
        \sub_229/carry[13] ) );
  XNOR2X1 U423 ( .A(\sub_229/carry[12] ), .B(res_addr[12]), .Y(N234) );
  OR2X1 U424 ( .A(res_addr[11]), .B(\sub_229/carry[11] ), .Y(
        \sub_229/carry[12] ) );
  XNOR2X1 U425 ( .A(\sub_229/carry[11] ), .B(res_addr[11]), .Y(N233) );
  OR2X1 U426 ( .A(res_addr[10]), .B(\sub_229/carry[10] ), .Y(
        \sub_229/carry[11] ) );
  XNOR2X1 U427 ( .A(\sub_229/carry[10] ), .B(res_addr[10]), .Y(N232) );
  OR2X1 U428 ( .A(res_addr[9]), .B(\sub_229/carry[9] ), .Y(\sub_229/carry[10] ) );
  XNOR2X1 U429 ( .A(\sub_229/carry[9] ), .B(res_addr[9]), .Y(N231) );
  OR2X1 U430 ( .A(res_addr[8]), .B(\sub_229/carry[8] ), .Y(\sub_229/carry[9] )
         );
  XNOR2X1 U431 ( .A(\sub_229/carry[8] ), .B(res_addr[8]), .Y(N230) );
  AND2X1 U432 ( .A(\sub_229/carry[7] ), .B(res_addr[7]), .Y(\sub_229/carry[8] ) );
  XOR2X1 U433 ( .A(res_addr[7]), .B(\sub_229/carry[7] ), .Y(N229) );
  OR2X1 U434 ( .A(res_addr[6]), .B(\sub_229/carry[6] ), .Y(\sub_229/carry[7] )
         );
  XNOR2X1 U435 ( .A(\sub_229/carry[6] ), .B(res_addr[6]), .Y(N228) );
  OR2X1 U436 ( .A(res_addr[5]), .B(\sub_229/carry[5] ), .Y(\sub_229/carry[6] )
         );
  XNOR2X1 U437 ( .A(\sub_229/carry[5] ), .B(res_addr[5]), .Y(N227) );
  OR2X1 U438 ( .A(res_addr[4]), .B(\sub_229/carry[4] ), .Y(\sub_229/carry[5] )
         );
  XNOR2X1 U439 ( .A(\sub_229/carry[4] ), .B(res_addr[4]), .Y(N226) );
  OR2X1 U440 ( .A(res_addr[3]), .B(\sub_229/carry[3] ), .Y(\sub_229/carry[4] )
         );
  XNOR2X1 U441 ( .A(\sub_229/carry[3] ), .B(res_addr[3]), .Y(N225) );
  OR2X1 U442 ( .A(res_addr[2]), .B(\sub_229/carry[2] ), .Y(\sub_229/carry[3] )
         );
  XNOR2X1 U443 ( .A(\sub_229/carry[2] ), .B(res_addr[2]), .Y(N224) );
  OR2X1 U444 ( .A(res_addr[1]), .B(res_addr[0]), .Y(\sub_229/carry[2] ) );
  XNOR2X1 U445 ( .A(res_addr[0]), .B(res_addr[1]), .Y(N223) );
  XOR2X1 U446 ( .A(res_addr[13]), .B(\add_232/carry [13]), .Y(N277) );
  AND2X1 U447 ( .A(\add_232/carry [12]), .B(res_addr[12]), .Y(
        \add_232/carry [13]) );
  XOR2X1 U448 ( .A(res_addr[12]), .B(\add_232/carry [12]), .Y(N276) );
  AND2X1 U449 ( .A(\add_232/carry [11]), .B(res_addr[11]), .Y(
        \add_232/carry [12]) );
  XOR2X1 U450 ( .A(res_addr[11]), .B(\add_232/carry [11]), .Y(N275) );
  AND2X1 U451 ( .A(\add_232/carry [10]), .B(res_addr[10]), .Y(
        \add_232/carry [11]) );
  XOR2X1 U452 ( .A(res_addr[10]), .B(\add_232/carry [10]), .Y(N274) );
  AND2X1 U453 ( .A(\add_232/carry [9]), .B(res_addr[9]), .Y(
        \add_232/carry [10]) );
  XOR2X1 U454 ( .A(res_addr[9]), .B(\add_232/carry [9]), .Y(N273) );
  AND2X1 U455 ( .A(\add_232/carry [8]), .B(res_addr[8]), .Y(\add_232/carry [9]) );
  XOR2X1 U456 ( .A(res_addr[8]), .B(\add_232/carry [8]), .Y(N272) );
  AND2X1 U457 ( .A(\add_232/carry [7]), .B(res_addr[7]), .Y(\add_232/carry [8]) );
  XOR2X1 U458 ( .A(res_addr[7]), .B(\add_232/carry [7]), .Y(N271) );
  OR2X1 U459 ( .A(res_addr[6]), .B(\add_232/carry [6]), .Y(\add_232/carry [7])
         );
  XNOR2X1 U460 ( .A(\add_232/carry [6]), .B(res_addr[6]), .Y(N270) );
  OR2X1 U461 ( .A(res_addr[5]), .B(\add_232/carry [5]), .Y(\add_232/carry [6])
         );
  XNOR2X1 U462 ( .A(\add_232/carry [5]), .B(res_addr[5]), .Y(N269) );
  OR2X1 U463 ( .A(res_addr[4]), .B(\add_232/carry [4]), .Y(\add_232/carry [5])
         );
  XNOR2X1 U464 ( .A(\add_232/carry [4]), .B(res_addr[4]), .Y(N268) );
  OR2X1 U465 ( .A(res_addr[3]), .B(\add_232/carry [3]), .Y(\add_232/carry [4])
         );
  XNOR2X1 U466 ( .A(\add_232/carry [3]), .B(res_addr[3]), .Y(N267) );
  OR2X1 U467 ( .A(res_addr[2]), .B(res_addr[1]), .Y(\add_232/carry [3]) );
  XNOR2X1 U468 ( .A(res_addr[1]), .B(res_addr[2]), .Y(N266) );
  XNOR2X1 U469 ( .A(res_addr[13]), .B(\sub_241/carry [13]), .Y(N384) );
  OR2X1 U470 ( .A(res_addr[12]), .B(\sub_241/carry [12]), .Y(
        \sub_241/carry [13]) );
  XNOR2X1 U471 ( .A(\sub_241/carry [12]), .B(res_addr[12]), .Y(N383) );
  OR2X1 U472 ( .A(res_addr[11]), .B(\sub_241/carry [11]), .Y(
        \sub_241/carry [12]) );
  XNOR2X1 U473 ( .A(\sub_241/carry [11]), .B(res_addr[11]), .Y(N382) );
  OR2X1 U474 ( .A(res_addr[10]), .B(\sub_241/carry [10]), .Y(
        \sub_241/carry [11]) );
  XNOR2X1 U475 ( .A(\sub_241/carry [10]), .B(res_addr[10]), .Y(N381) );
  OR2X1 U476 ( .A(res_addr[9]), .B(\sub_241/carry [9]), .Y(\sub_241/carry [10]) );
  XNOR2X1 U477 ( .A(\sub_241/carry [9]), .B(res_addr[9]), .Y(N380) );
  OR2X1 U478 ( .A(res_addr[8]), .B(\sub_241/carry [8]), .Y(\sub_241/carry [9])
         );
  XNOR2X1 U479 ( .A(\sub_241/carry [8]), .B(res_addr[8]), .Y(N379) );
  OR2X1 U480 ( .A(res_addr[7]), .B(\sub_241/carry [7]), .Y(\sub_241/carry [8])
         );
  XNOR2X1 U481 ( .A(\sub_241/carry [7]), .B(res_addr[7]), .Y(N378) );
  AND2X1 U482 ( .A(\sub_241/carry [6]), .B(res_addr[6]), .Y(\sub_241/carry [7]) );
  XOR2X1 U483 ( .A(res_addr[6]), .B(\sub_241/carry [6]), .Y(N377) );
  AND2X1 U484 ( .A(\sub_241/carry [5]), .B(res_addr[5]), .Y(\sub_241/carry [6]) );
  XOR2X1 U485 ( .A(res_addr[5]), .B(\sub_241/carry [5]), .Y(N376) );
  AND2X1 U486 ( .A(\sub_241/carry [4]), .B(res_addr[4]), .Y(\sub_241/carry [5]) );
  XOR2X1 U487 ( .A(res_addr[4]), .B(\sub_241/carry [4]), .Y(N375) );
  AND2X1 U488 ( .A(\sub_241/carry [3]), .B(res_addr[3]), .Y(\sub_241/carry [4]) );
  XOR2X1 U489 ( .A(res_addr[3]), .B(\sub_241/carry [3]), .Y(N374) );
  AND2X1 U490 ( .A(res_addr[1]), .B(res_addr[2]), .Y(\sub_241/carry [3]) );
  XOR2X1 U491 ( .A(res_addr[2]), .B(res_addr[1]), .Y(N373) );
  NOR2X1 U492 ( .A(n231), .B(N43), .Y(n383) );
  NOR2X1 U493 ( .A(n231), .B(n230), .Y(n382) );
  NOR2X1 U494 ( .A(n230), .B(N44), .Y(n380) );
  NOR2X1 U495 ( .A(N43), .B(N44), .Y(n379) );
  AO22X1 U496 ( .A0(sti_di[5]), .A1(n380), .B0(sti_di[4]), .B1(n379), .Y(n374)
         );
  AOI221XL U497 ( .A0(sti_di[6]), .A1(n383), .B0(sti_di[7]), .B1(n382), .C0(
        n374), .Y(n377) );
  AO22X1 U498 ( .A0(sti_di[1]), .A1(n380), .B0(sti_di[0]), .B1(n379), .Y(n375)
         );
  AOI221XL U499 ( .A0(sti_di[2]), .A1(n383), .B0(sti_di[3]), .B1(n382), .C0(
        n375), .Y(n376) );
  OA22X1 U500 ( .A0(n227), .A1(n377), .B0(N45), .B1(n376), .Y(n387) );
  AO22X1 U501 ( .A0(sti_di[13]), .A1(n380), .B0(sti_di[12]), .B1(n379), .Y(
        n378) );
  AOI221XL U502 ( .A0(sti_di[14]), .A1(n383), .B0(sti_di[15]), .B1(n382), .C0(
        n378), .Y(n385) );
  AO22X1 U503 ( .A0(sti_di[9]), .A1(n380), .B0(sti_di[8]), .B1(n379), .Y(n381)
         );
  AOI221XL U504 ( .A0(sti_di[10]), .A1(n383), .B0(sti_di[11]), .B1(n382), .C0(
        n381), .Y(n384) );
  OAI22XL U505 ( .A0(n385), .A1(n227), .B0(N45), .B1(n384), .Y(n386) );
  OAI2BB2XL U506 ( .B0(n387), .B1(N46), .A0N(N46), .A1N(n386), .Y(N495) );
  OAI211X1 U507 ( .A0(n388), .A1(n308), .B0(n389), .C0(n390), .Y(ns0[0]) );
  MXI2X1 U508 ( .A(n391), .B(n392), .S0(n608), .Y(n390) );
  NOR4X1 U509 ( .A(res_addr[7]), .B(n609), .C(n393), .D(n394), .Y(n391) );
  NOR2X1 U510 ( .A(n395), .B(n396), .Y(n388) );
  NAND4X1 U511 ( .A(n301), .B(n309), .C(n303), .D(n320), .Y(n396) );
  NAND4X1 U512 ( .A(n302), .B(n310), .C(n304), .D(n321), .Y(n395) );
  CLKINVX1 U513 ( .A(n397), .Y(n298) );
  OAI211X1 U514 ( .A0(n354), .A1(n301), .B0(n398), .C0(n399), .Y(n297) );
  AOI2BB2X1 U515 ( .B0(N495), .B1(n400), .A0N(n238), .A1N(n401), .Y(n399) );
  NAND2X1 U516 ( .A(N496), .B(n402), .Y(n398) );
  NAND2X1 U517 ( .A(n408), .B(n370), .Y(n406) );
  OAI2BB2XL U518 ( .B0(n409), .B1(n315), .A0N(n408), .A1N(n410), .Y(n293) );
  MXI2X1 U519 ( .A(n411), .B(n412), .S0(n607), .Y(n292) );
  NAND4X1 U520 ( .A(read_counter[1]), .B(n408), .C(read_counter[2]), .D(n370), 
        .Y(n412) );
  CLKINVX1 U521 ( .A(n403), .Y(n408) );
  OA21XL U522 ( .A0(read_counter[2]), .A1(n413), .B0(n409), .Y(n411) );
  OA21XL U523 ( .A0(read_counter[1]), .A1(n413), .B0(n407), .Y(n409) );
  OA21XL U524 ( .A0(n370), .A1(n413), .B0(ns0[1]), .Y(n407) );
  NAND4X1 U525 ( .A(n417), .B(n418), .C(n419), .D(n420), .Y(n291) );
  AOI21X1 U526 ( .A0(N356), .A1(n421), .B0(n353), .Y(n420) );
  AOI22X1 U527 ( .A0(N342), .A1(n350), .B0(N203), .B1(n349), .Y(n419) );
  AOI22X1 U528 ( .A0(N277), .A1(n352), .B0(N235), .B1(n351), .Y(n418) );
  AOI22X1 U529 ( .A0(N384), .A1(n322), .B0(n345), .B1(res_addr[13]), .Y(n417)
         );
  NAND3BX1 U530 ( .AN(n404), .B(n397), .C(n428), .Y(n290) );
  NAND3BX1 U531 ( .AN(n429), .B(n430), .C(N43), .Y(n428) );
  NAND2X1 U532 ( .A(n431), .B(n397), .Y(n289) );
  XNOR2X1 U533 ( .A(n228), .B(n432), .Y(n431) );
  NAND2BX1 U534 ( .AN(n405), .B(n227), .Y(n432) );
  NAND2X1 U535 ( .A(n433), .B(n397), .Y(n288) );
  NAND4X1 U536 ( .A(ns[0]), .B(n434), .C(n416), .D(n435), .Y(n397) );
  NAND2X1 U537 ( .A(n231), .B(n404), .Y(n405) );
  NOR2X1 U538 ( .A(n430), .B(N43), .Y(n404) );
  CLKMX2X2 U539 ( .A(N167), .B(sti_addr[0]), .S0(n355), .Y(n287) );
  CLKMX2X2 U540 ( .A(N168), .B(sti_addr[1]), .S0(n355), .Y(n286) );
  CLKMX2X2 U541 ( .A(N169), .B(sti_addr[2]), .S0(n355), .Y(n285) );
  CLKMX2X2 U542 ( .A(N170), .B(sti_addr[3]), .S0(n355), .Y(n284) );
  CLKMX2X2 U543 ( .A(N171), .B(sti_addr[4]), .S0(n355), .Y(n283) );
  CLKMX2X2 U544 ( .A(N172), .B(sti_addr[5]), .S0(n355), .Y(n282) );
  CLKMX2X2 U545 ( .A(N173), .B(sti_addr[6]), .S0(n355), .Y(n281) );
  CLKMX2X2 U546 ( .A(N174), .B(sti_addr[7]), .S0(n355), .Y(n280) );
  CLKMX2X2 U547 ( .A(N175), .B(sti_addr[8]), .S0(n355), .Y(n279) );
  CLKMX2X2 U548 ( .A(N176), .B(sti_addr[9]), .S0(n355), .Y(n278) );
  NAND4X1 U549 ( .A(n437), .B(n438), .C(n439), .D(n440), .Y(n277) );
  AOI22X1 U550 ( .A0(n312), .A1(n350), .B0(N190), .B1(n349), .Y(n439) );
  AOI22X1 U551 ( .A0(res_addr[0]), .A1(n352), .B0(n312), .B1(n351), .Y(n438)
         );
  AOI22X1 U552 ( .A0(res_addr[0]), .A1(n322), .B0(n345), .B1(res_addr[0]), .Y(
        n437) );
  NAND4X1 U553 ( .A(n442), .B(n443), .C(n444), .D(n445), .Y(n276) );
  AOI21X1 U554 ( .A0(N344), .A1(n421), .B0(n353), .Y(n445) );
  AOI22X1 U555 ( .A0(N330), .A1(n350), .B0(N191), .B1(n349), .Y(n444) );
  AOI22X1 U556 ( .A0(n311), .A1(n352), .B0(N223), .B1(n351), .Y(n443) );
  AOI22X1 U557 ( .A0(n311), .A1(n322), .B0(n345), .B1(res_addr[1]), .Y(n442)
         );
  NAND4X1 U558 ( .A(n446), .B(n447), .C(n448), .D(n449), .Y(n275) );
  AOI21X1 U559 ( .A0(N355), .A1(n421), .B0(n353), .Y(n449) );
  AOI22X1 U560 ( .A0(N341), .A1(n350), .B0(N202), .B1(n349), .Y(n448) );
  AOI22X1 U561 ( .A0(N276), .A1(n352), .B0(N234), .B1(n351), .Y(n447) );
  AOI22X1 U562 ( .A0(N383), .A1(n322), .B0(n345), .B1(res_addr[12]), .Y(n446)
         );
  NAND4X1 U563 ( .A(n450), .B(n451), .C(n452), .D(n453), .Y(n274) );
  AOI21X1 U564 ( .A0(N354), .A1(n421), .B0(n353), .Y(n453) );
  AOI22X1 U565 ( .A0(N340), .A1(n350), .B0(N201), .B1(n349), .Y(n452) );
  AOI22X1 U566 ( .A0(N275), .A1(n352), .B0(N233), .B1(n351), .Y(n451) );
  AOI22X1 U567 ( .A0(N382), .A1(n322), .B0(n345), .B1(res_addr[11]), .Y(n450)
         );
  NAND4X1 U568 ( .A(n454), .B(n455), .C(n456), .D(n457), .Y(n273) );
  AOI21X1 U569 ( .A0(N353), .A1(n421), .B0(n353), .Y(n457) );
  AOI22X1 U570 ( .A0(N339), .A1(n350), .B0(N200), .B1(n349), .Y(n456) );
  AOI22X1 U571 ( .A0(N274), .A1(n352), .B0(N232), .B1(n351), .Y(n455) );
  AOI22X1 U572 ( .A0(N381), .A1(n322), .B0(n345), .B1(res_addr[10]), .Y(n454)
         );
  NAND4X1 U573 ( .A(n458), .B(n459), .C(n460), .D(n461), .Y(n272) );
  AOI21X1 U574 ( .A0(N352), .A1(n421), .B0(n353), .Y(n461) );
  AOI22X1 U575 ( .A0(N338), .A1(n350), .B0(N199), .B1(n349), .Y(n460) );
  AOI22X1 U576 ( .A0(N273), .A1(n352), .B0(N231), .B1(n351), .Y(n459) );
  AOI22X1 U577 ( .A0(N380), .A1(n322), .B0(n345), .B1(res_addr[9]), .Y(n458)
         );
  NAND4X1 U578 ( .A(n462), .B(n463), .C(n464), .D(n465), .Y(n271) );
  AOI21X1 U579 ( .A0(N351), .A1(n421), .B0(n353), .Y(n465) );
  AOI22X1 U580 ( .A0(N337), .A1(n350), .B0(N198), .B1(n349), .Y(n464) );
  AOI22X1 U581 ( .A0(N272), .A1(n352), .B0(N230), .B1(n351), .Y(n463) );
  AOI22X1 U582 ( .A0(N379), .A1(n322), .B0(n345), .B1(res_addr[8]), .Y(n462)
         );
  NAND4X1 U583 ( .A(n466), .B(n467), .C(n468), .D(n469), .Y(n270) );
  AOI21X1 U584 ( .A0(N345), .A1(n421), .B0(n353), .Y(n469) );
  AOI22X1 U585 ( .A0(N331), .A1(n350), .B0(N192), .B1(n349), .Y(n468) );
  AOI22X1 U586 ( .A0(N266), .A1(n352), .B0(N224), .B1(n351), .Y(n467) );
  AOI22X1 U587 ( .A0(N373), .A1(n322), .B0(n345), .B1(res_addr[2]), .Y(n466)
         );
  NAND4X1 U588 ( .A(n470), .B(n471), .C(n472), .D(n473), .Y(n269) );
  AOI21X1 U589 ( .A0(N346), .A1(n421), .B0(n353), .Y(n473) );
  AOI22X1 U590 ( .A0(N332), .A1(n350), .B0(N193), .B1(n349), .Y(n472) );
  AOI22X1 U591 ( .A0(N267), .A1(n352), .B0(N225), .B1(n351), .Y(n471) );
  AOI22X1 U592 ( .A0(N374), .A1(n322), .B0(n345), .B1(res_addr[3]), .Y(n470)
         );
  NAND4X1 U593 ( .A(n474), .B(n475), .C(n476), .D(n477), .Y(n268) );
  AOI21X1 U594 ( .A0(N347), .A1(n421), .B0(n353), .Y(n477) );
  AOI22X1 U595 ( .A0(N333), .A1(n350), .B0(N194), .B1(n349), .Y(n476) );
  AOI22X1 U596 ( .A0(N268), .A1(n352), .B0(N226), .B1(n351), .Y(n475) );
  AOI22X1 U597 ( .A0(N375), .A1(n322), .B0(n345), .B1(res_addr[4]), .Y(n474)
         );
  NAND4X1 U598 ( .A(n478), .B(n479), .C(n480), .D(n481), .Y(n267) );
  AOI21X1 U599 ( .A0(N348), .A1(n421), .B0(n353), .Y(n481) );
  AOI22X1 U600 ( .A0(N334), .A1(n350), .B0(N195), .B1(n349), .Y(n480) );
  AOI22X1 U601 ( .A0(N269), .A1(n352), .B0(N227), .B1(n351), .Y(n479) );
  AOI22X1 U602 ( .A0(N376), .A1(n322), .B0(n345), .B1(res_addr[5]), .Y(n478)
         );
  NAND4X1 U603 ( .A(n482), .B(n483), .C(n484), .D(n485), .Y(n266) );
  AOI21X1 U604 ( .A0(N349), .A1(n421), .B0(n353), .Y(n485) );
  AOI22X1 U605 ( .A0(N335), .A1(n350), .B0(N196), .B1(n349), .Y(n484) );
  AOI22X1 U606 ( .A0(N270), .A1(n352), .B0(N228), .B1(n351), .Y(n483) );
  AOI22X1 U607 ( .A0(N377), .A1(n322), .B0(n345), .B1(res_addr[6]), .Y(n482)
         );
  NAND4X1 U608 ( .A(n486), .B(n487), .C(n488), .D(n489), .Y(n265) );
  AOI21X1 U609 ( .A0(N350), .A1(n421), .B0(n441), .Y(n489) );
  AOI22X1 U610 ( .A0(N336), .A1(n350), .B0(N197), .B1(n349), .Y(n488) );
  MXI2X1 U611 ( .A(n496), .B(n497), .S0(n498), .Y(n495) );
  AOI22X1 U612 ( .A0(N271), .A1(n352), .B0(N229), .B1(n351), .Y(n487) );
  AOI22X1 U613 ( .A0(N378), .A1(n322), .B0(n345), .B1(res_addr[7]), .Y(n486)
         );
  NOR2BX1 U614 ( .AN(n503), .B(n504), .Y(n441) );
  NOR2X1 U615 ( .A(n509), .B(n318), .Y(n507) );
  NOR2X1 U616 ( .A(n315), .B(n307), .Y(n510) );
  NOR3BXL U617 ( .AN(n511), .B(n492), .C(n370), .Y(n499) );
  NOR3BXL U618 ( .AN(n511), .B(n501), .C(n370), .Y(n500) );
  NOR3X1 U619 ( .A(n317), .B(read_counter[2]), .C(n307), .Y(n410) );
  OAI222XL U620 ( .A0(n518), .A1(n299), .B0(n519), .B1(n515), .C0(n226), .C1(
        n517), .Y(n263) );
  CLKINVX1 U621 ( .A(compute_temp[1]), .Y(n519) );
  CLKINVX1 U622 ( .A(res_di[1]), .Y(n518) );
  OAI222XL U623 ( .A0(n520), .A1(n299), .B0(n521), .B1(n515), .C0(n225), .C1(
        n517), .Y(n262) );
  OAI222XL U624 ( .A0(n528), .A1(n299), .B0(n529), .B1(n515), .C0(n221), .C1(
        n517), .Y(n258) );
  CLKINVX1 U625 ( .A(compute_temp[6]), .Y(n529) );
  CLKINVX1 U626 ( .A(res_di[6]), .Y(n528) );
  OAI222XL U627 ( .A0(n318), .A1(n512), .B0(n540), .B1(n541), .C0(res_di[7]), 
        .C1(n220), .Y(n539) );
  NOR2X1 U628 ( .A(min[7]), .B(n530), .Y(n541) );
  AOI32X1 U629 ( .A0(n542), .A1(n543), .A2(n544), .B0(n545), .B1(n546), .Y(
        n540) );
  OAI21XL U630 ( .A0(n547), .A1(n221), .B0(res_di[6]), .Y(n546) );
  NAND2X1 U631 ( .A(n547), .B(n221), .Y(n545) );
  AOI32X1 U632 ( .A0(n543), .A1(n524), .A2(min[4]), .B0(n526), .B1(min[5]), 
        .Y(n547) );
  CLKINVX1 U633 ( .A(res_di[4]), .Y(n524) );
  AOI22X1 U634 ( .A0(res_di[6]), .A1(n221), .B0(res_di[4]), .B1(n223), .Y(n544) );
  NAND2X1 U635 ( .A(res_di[5]), .B(n222), .Y(n543) );
  OAI221XL U636 ( .A0(n548), .A1(n549), .B0(n224), .B1(n550), .C0(n551), .Y(
        n542) );
  OAI2BB1X1 U637 ( .A0N(n550), .A1N(n224), .B0(n522), .Y(n551) );
  NAND2X1 U638 ( .A(n520), .B(min[2]), .Y(n550) );
  OAI22XL U639 ( .A0(min[2]), .A1(n520), .B0(min[3]), .B1(n522), .Y(n549) );
  CLKINVX1 U640 ( .A(res_di[2]), .Y(n520) );
  ACHCINX2 U641 ( .CIN(min[0]), .A(res_di[1]), .B(n226), .CO(n548) );
  NAND2X1 U642 ( .A(n511), .B(n370), .Y(n512) );
  NOR2X1 U643 ( .A(read_counter[1]), .B(read_counter[2]), .Y(n511) );
  AOI2BB2X1 U644 ( .B0(n221), .B1(compute_temp[6]), .A0N(min[4]), .A1N(n525), 
        .Y(n556) );
  CLKINVX1 U645 ( .A(compute_temp[4]), .Y(n525) );
  NAND2X1 U646 ( .A(n222), .B(n300), .Y(n555) );
  OAI221XL U647 ( .A0(n560), .A1(n561), .B0(n224), .B1(n562), .C0(n563), .Y(
        n554) );
  NAND2X1 U648 ( .A(min[2]), .B(n521), .Y(n562) );
  OAI22XL U649 ( .A0(n523), .A1(min[3]), .B0(n521), .B1(min[2]), .Y(n561) );
  CLKINVX1 U650 ( .A(compute_temp[2]), .Y(n521) );
  CLKINVX1 U651 ( .A(compute_temp[3]), .Y(n523) );
  ACHCINX2 U652 ( .CIN(n516), .A(n226), .B(compute_temp[1]), .CO(n560) );
  CLKINVX1 U653 ( .A(compute_temp[0]), .Y(n516) );
  CLKINVX1 U654 ( .A(n389), .Y(n533) );
  NAND2X1 U655 ( .A(n609), .B(n608), .Y(n389) );
  OAI221XL U656 ( .A0(n226), .A1(n401), .B0(n354), .B1(n309), .C0(n564), .Y(
        n256) );
  NAND2X1 U657 ( .A(N497), .B(n402), .Y(n564) );
  OAI221XL U658 ( .A0(n225), .A1(n401), .B0(n354), .B1(n303), .C0(n565), .Y(
        n255) );
  NAND2X1 U659 ( .A(N498), .B(n402), .Y(n565) );
  OAI221XL U660 ( .A0(n224), .A1(n401), .B0(n354), .B1(n320), .C0(n566), .Y(
        n254) );
  NAND2X1 U661 ( .A(N499), .B(n402), .Y(n566) );
  OAI221XL U662 ( .A0(n223), .A1(n401), .B0(n354), .B1(n302), .C0(n567), .Y(
        n253) );
  NAND2X1 U663 ( .A(N500), .B(n402), .Y(n567) );
  OAI221XL U664 ( .A0(n222), .A1(n401), .B0(n354), .B1(n310), .C0(n568), .Y(
        n252) );
  NAND2X1 U665 ( .A(N501), .B(n402), .Y(n568) );
  OAI221XL U666 ( .A0(n221), .A1(n401), .B0(n354), .B1(n304), .C0(n569), .Y(
        n251) );
  NAND2X1 U667 ( .A(N502), .B(n402), .Y(n569) );
  OAI221XL U668 ( .A0(n220), .A1(n401), .B0(n354), .B1(n321), .C0(n570), .Y(
        n250) );
  NAND2X1 U669 ( .A(N503), .B(n402), .Y(n570) );
  CLKINVX1 U670 ( .A(n415), .Y(n505) );
  NAND2X1 U671 ( .A(n219), .B(n571), .Y(n249) );
  AND3X1 U672 ( .A(n574), .B(n429), .C(n503), .Y(n572) );
  CLKINVX1 U673 ( .A(ns[1]), .Y(n434) );
  NAND3X1 U674 ( .A(n584), .B(n316), .C(n611), .Y(n571) );
  NOR2X1 U675 ( .A(n610), .B(n612), .Y(n585) );
  OAI21XL U676 ( .A0(n587), .A1(n534), .B0(n588), .Y(n582) );
  OA21XL U677 ( .A0(n492), .A1(n536), .B0(n355), .Y(n576) );
  AND4X1 U678 ( .A(n590), .B(res_addr[12]), .C(res_addr[11]), .D(n591), .Y(
        n392) );
  NOR3BXL U679 ( .AN(res_addr[10]), .B(res_addr[7]), .C(res_addr[0]), .Y(n591)
         );
  CLKINVX1 U680 ( .A(n592), .Y(n590) );
  NAND4BX1 U681 ( .AN(n393), .B(res_addr[13]), .C(res_addr[1]), .D(res_addr[2]), .Y(n592) );
  NOR2BX1 U682 ( .AN(n506), .B(n305), .Y(n587) );
  AND4X1 U683 ( .A(n595), .B(n596), .C(n597), .D(n598), .Y(n588) );
  NOR4X1 U684 ( .A(res_addr[9]), .B(res_addr[8]), .C(res_addr[6]), .D(
        res_addr[5]), .Y(n598) );
  NOR3X1 U685 ( .A(res_addr[2]), .B(res_addr[4]), .C(res_addr[3]), .Y(n597) );
  NOR4X1 U686 ( .A(res_addr[1]), .B(res_addr[13]), .C(res_addr[12]), .D(
        res_addr[11]), .Y(n596) );
  NOR3X1 U687 ( .A(n314), .B(res_addr[10]), .C(res_addr[0]), .Y(n595) );
  CLKINVX1 U688 ( .A(n537), .Y(n534) );
  NAND2X1 U689 ( .A(n506), .B(n305), .Y(n537) );
  NOR3X1 U690 ( .A(n613), .B(n612), .C(n313), .Y(n506) );
  CLKINVX1 U691 ( .A(n536), .Y(n532) );
  NAND4X1 U692 ( .A(read_counter[2]), .B(n370), .C(n607), .D(n307), .Y(n593)
         );
  CLKINVX1 U693 ( .A(n504), .Y(n580) );
  NAND3X1 U694 ( .A(n584), .B(n305), .C(n613), .Y(n504) );
  AND3X1 U695 ( .A(n503), .B(n603), .C(n230), .Y(n579) );
  NOR3X1 U696 ( .A(n393), .B(n314), .C(n394), .Y(n503) );
  NAND4X1 U697 ( .A(res_addr[1]), .B(res_addr[13]), .C(res_addr[2]), .D(n604), 
        .Y(n394) );
  AND4X1 U698 ( .A(res_addr[0]), .B(res_addr[10]), .C(res_addr[11]), .D(
        res_addr[12]), .Y(n604) );
  NAND4X1 U699 ( .A(res_addr[8]), .B(res_addr[6]), .C(res_addr[9]), .D(n605), 
        .Y(n393) );
  AND3X1 U700 ( .A(res_addr[5]), .B(res_addr[3]), .C(res_addr[4]), .Y(n605) );
  NOR4X1 U701 ( .A(n305), .B(n613), .C(n612), .D(n610), .Y(n429) );
  CLKINVX1 U702 ( .A(n578), .Y(n574) );
  NAND2X1 U703 ( .A(n603), .B(N43), .Y(n578) );
  NOR3X1 U704 ( .A(n228), .B(n231), .C(n227), .Y(n603) );
  AOI31X1 U705 ( .A0(n316), .A1(n306), .A2(n589), .B0(n508), .Y(n599) );
  CLKINVX1 U706 ( .A(n497), .Y(n508) );
  OAI211X1 U707 ( .A0(n305), .A1(n313), .B0(n613), .C0(n606), .Y(n497) );
  NOR2X1 U708 ( .A(n612), .B(n589), .Y(n606) );
  NOR2X1 U709 ( .A(n611), .B(n610), .Y(n589) );
  NAND2X1 U710 ( .A(n608), .B(n308), .Y(n501) );
  NAND3X1 U711 ( .A(n611), .B(n584), .C(n613), .Y(n536) );
  NOR2X1 U712 ( .A(n306), .B(n610), .Y(n584) );
endmodule

