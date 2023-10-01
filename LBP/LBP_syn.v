/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Tue Oct  4 01:29:21 2022
/////////////////////////////////////////////////////////////


module LBP_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  CLKINVX1 U1 ( .A(n16), .Y(n1) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[10]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[11]), .Y(n3) );
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


module LBP_DW01_inc_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
endmodule


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N45, N46, N47, N48, N50, N51, N52, N53, N54,
         N55, N57, N58, N59, N60, N61, N62, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84,
         N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N127, N128, N129, N130,
         N131, N132, N134, N135, N136, N137, N138, N139, N140, N141, N142,
         N143, N144, N145, N146, N148, N150, N151, N152, N153, N154, N158,
         N159, N160, N161, N162, N163, N164, N165, N166, N167, N168, N169,
         N170, N256, N257, N258, N259, N260, N261, N262, N263, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n90, n91, n92, n93, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n112, n113, n114, n116, n118, n120, n121, n123, n124, n125, n126,
         n127, n129, n130, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n288, \r485/GE_LT_GT_LE , \add_102/carry[2] ,
         \add_102/carry[3] , \add_102/carry[4] , \add_102/carry[5] ,
         \add_102/carry[6] , \add_102/carry[7] , \add_102/carry[8] ,
         \add_102/carry[9] , \add_102/carry[10] , \add_102/carry[11] ,
         \add_102/carry[12] , \add_102/carry[13] , \add_98/carry[2] ,
         \add_98/carry[3] , \add_98/carry[4] , \add_98/carry[5] ,
         \add_98/carry[6] , \add_98/carry[7] , \add_98/carry[8] ,
         \add_98/carry[9] , \add_98/carry[10] , \add_98/carry[11] ,
         \add_98/carry[12] , \add_98/carry[13] , \add_92/carry[2] ,
         \add_92/carry[3] , \add_92/carry[4] , \add_92/carry[5] ,
         \add_92/carry[6] , \add_92/carry[7] , \add_92/carry[8] ,
         \add_92/carry[9] , \add_92/carry[10] , \add_92/carry[11] ,
         \add_92/carry[12] , \add_92/carry[13] , \sub_83/carry[2] ,
         \sub_83/carry[3] , \sub_83/carry[4] , \sub_83/carry[5] ,
         \sub_83/carry[6] , \sub_83/carry[7] , \sub_83/carry[8] ,
         \sub_83/carry[9] , \sub_83/carry[10] , \sub_83/carry[11] ,
         \sub_83/carry[12] , \sub_83/carry[13] , \sub_77/carry[2] ,
         \sub_77/carry[3] , \sub_77/carry[4] , \sub_77/carry[5] ,
         \sub_77/carry[6] , \sub_77/carry[7] , \sub_77/carry[8] ,
         \sub_77/carry[9] , \sub_77/carry[10] , \sub_77/carry[11] ,
         \sub_77/carry[12] , \sub_77/carry[13] , n289, n290, n292, n294, n296,
         n298, n300, n302, n304, n308, n310, n312, n314, n316, n318, n320,
         n322, n330, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n393, n394, n395, n396;
  wire   [13:0] mid_addr;
  wire   [7:0] mid_data;
  wire   [13:1] \add_95/carry ;
  wire   [14:0] \sub_80/carry ;
  wire   [7:0] \sub_101/carry ;

  LBP_DW01_dec_0 sub_86 ( .A({mid_addr[13], n361, n360, n359, n358, n357, n356, 
        n355, n354, n353, n352, n351, n350, n362}), .SUM({N90, N89, N88, N87, 
        N86, N85, N84, N83, N82, N81, N80, N79, N78, N77}) );
  LBP_DW01_inc_0 r478 ( .A({mid_addr[13], n361, n360, n359, n358, n357, n356, 
        n355, n354, n353, n352, n351, n350, n362}), .SUM({N104, N103, N102, 
        N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91}) );
  DFFRX1 T0_reg ( .D(n246), .CK(clk), .RN(n366), .Q(N256) );
  DFFRX1 T1_reg ( .D(n245), .CK(clk), .RN(n367), .Q(N257) );
  DFFRX1 T2_reg ( .D(n244), .CK(clk), .RN(n364), .Q(N258) );
  DFFRX1 T3_reg ( .D(n243), .CK(clk), .RN(n365), .Q(N259) );
  DFFRX1 T4_reg ( .D(n242), .CK(clk), .RN(n365), .Q(N260) );
  DFFRX1 T5_reg ( .D(n241), .CK(clk), .RN(n366), .Q(N261) );
  DFFRX1 T6_reg ( .D(n240), .CK(clk), .RN(n367), .Q(N262) );
  DFFRX1 T7_reg ( .D(n239), .CK(clk), .RN(n364), .Q(N263) );
  DFFRX1 \mid_addr_reg[12]  ( .D(n269), .CK(clk), .RN(n365), .Q(mid_addr[12]), 
        .QN(n217) );
  DFFRX2 \mid_addr_reg[13]  ( .D(n271), .CK(clk), .RN(n365), .Q(mid_addr[13]), 
        .QN(n219) );
  DFFRX1 \mid_data_reg[7]  ( .D(n282), .CK(clk), .RN(n364), .Q(mid_data[7]), 
        .QN(n230) );
  DFFRX1 \mid_addr_reg[11]  ( .D(n267), .CK(clk), .RN(n365), .Q(mid_addr[11]), 
        .QN(n215) );
  DFFRX1 \mid_addr_reg[10]  ( .D(n265), .CK(clk), .RN(n365), .Q(mid_addr[10]), 
        .QN(n213) );
  DFFRX1 \mid_data_reg[6]  ( .D(n281), .CK(clk), .RN(n364), .QN(n229) );
  DFFRX1 \mid_addr_reg[9]  ( .D(n263), .CK(clk), .RN(n365), .Q(mid_addr[9]), 
        .QN(n211) );
  DFFRX1 \mid_addr_reg[8]  ( .D(n261), .CK(clk), .RN(n365), .Q(mid_addr[8]), 
        .QN(n209) );
  DFFRX1 \mid_data_reg[5]  ( .D(n280), .CK(clk), .RN(n364), .Q(mid_data[5]), 
        .QN(n228) );
  DFFRX1 \mid_data_reg[0]  ( .D(n275), .CK(clk), .RN(n364), .QN(n223) );
  DFFRX1 \mid_data_reg[4]  ( .D(n279), .CK(clk), .RN(n364), .Q(mid_data[4]), 
        .QN(n227) );
  DFFRX1 \mid_data_reg[2]  ( .D(n277), .CK(clk), .RN(n364), .Q(mid_data[2]), 
        .QN(n225) );
  DFFRX1 \mid_data_reg[1]  ( .D(n276), .CK(clk), .RN(n364), .Q(mid_data[1]), 
        .QN(n224) );
  DFFRX1 \mid_addr_reg[7]  ( .D(n259), .CK(clk), .RN(n366), .Q(mid_addr[7]), 
        .QN(n207) );
  DFFRX1 \mid_addr_reg[6]  ( .D(n257), .CK(clk), .RN(n367), .Q(N55), .QN(n205)
         );
  DFFRX1 \mid_data_reg[3]  ( .D(n278), .CK(clk), .RN(n364), .Q(mid_data[3]), 
        .QN(n226) );
  DFFRX1 \mid_addr_reg[5]  ( .D(n255), .CK(clk), .RN(n364), .Q(N54), .QN(n203)
         );
  DFFRX1 \mid_addr_reg[4]  ( .D(n253), .CK(clk), .RN(n365), .Q(N53), .QN(n201)
         );
  DFFRX1 \mid_addr_reg[3]  ( .D(n251), .CK(clk), .RN(n366), .Q(N52), .QN(n199)
         );
  DFFRX1 \state_reg[0]  ( .D(n286), .CK(clk), .RN(n364), .Q(n234) );
  DFFRX1 \mid_addr_reg[0]  ( .D(n273), .CK(clk), .RN(n365), .Q(N148), .QN(n221) );
  DFFRX1 \mid_addr_reg[2]  ( .D(n249), .CK(clk), .RN(n367), .Q(N51), .QN(n197)
         );
  DFFRX1 \mid_addr_reg[1]  ( .D(n247), .CK(clk), .RN(n365), .Q(N50), .QN(n195)
         );
  DFFRX1 \state_reg[1]  ( .D(n285), .CK(clk), .RN(n364), .Q(n233) );
  DFFRX1 \state_reg[2]  ( .D(n284), .CK(clk), .RN(n364), .Q(n232), .QN(n290)
         );
  DFFSX1 \gray_addr_reg[0]  ( .D(n274), .CK(clk), .SN(n367), .Q(n410), .QN(
        n222) );
  DFFSX1 \gray_addr_reg[7]  ( .D(n260), .CK(clk), .SN(n367), .Q(n403), .QN(
        n208) );
  DFFRX1 \gray_addr_reg[6]  ( .D(n258), .CK(clk), .RN(n364), .Q(n404), .QN(
        n206) );
  DFFRX1 \gray_addr_reg[2]  ( .D(n250), .CK(clk), .RN(n365), .Q(n408), .QN(
        n198) );
  DFFRX1 \gray_addr_reg[3]  ( .D(n252), .CK(clk), .RN(n366), .Q(n407), .QN(
        n200) );
  DFFRX1 \gray_addr_reg[4]  ( .D(n254), .CK(clk), .RN(n367), .Q(n406), .QN(
        n202) );
  DFFRX1 \gray_addr_reg[5]  ( .D(n256), .CK(clk), .RN(n364), .Q(n405), .QN(
        n204) );
  DFFRX1 \gray_addr_reg[8]  ( .D(n262), .CK(clk), .RN(n365), .Q(n402), .QN(
        n210) );
  DFFRX1 \gray_addr_reg[9]  ( .D(n264), .CK(clk), .RN(n365), .Q(n401), .QN(
        n212) );
  DFFRX1 \gray_addr_reg[10]  ( .D(n266), .CK(clk), .RN(n365), .Q(n400), .QN(
        n214) );
  DFFRX1 \gray_addr_reg[11]  ( .D(n268), .CK(clk), .RN(n365), .Q(n399), .QN(
        n216) );
  DFFRX1 \gray_addr_reg[12]  ( .D(n270), .CK(clk), .RN(n365), .Q(n398), .QN(
        n218) );
  DFFRX1 \gray_addr_reg[13]  ( .D(n272), .CK(clk), .RN(n365), .Q(n397), .QN(
        n220) );
  DFFRX1 \lbp_addr_reg[4]  ( .D(n353), .CK(clk), .RN(n367), .Q(n420), .QN(n330) );
  DFFRX1 gray_req_reg ( .D(n288), .CK(clk), .RN(n389), .QN(n235) );
  DFFRX1 \lbp_addr_reg[0]  ( .D(n362), .CK(clk), .RN(n367), .Q(n424), .QN(n191) );
  DFFRX1 \lbp_addr_reg[1]  ( .D(n350), .CK(clk), .RN(n367), .Q(n423), .QN(n187) );
  DFFRX1 \lbp_addr_reg[2]  ( .D(n351), .CK(clk), .RN(n367), .Q(n422), .QN(n188) );
  DFFRX1 \lbp_addr_reg[7]  ( .D(n356), .CK(clk), .RN(n367), .Q(n417), .QN(n192) );
  DFFRX1 \lbp_addr_reg[10]  ( .D(n359), .CK(clk), .RN(n366), .Q(n414), .QN(
        n189) );
  DFFRX1 \lbp_addr_reg[11]  ( .D(n360), .CK(clk), .RN(n366), .Q(n413), .QN(
        n190) );
  DFFRX1 \lbp_data_reg[0]  ( .D(N256), .CK(clk), .RN(n366), .QN(n322) );
  DFFRX1 \lbp_data_reg[1]  ( .D(N257), .CK(clk), .RN(n366), .QN(n320) );
  DFFRX1 \lbp_data_reg[2]  ( .D(N258), .CK(clk), .RN(n366), .QN(n318) );
  DFFRX1 \lbp_data_reg[3]  ( .D(N259), .CK(clk), .RN(n366), .QN(n316) );
  DFFRX1 \lbp_data_reg[4]  ( .D(N260), .CK(clk), .RN(n366), .QN(n314) );
  DFFRX1 \lbp_data_reg[5]  ( .D(N261), .CK(clk), .RN(n366), .QN(n312) );
  DFFRX1 \lbp_data_reg[6]  ( .D(N262), .CK(clk), .RN(n366), .QN(n310) );
  DFFRX1 \lbp_data_reg[7]  ( .D(N263), .CK(clk), .RN(n366), .QN(n308) );
  DFFNSRX1 lbp_valid_reg ( .D(n238), .CKN(clk), .SN(1'b1), .RN(n367), .Q(n425), 
        .QN(n194) );
  DFFRX1 \gray_addr_reg[1]  ( .D(n248), .CK(clk), .RN(n389), .Q(n409), .QN(
        n196) );
  DFFRX1 \lbp_addr_reg[13]  ( .D(mid_addr[13]), .CK(clk), .RN(n366), .Q(n411), 
        .QN(n304) );
  DFFRX1 \lbp_addr_reg[3]  ( .D(n352), .CK(clk), .RN(n367), .Q(n421), .QN(n302) );
  DFFRX1 \lbp_addr_reg[6]  ( .D(n355), .CK(clk), .RN(n367), .Q(n418), .QN(n300) );
  DFFRX1 \lbp_addr_reg[9]  ( .D(n358), .CK(clk), .RN(n366), .Q(n415), .QN(n298) );
  DFFRX1 \lbp_addr_reg[12]  ( .D(n361), .CK(clk), .RN(n366), .Q(n412), .QN(
        n296) );
  DFFRX1 \lbp_addr_reg[5]  ( .D(n354), .CK(clk), .RN(n367), .Q(n419), .QN(n294) );
  DFFRX1 \lbp_addr_reg[8]  ( .D(n357), .CK(clk), .RN(n367), .Q(n416), .QN(n292) );
  DFFRX1 finish_reg ( .D(n236), .CK(clk), .RN(n367), .Q(n426), .QN(n193) );
  DFFRX2 \state_reg[3]  ( .D(n283), .CK(clk), .RN(n364), .Q(n231) );
  OAI31X1 U174 ( .A0(n184), .A1(n395), .A2(n369), .B0(gray_req), .Y(n177) );
  CLKAND2X3 U175 ( .A(n180), .B(n363), .Y(n289) );
  BUFX12 U176 ( .A(n426), .Y(finish) );
  INVX12 U177 ( .A(n292), .Y(lbp_addr[8]) );
  INVX12 U178 ( .A(n294), .Y(lbp_addr[5]) );
  INVX12 U179 ( .A(n296), .Y(lbp_addr[12]) );
  INVX12 U180 ( .A(n298), .Y(lbp_addr[9]) );
  INVX12 U181 ( .A(n300), .Y(lbp_addr[6]) );
  INVX12 U182 ( .A(n302), .Y(lbp_addr[3]) );
  INVX12 U183 ( .A(n304), .Y(lbp_addr[13]) );
  BUFX12 U184 ( .A(n409), .Y(gray_addr[1]) );
  BUFX12 U185 ( .A(n425), .Y(lbp_valid) );
  INVX12 U186 ( .A(n308), .Y(lbp_data[7]) );
  INVX12 U187 ( .A(n310), .Y(lbp_data[6]) );
  INVX12 U188 ( .A(n312), .Y(lbp_data[5]) );
  INVX12 U189 ( .A(n314), .Y(lbp_data[4]) );
  INVX12 U190 ( .A(n316), .Y(lbp_data[3]) );
  INVX12 U191 ( .A(n318), .Y(lbp_data[2]) );
  INVX12 U192 ( .A(n320), .Y(lbp_data[1]) );
  INVX12 U193 ( .A(n322), .Y(lbp_data[0]) );
  BUFX12 U194 ( .A(n413), .Y(lbp_addr[11]) );
  BUFX12 U195 ( .A(n414), .Y(lbp_addr[10]) );
  BUFX12 U196 ( .A(n417), .Y(lbp_addr[7]) );
  BUFX12 U197 ( .A(n422), .Y(lbp_addr[2]) );
  BUFX12 U198 ( .A(n423), .Y(lbp_addr[1]) );
  BUFX12 U199 ( .A(n424), .Y(lbp_addr[0]) );
  INVX16 U200 ( .A(n235), .Y(gray_req) );
  INVX12 U201 ( .A(n330), .Y(lbp_addr[4]) );
  BUFX12 U202 ( .A(n397), .Y(gray_addr[13]) );
  BUFX12 U203 ( .A(n398), .Y(gray_addr[12]) );
  BUFX12 U204 ( .A(n399), .Y(gray_addr[11]) );
  BUFX12 U205 ( .A(n400), .Y(gray_addr[10]) );
  BUFX12 U206 ( .A(n401), .Y(gray_addr[9]) );
  BUFX12 U207 ( .A(n402), .Y(gray_addr[8]) );
  BUFX12 U208 ( .A(n405), .Y(gray_addr[5]) );
  XNOR2XL U209 ( .A(\sub_77/carry[5] ), .B(n405), .Y(N40) );
  BUFX12 U210 ( .A(n406), .Y(gray_addr[4]) );
  XNOR2XL U211 ( .A(\sub_77/carry[4] ), .B(n406), .Y(N39) );
  BUFX12 U212 ( .A(n407), .Y(gray_addr[3]) );
  XNOR2XL U213 ( .A(\sub_77/carry[3] ), .B(n407), .Y(N38) );
  BUFX12 U214 ( .A(n408), .Y(gray_addr[2]) );
  XNOR2XL U215 ( .A(\sub_77/carry[2] ), .B(n408), .Y(N37) );
  BUFX12 U216 ( .A(n404), .Y(gray_addr[6]) );
  XNOR2XL U217 ( .A(\sub_77/carry[6] ), .B(n404), .Y(N41) );
  BUFX12 U218 ( .A(n403), .Y(gray_addr[7]) );
  XOR2XL U219 ( .A(n403), .B(\sub_77/carry[7] ), .Y(N42) );
  INVX12 U220 ( .A(n222), .Y(gray_addr[0]) );
  XNOR2XL U221 ( .A(n410), .B(n409), .Y(N36) );
  XNOR2XL U222 ( .A(gray_addr[13]), .B(\sub_77/carry[13] ), .Y(N48) );
  AND2XL U223 ( .A(\sub_77/carry[7] ), .B(n403), .Y(\sub_77/carry[8] ) );
  OR2XL U224 ( .A(n409), .B(n410), .Y(\sub_77/carry[2] ) );
  OR2XL U225 ( .A(n402), .B(\sub_77/carry[8] ), .Y(\sub_77/carry[9] ) );
  OR2XL U226 ( .A(n401), .B(\sub_77/carry[9] ), .Y(\sub_77/carry[10] ) );
  OR2XL U227 ( .A(n400), .B(\sub_77/carry[10] ), .Y(\sub_77/carry[11] ) );
  OR2XL U228 ( .A(n399), .B(\sub_77/carry[11] ), .Y(\sub_77/carry[12] ) );
  OR2XL U229 ( .A(n408), .B(\sub_77/carry[2] ), .Y(\sub_77/carry[3] ) );
  OR2XL U230 ( .A(n407), .B(\sub_77/carry[3] ), .Y(\sub_77/carry[4] ) );
  OR2XL U231 ( .A(n406), .B(\sub_77/carry[4] ), .Y(\sub_77/carry[5] ) );
  OR2XL U232 ( .A(n405), .B(\sub_77/carry[5] ), .Y(\sub_77/carry[6] ) );
  OR2XL U233 ( .A(n404), .B(\sub_77/carry[6] ), .Y(\sub_77/carry[7] ) );
  OR2XL U234 ( .A(n398), .B(\sub_77/carry[12] ), .Y(\sub_77/carry[13] ) );
  XNOR2XL U235 ( .A(\sub_77/carry[10] ), .B(n400), .Y(N45) );
  XNOR2XL U236 ( .A(\sub_77/carry[11] ), .B(n399), .Y(N46) );
  XNOR2XL U237 ( .A(\sub_77/carry[12] ), .B(n398), .Y(N47) );
  XNOR2XL U238 ( .A(\sub_77/carry[8] ), .B(n402), .Y(N43) );
  XNOR2XL U239 ( .A(\sub_77/carry[9] ), .B(n401), .Y(N44) );
  CLKINVX1 U240 ( .A(n80), .Y(n371) );
  CLKBUFX3 U241 ( .A(N148), .Y(n362) );
  CLKBUFX3 U242 ( .A(mid_addr[7]), .Y(n356) );
  AND2X2 U243 ( .A(n180), .B(n393), .Y(n85) );
  INVX3 U244 ( .A(n370), .Y(n369) );
  CLKBUFX3 U245 ( .A(n93), .Y(n346) );
  AND3X2 U246 ( .A(n179), .B(n349), .C(n395), .Y(n93) );
  CLKBUFX3 U247 ( .A(n88), .Y(n347) );
  INVX3 U248 ( .A(n370), .Y(n368) );
  CLKINVX1 U249 ( .A(n135), .Y(n394) );
  CLKBUFX3 U250 ( .A(n389), .Y(n367) );
  CLKBUFX3 U251 ( .A(n389), .Y(n366) );
  CLKBUFX3 U252 ( .A(n389), .Y(n365) );
  CLKBUFX3 U253 ( .A(n389), .Y(n364) );
  CLKINVX1 U254 ( .A(\r485/GE_LT_GT_LE ), .Y(n390) );
  INVX3 U255 ( .A(n363), .Y(n393) );
  CLKBUFX3 U256 ( .A(n371), .Y(n370) );
  NOR4X1 U257 ( .A(N150), .B(n195), .C(n362), .D(n186), .Y(n179) );
  OR4X1 U258 ( .A(N152), .B(N151), .C(N154), .D(N153), .Y(n186) );
  AND2X2 U259 ( .A(n182), .B(n363), .Y(n91) );
  NOR2X1 U260 ( .A(n396), .B(n177), .Y(n181) );
  CLKINVX1 U261 ( .A(n121), .Y(n395) );
  CLKBUFX3 U262 ( .A(n391), .Y(n349) );
  CLKINVX1 U263 ( .A(n177), .Y(n391) );
  CLKBUFX3 U264 ( .A(n87), .Y(n348) );
  NOR2X1 U265 ( .A(n177), .B(n370), .Y(n87) );
  AND2X2 U266 ( .A(n183), .B(n137), .Y(n92) );
  AND2X2 U267 ( .A(n182), .B(n393), .Y(n88) );
  AND2X2 U268 ( .A(n181), .B(n290), .Y(n180) );
  AND2X2 U269 ( .A(n183), .B(n290), .Y(n90) );
  NAND2X1 U270 ( .A(n137), .B(n363), .Y(n135) );
  XNOR2X1 U271 ( .A(n290), .B(n114), .Y(n284) );
  NOR2X1 U272 ( .A(n116), .B(n396), .Y(n114) );
  NAND2X1 U273 ( .A(n363), .B(gray_req), .Y(n116) );
  NOR2X1 U274 ( .A(n395), .B(n118), .Y(n285) );
  XNOR2X1 U275 ( .A(n116), .B(n396), .Y(n118) );
  AND2X2 U276 ( .A(n137), .B(n393), .Y(n133) );
  AO21X1 U277 ( .A0(n230), .A1(gray_data[7]), .B0(n345), .Y(\r485/GE_LT_GT_LE ) );
  AOI22X1 U278 ( .A0(n388), .A1(mid_data[7]), .B0(n384), .B1(n383), .Y(n345)
         );
  CLKINVX1 U279 ( .A(gray_data[7]), .Y(n388) );
  OAI2BB2XL U280 ( .B0(n390), .B1(n129), .A0N(N262), .A1N(n129), .Y(n240) );
  OAI2BB2XL U281 ( .B0(n390), .B1(n130), .A0N(N261), .A1N(n130), .Y(n241) );
  NAND2X1 U282 ( .A(n233), .B(n394), .Y(n130) );
  OAI2BB2XL U283 ( .B0(n390), .B1(n132), .A0N(N260), .A1N(n132), .Y(n242) );
  NAND2X1 U284 ( .A(n133), .B(n233), .Y(n132) );
  OAI2BB2XL U285 ( .B0(n390), .B1(n134), .A0N(N259), .A1N(n134), .Y(n243) );
  NAND2X1 U286 ( .A(n394), .B(n396), .Y(n134) );
  OAI2BB2XL U287 ( .B0(n390), .B1(n136), .A0N(N258), .A1N(n136), .Y(n244) );
  NAND2X1 U288 ( .A(n133), .B(n396), .Y(n136) );
  OAI2BB2XL U289 ( .B0(n390), .B1(n138), .A0N(N257), .A1N(n138), .Y(n245) );
  NAND2X1 U290 ( .A(n139), .B(n363), .Y(n138) );
  OAI2BB2XL U291 ( .B0(n390), .B1(n140), .A0N(N256), .A1N(n140), .Y(n246) );
  NAND2X1 U292 ( .A(n139), .B(n393), .Y(n140) );
  AO22X1 U293 ( .A0(n395), .A1(\r485/GE_LT_GT_LE ), .B0(N263), .B1(n121), .Y(
        n239) );
  CLKINVX1 U294 ( .A(gray_data[5]), .Y(n387) );
  CLKINVX1 U295 ( .A(gray_data[3]), .Y(n386) );
  CLKINVX1 U296 ( .A(gray_data[1]), .Y(n385) );
  AOI222XL U297 ( .A0(N60), .A1(n85), .B0(N102), .B1(n86), .C0(N46), .C1(n348), 
        .Y(n98) );
  AOI222XL U298 ( .A0(N61), .A1(n85), .B0(N103), .B1(n86), .C0(N47), .C1(n348), 
        .Y(n102) );
  AOI222XL U299 ( .A0(N62), .A1(n85), .B0(N104), .B1(n86), .C0(N48), .C1(n348), 
        .Y(n106) );
  NAND4X1 U300 ( .A(n95), .B(n96), .C(n97), .D(n98), .Y(n268) );
  AOI2BB2X1 U301 ( .B0(N168), .B1(n346), .A0N(n349), .A1N(n216), .Y(n95) );
  AOI22X1 U302 ( .A0(N116), .A1(n347), .B0(N74), .B1(n289), .Y(n97) );
  AOI222XL U303 ( .A0(N144), .A1(n90), .B0(N130), .B1(n91), .C0(N88), .C1(n92), 
        .Y(n96) );
  NAND4X1 U304 ( .A(n99), .B(n100), .C(n101), .D(n102), .Y(n270) );
  AOI2BB2X1 U305 ( .B0(N169), .B1(n346), .A0N(n349), .A1N(n218), .Y(n99) );
  AOI22X1 U306 ( .A0(N117), .A1(n88), .B0(N75), .B1(n289), .Y(n101) );
  AOI222XL U307 ( .A0(N145), .A1(n90), .B0(N131), .B1(n91), .C0(N89), .C1(n92), 
        .Y(n100) );
  NAND4X1 U308 ( .A(n103), .B(n104), .C(n105), .D(n106), .Y(n272) );
  AOI2BB2X1 U309 ( .B0(N170), .B1(n346), .A0N(n349), .A1N(n220), .Y(n103) );
  AOI22X1 U310 ( .A0(N118), .A1(n88), .B0(N76), .B1(n289), .Y(n105) );
  AOI222XL U311 ( .A0(N146), .A1(n90), .B0(N132), .B1(n91), .C0(N90), .C1(n92), 
        .Y(n104) );
  AOI222XL U312 ( .A0(N57), .A1(n85), .B0(N99), .B1(n86), .C0(N43), .C1(n348), 
        .Y(n172) );
  AOI222XL U313 ( .A0(N58), .A1(n85), .B0(N100), .B1(n86), .C0(N44), .C1(n348), 
        .Y(n176) );
  AOI222XL U314 ( .A0(N59), .A1(n85), .B0(N101), .B1(n86), .C0(N45), .C1(n348), 
        .Y(n84) );
  INVX3 U315 ( .A(n233), .Y(n396) );
  NOR2X1 U316 ( .A(n232), .B(n233), .Y(n185) );
  OAI31XL U317 ( .A0(n123), .A1(n124), .A2(n125), .B0(n193), .Y(n236) );
  NAND4XL U318 ( .A(n420), .B(n421), .C(n415), .D(n416), .Y(n124) );
  NAND4XL U319 ( .A(n411), .B(n412), .C(n418), .D(n419), .Y(n125) );
  NAND4BX1 U320 ( .AN(n194), .B(n192), .C(n191), .D(n126), .Y(n123) );
  NAND4X1 U321 ( .A(n169), .B(n170), .C(n171), .D(n172), .Y(n262) );
  AOI2BB2X1 U322 ( .B0(N165), .B1(n346), .A0N(n349), .A1N(n210), .Y(n169) );
  AOI22X1 U323 ( .A0(N113), .A1(n347), .B0(N71), .B1(n289), .Y(n171) );
  AOI222XL U324 ( .A0(N141), .A1(n90), .B0(N127), .B1(n91), .C0(N85), .C1(n92), 
        .Y(n170) );
  NAND4X1 U325 ( .A(n173), .B(n174), .C(n175), .D(n176), .Y(n264) );
  AOI2BB2X1 U326 ( .B0(N166), .B1(n346), .A0N(n349), .A1N(n212), .Y(n173) );
  AOI22X1 U327 ( .A0(N114), .A1(n347), .B0(N72), .B1(n289), .Y(n175) );
  AOI222XL U328 ( .A0(N142), .A1(n90), .B0(N128), .B1(n91), .C0(N86), .C1(n92), 
        .Y(n174) );
  NAND4X1 U329 ( .A(n81), .B(n82), .C(n83), .D(n84), .Y(n266) );
  AOI2BB2X1 U330 ( .B0(N167), .B1(n346), .A0N(n349), .A1N(n214), .Y(n81) );
  AOI22X1 U331 ( .A0(N115), .A1(n88), .B0(N73), .B1(n289), .Y(n83) );
  AOI222XL U332 ( .A0(N143), .A1(n90), .B0(N129), .B1(n91), .C0(N87), .C1(n92), 
        .Y(n82) );
  OAI21XL U333 ( .A0(n194), .A1(n127), .B0(n370), .Y(n238) );
  NOR4X1 U334 ( .A(n231), .B(n232), .C(n363), .D(n396), .Y(n127) );
  NOR3BXL U335 ( .AN(n185), .B(n231), .C(n393), .Y(n80) );
  CLKBUFX3 U336 ( .A(N50), .Y(n350) );
  CLKBUFX3 U337 ( .A(N51), .Y(n351) );
  CLKBUFX3 U338 ( .A(n234), .Y(n363) );
  AOI222XL U339 ( .A0(n207), .A1(n85), .B0(N98), .B1(n86), .C0(N42), .C1(n348), 
        .Y(n168) );
  AOI222XL U340 ( .A0(n355), .A1(n85), .B0(N97), .B1(n86), .C0(N41), .C1(n348), 
        .Y(n164) );
  NAND4X1 U341 ( .A(n165), .B(n166), .C(n167), .D(n168), .Y(n260) );
  AOI2BB2X1 U342 ( .B0(N164), .B1(n346), .A0N(n349), .A1N(n208), .Y(n165) );
  AOI22X1 U343 ( .A0(N112), .A1(n347), .B0(N70), .B1(n289), .Y(n167) );
  AOI222XL U344 ( .A0(N140), .A1(n90), .B0(n207), .B1(n91), .C0(N84), .C1(n92), 
        .Y(n166) );
  NAND4X1 U345 ( .A(n161), .B(n162), .C(n163), .D(n164), .Y(n258) );
  AOI22X1 U346 ( .A0(N111), .A1(n347), .B0(N69), .B1(n289), .Y(n163) );
  AOI2BB2X1 U347 ( .B0(N163), .B1(n346), .A0N(n349), .A1N(n206), .Y(n161) );
  AOI222XL U348 ( .A0(N139), .A1(n90), .B0(n355), .B1(n91), .C0(N83), .C1(n92), 
        .Y(n162) );
  OAI2BB2XL U349 ( .B0(n223), .B1(n368), .A0N(gray_data[0]), .A1N(n368), .Y(
        n275) );
  OAI2BB2XL U350 ( .B0(n224), .B1(n368), .A0N(gray_data[1]), .A1N(n368), .Y(
        n276) );
  OAI2BB2XL U351 ( .B0(n225), .B1(n368), .A0N(gray_data[2]), .A1N(n369), .Y(
        n277) );
  OAI2BB2XL U352 ( .B0(n226), .B1(n368), .A0N(gray_data[3]), .A1N(n368), .Y(
        n278) );
  OAI2BB2XL U353 ( .B0(n227), .B1(n368), .A0N(gray_data[4]), .A1N(n369), .Y(
        n279) );
  OAI2BB2XL U354 ( .B0(n228), .B1(n368), .A0N(gray_data[5]), .A1N(n369), .Y(
        n280) );
  OAI2BB2XL U355 ( .B0(n229), .B1(n368), .A0N(gray_data[6]), .A1N(n369), .Y(
        n281) );
  OAI2BB2XL U356 ( .B0(n230), .B1(n368), .A0N(gray_data[7]), .A1N(n369), .Y(
        n282) );
  CLKBUFX3 U357 ( .A(N52), .Y(n352) );
  CLKBUFX3 U358 ( .A(N53), .Y(n353) );
  CLKBUFX3 U359 ( .A(N54), .Y(n354) );
  OR2X1 U360 ( .A(gray_ready), .B(gray_req), .Y(n288) );
  AOI222XL U361 ( .A0(n350), .A1(n85), .B0(N92), .B1(n86), .C0(N36), .C1(n348), 
        .Y(n144) );
  AOI222XL U362 ( .A0(n352), .A1(n85), .B0(N94), .B1(n86), .C0(N38), .C1(n348), 
        .Y(n152) );
  AOI222XL U363 ( .A0(n353), .A1(n85), .B0(N95), .B1(n86), .C0(N39), .C1(n348), 
        .Y(n156) );
  AOI222XL U364 ( .A0(n354), .A1(n85), .B0(N96), .B1(n86), .C0(N40), .C1(n348), 
        .Y(n160) );
  NAND4X1 U365 ( .A(n141), .B(n142), .C(n143), .D(n144), .Y(n248) );
  AOI22X1 U366 ( .A0(N106), .A1(n88), .B0(N64), .B1(n289), .Y(n143) );
  AOI222XL U367 ( .A0(N134), .A1(n90), .B0(n350), .B1(n91), .C0(N78), .C1(n92), 
        .Y(n142) );
  AOI2BB2X1 U368 ( .B0(N158), .B1(n346), .A0N(n349), .A1N(n196), .Y(n141) );
  NAND4X1 U369 ( .A(n149), .B(n150), .C(n151), .D(n152), .Y(n252) );
  AOI22X1 U370 ( .A0(N108), .A1(n347), .B0(N66), .B1(n289), .Y(n151) );
  AOI222XL U371 ( .A0(N136), .A1(n90), .B0(n352), .B1(n91), .C0(N80), .C1(n92), 
        .Y(n150) );
  AOI2BB2X1 U372 ( .B0(N160), .B1(n346), .A0N(n349), .A1N(n200), .Y(n149) );
  NAND4X1 U373 ( .A(n153), .B(n154), .C(n155), .D(n156), .Y(n254) );
  AOI22X1 U374 ( .A0(N109), .A1(n347), .B0(N67), .B1(n289), .Y(n155) );
  AOI222XL U375 ( .A0(N137), .A1(n90), .B0(n353), .B1(n91), .C0(N81), .C1(n92), 
        .Y(n154) );
  AOI2BB2X1 U376 ( .B0(N161), .B1(n346), .A0N(n349), .A1N(n202), .Y(n153) );
  NAND4X1 U377 ( .A(n157), .B(n158), .C(n159), .D(n160), .Y(n256) );
  AOI22X1 U378 ( .A0(N110), .A1(n347), .B0(N68), .B1(n289), .Y(n159) );
  AOI2BB2X1 U379 ( .B0(N162), .B1(n346), .A0N(n349), .A1N(n204), .Y(n157) );
  AOI222XL U380 ( .A0(N138), .A1(n90), .B0(n354), .B1(n91), .C0(N82), .C1(n92), 
        .Y(n158) );
  CLKBUFX3 U381 ( .A(N55), .Y(n355) );
  OAI21XL U382 ( .A0(n231), .A1(n185), .B0(n129), .Y(n184) );
  AOI222XL U383 ( .A0(n362), .A1(n85), .B0(N91), .B1(n86), .C0(n222), .C1(n348), .Y(n110) );
  AOI222XL U384 ( .A0(n351), .A1(n85), .B0(N93), .B1(n86), .C0(N37), .C1(n348), 
        .Y(n148) );
  NOR3X1 U385 ( .A(n363), .B(n233), .C(n177), .Y(n183) );
  NAND3X1 U386 ( .A(n363), .B(n185), .C(n231), .Y(n121) );
  NAND3X1 U387 ( .A(n185), .B(n393), .C(n231), .Y(n129) );
  NAND4X1 U388 ( .A(n145), .B(n146), .C(n147), .D(n148), .Y(n250) );
  AOI22X1 U389 ( .A0(N107), .A1(n88), .B0(N65), .B1(n289), .Y(n147) );
  AOI222XL U390 ( .A0(N135), .A1(n90), .B0(n351), .B1(n91), .C0(N79), .C1(n92), 
        .Y(n146) );
  AOI2BB2X1 U391 ( .B0(N159), .B1(n346), .A0N(n349), .A1N(n198), .Y(n145) );
  NAND4X1 U392 ( .A(n107), .B(n108), .C(n109), .D(n110), .Y(n274) );
  AOI22X1 U393 ( .A0(n221), .A1(n88), .B0(n221), .B1(n289), .Y(n109) );
  AOI222XL U394 ( .A0(n221), .A1(n90), .B0(n362), .B1(n91), .C0(N77), .C1(n92), 
        .Y(n108) );
  AOI2BB2X1 U395 ( .B0(n221), .B1(n346), .A0N(n349), .A1N(n222), .Y(n107) );
  AND2X2 U396 ( .A(n178), .B(n349), .Y(n86) );
  OAI22XL U397 ( .A0(n179), .A1(n121), .B0(n233), .B1(n135), .Y(n178) );
  CLKBUFX3 U398 ( .A(mid_addr[9]), .Y(n358) );
  CLKBUFX3 U399 ( .A(mid_addr[8]), .Y(n357) );
  AND2X2 U400 ( .A(n181), .B(n232), .Y(n182) );
  NOR2X1 U401 ( .A(n290), .B(n231), .Y(n137) );
  CLKBUFX3 U402 ( .A(mid_addr[10]), .Y(n359) );
  CLKBUFX3 U403 ( .A(mid_addr[11]), .Y(n360) );
  NOR4X1 U404 ( .A(n187), .B(n188), .C(n189), .D(n190), .Y(n126) );
  NOR3X1 U405 ( .A(n232), .B(n231), .C(n396), .Y(n139) );
  OAI22XL U406 ( .A0(n204), .A1(n371), .B0(n203), .B1(n368), .Y(n255) );
  OAI22XL U407 ( .A0(n208), .A1(n371), .B0(n207), .B1(n368), .Y(n259) );
  OAI22XL U408 ( .A0(n210), .A1(n371), .B0(n209), .B1(n368), .Y(n261) );
  OAI22XL U409 ( .A0(n212), .A1(n371), .B0(n211), .B1(n368), .Y(n263) );
  OAI22XL U410 ( .A0(n214), .A1(n371), .B0(n213), .B1(n368), .Y(n265) );
  OAI22XL U411 ( .A0(n196), .A1(n371), .B0(n195), .B1(n369), .Y(n247) );
  OAI22XL U412 ( .A0(n198), .A1(n370), .B0(n197), .B1(n369), .Y(n249) );
  OAI22XL U413 ( .A0(n200), .A1(n370), .B0(n199), .B1(n369), .Y(n251) );
  OAI22XL U414 ( .A0(n202), .A1(n370), .B0(n201), .B1(n369), .Y(n253) );
  OAI22XL U415 ( .A0(n206), .A1(n370), .B0(n205), .B1(n369), .Y(n257) );
  OAI22XL U416 ( .A0(n216), .A1(n370), .B0(n215), .B1(n369), .Y(n267) );
  OAI22XL U417 ( .A0(n218), .A1(n370), .B0(n217), .B1(n369), .Y(n269) );
  OAI22XL U418 ( .A0(n220), .A1(n370), .B0(n219), .B1(n369), .Y(n271) );
  OAI22XL U419 ( .A0(n222), .A1(n370), .B0(n221), .B1(n369), .Y(n273) );
  NOR2X1 U420 ( .A(n395), .B(n112), .Y(n283) );
  XOR2X1 U421 ( .A(n113), .B(n231), .Y(n112) );
  NAND2X1 U422 ( .A(n114), .B(n232), .Y(n113) );
  NAND2X1 U423 ( .A(n120), .B(n121), .Y(n286) );
  XNOR2X1 U424 ( .A(n393), .B(n235), .Y(n120) );
  CLKBUFX3 U425 ( .A(mid_addr[12]), .Y(n361) );
  CLKINVX1 U426 ( .A(reset), .Y(n389) );
  XNOR2X1 U427 ( .A(mid_addr[13]), .B(\sub_80/carry [13]), .Y(N62) );
  OR2X1 U428 ( .A(n361), .B(\sub_80/carry [12]), .Y(\sub_80/carry [13]) );
  XNOR2X1 U429 ( .A(\sub_80/carry [12]), .B(n361), .Y(N61) );
  OR2X1 U430 ( .A(n360), .B(\sub_80/carry [11]), .Y(\sub_80/carry [12]) );
  XNOR2X1 U431 ( .A(\sub_80/carry [11]), .B(n360), .Y(N60) );
  OR2X1 U432 ( .A(n359), .B(\sub_80/carry [10]), .Y(\sub_80/carry [11]) );
  XNOR2X1 U433 ( .A(\sub_80/carry [10]), .B(n359), .Y(N59) );
  OR2X1 U434 ( .A(n358), .B(\sub_80/carry [9]), .Y(\sub_80/carry [10]) );
  XNOR2X1 U435 ( .A(\sub_80/carry [9]), .B(n358), .Y(N58) );
  OR2X1 U436 ( .A(n357), .B(n356), .Y(\sub_80/carry [9]) );
  XNOR2X1 U437 ( .A(n356), .B(n357), .Y(N57) );
  XNOR2X1 U438 ( .A(mid_addr[13]), .B(\sub_83/carry[13] ), .Y(N76) );
  OR2X1 U439 ( .A(n361), .B(\sub_83/carry[12] ), .Y(\sub_83/carry[13] ) );
  XNOR2X1 U440 ( .A(\sub_83/carry[12] ), .B(n361), .Y(N75) );
  OR2X1 U441 ( .A(n360), .B(\sub_83/carry[11] ), .Y(\sub_83/carry[12] ) );
  XNOR2X1 U442 ( .A(\sub_83/carry[11] ), .B(n360), .Y(N74) );
  OR2X1 U443 ( .A(n359), .B(\sub_83/carry[10] ), .Y(\sub_83/carry[11] ) );
  XNOR2X1 U444 ( .A(\sub_83/carry[10] ), .B(n359), .Y(N73) );
  OR2X1 U445 ( .A(n358), .B(\sub_83/carry[9] ), .Y(\sub_83/carry[10] ) );
  XNOR2X1 U446 ( .A(\sub_83/carry[9] ), .B(n358), .Y(N72) );
  OR2X1 U447 ( .A(n357), .B(\sub_83/carry[8] ), .Y(\sub_83/carry[9] ) );
  XNOR2X1 U448 ( .A(\sub_83/carry[8] ), .B(n357), .Y(N71) );
  OR2X1 U449 ( .A(n356), .B(\sub_83/carry[7] ), .Y(\sub_83/carry[8] ) );
  XNOR2X1 U450 ( .A(\sub_83/carry[7] ), .B(n356), .Y(N70) );
  AND2X1 U451 ( .A(\sub_83/carry[6] ), .B(n355), .Y(\sub_83/carry[7] ) );
  XOR2X1 U452 ( .A(n355), .B(\sub_83/carry[6] ), .Y(N69) );
  AND2X1 U453 ( .A(\sub_83/carry[5] ), .B(n354), .Y(\sub_83/carry[6] ) );
  XOR2X1 U454 ( .A(n354), .B(\sub_83/carry[5] ), .Y(N68) );
  AND2X1 U455 ( .A(\sub_83/carry[4] ), .B(n353), .Y(\sub_83/carry[5] ) );
  XOR2X1 U456 ( .A(n353), .B(\sub_83/carry[4] ), .Y(N67) );
  AND2X1 U457 ( .A(\sub_83/carry[3] ), .B(n352), .Y(\sub_83/carry[4] ) );
  XOR2X1 U458 ( .A(n352), .B(\sub_83/carry[3] ), .Y(N66) );
  AND2X1 U459 ( .A(\sub_83/carry[2] ), .B(n351), .Y(\sub_83/carry[3] ) );
  XOR2X1 U460 ( .A(n351), .B(\sub_83/carry[2] ), .Y(N65) );
  AND2X1 U461 ( .A(n362), .B(n350), .Y(\sub_83/carry[2] ) );
  XOR2X1 U462 ( .A(n350), .B(n362), .Y(N64) );
  XOR2X1 U463 ( .A(mid_addr[13]), .B(\add_92/carry[13] ), .Y(N118) );
  AND2X1 U464 ( .A(\add_92/carry[12] ), .B(n361), .Y(\add_92/carry[13] ) );
  XOR2X1 U465 ( .A(n361), .B(\add_92/carry[12] ), .Y(N117) );
  AND2X1 U466 ( .A(\add_92/carry[11] ), .B(n360), .Y(\add_92/carry[12] ) );
  XOR2X1 U467 ( .A(n360), .B(\add_92/carry[11] ), .Y(N116) );
  AND2X1 U468 ( .A(\add_92/carry[10] ), .B(n359), .Y(\add_92/carry[11] ) );
  XOR2X1 U469 ( .A(n359), .B(\add_92/carry[10] ), .Y(N115) );
  AND2X1 U470 ( .A(\add_92/carry[9] ), .B(n358), .Y(\add_92/carry[10] ) );
  XOR2X1 U471 ( .A(n358), .B(\add_92/carry[9] ), .Y(N114) );
  AND2X1 U472 ( .A(\add_92/carry[8] ), .B(n357), .Y(\add_92/carry[9] ) );
  XOR2X1 U473 ( .A(n357), .B(\add_92/carry[8] ), .Y(N113) );
  AND2X1 U474 ( .A(\add_92/carry[7] ), .B(n356), .Y(\add_92/carry[8] ) );
  XOR2X1 U475 ( .A(n356), .B(\add_92/carry[7] ), .Y(N112) );
  OR2X1 U476 ( .A(n355), .B(\add_92/carry[6] ), .Y(\add_92/carry[7] ) );
  XNOR2X1 U477 ( .A(\add_92/carry[6] ), .B(n355), .Y(N111) );
  OR2X1 U478 ( .A(n354), .B(\add_92/carry[5] ), .Y(\add_92/carry[6] ) );
  XNOR2X1 U479 ( .A(\add_92/carry[5] ), .B(n354), .Y(N110) );
  OR2X1 U480 ( .A(n353), .B(\add_92/carry[4] ), .Y(\add_92/carry[5] ) );
  XNOR2X1 U481 ( .A(\add_92/carry[4] ), .B(n353), .Y(N109) );
  OR2X1 U482 ( .A(n352), .B(\add_92/carry[3] ), .Y(\add_92/carry[4] ) );
  XNOR2X1 U483 ( .A(\add_92/carry[3] ), .B(n352), .Y(N108) );
  OR2X1 U484 ( .A(n351), .B(\add_92/carry[2] ), .Y(\add_92/carry[3] ) );
  XNOR2X1 U485 ( .A(\add_92/carry[2] ), .B(n351), .Y(N107) );
  OR2X1 U486 ( .A(n350), .B(n362), .Y(\add_92/carry[2] ) );
  XNOR2X1 U487 ( .A(n362), .B(n350), .Y(N106) );
  XOR2X1 U488 ( .A(mid_addr[13]), .B(\add_95/carry [13]), .Y(N132) );
  AND2X1 U489 ( .A(\add_95/carry [12]), .B(n361), .Y(\add_95/carry [13]) );
  XOR2X1 U490 ( .A(n361), .B(\add_95/carry [12]), .Y(N131) );
  AND2X1 U491 ( .A(\add_95/carry [11]), .B(n360), .Y(\add_95/carry [12]) );
  XOR2X1 U492 ( .A(n360), .B(\add_95/carry [11]), .Y(N130) );
  AND2X1 U493 ( .A(\add_95/carry [10]), .B(n359), .Y(\add_95/carry [11]) );
  XOR2X1 U494 ( .A(n359), .B(\add_95/carry [10]), .Y(N129) );
  AND2X1 U495 ( .A(\add_95/carry [9]), .B(n358), .Y(\add_95/carry [10]) );
  XOR2X1 U496 ( .A(n358), .B(\add_95/carry [9]), .Y(N128) );
  AND2X1 U497 ( .A(n356), .B(n357), .Y(\add_95/carry [9]) );
  XOR2X1 U498 ( .A(n357), .B(n356), .Y(N127) );
  XOR2X1 U499 ( .A(mid_addr[13]), .B(\add_98/carry[13] ), .Y(N146) );
  AND2X1 U500 ( .A(\add_98/carry[12] ), .B(n361), .Y(\add_98/carry[13] ) );
  XOR2X1 U501 ( .A(n361), .B(\add_98/carry[12] ), .Y(N145) );
  AND2X1 U502 ( .A(\add_98/carry[11] ), .B(n360), .Y(\add_98/carry[12] ) );
  XOR2X1 U503 ( .A(n360), .B(\add_98/carry[11] ), .Y(N144) );
  AND2X1 U504 ( .A(\add_98/carry[10] ), .B(n359), .Y(\add_98/carry[11] ) );
  XOR2X1 U505 ( .A(n359), .B(\add_98/carry[10] ), .Y(N143) );
  AND2X1 U506 ( .A(\add_98/carry[9] ), .B(n358), .Y(\add_98/carry[10] ) );
  XOR2X1 U507 ( .A(n358), .B(\add_98/carry[9] ), .Y(N142) );
  AND2X1 U508 ( .A(\add_98/carry[8] ), .B(n357), .Y(\add_98/carry[9] ) );
  XOR2X1 U509 ( .A(n357), .B(\add_98/carry[8] ), .Y(N141) );
  OR2X1 U510 ( .A(n356), .B(\add_98/carry[7] ), .Y(\add_98/carry[8] ) );
  XNOR2X1 U511 ( .A(\add_98/carry[7] ), .B(n356), .Y(N140) );
  AND2X1 U512 ( .A(\add_98/carry[6] ), .B(n355), .Y(\add_98/carry[7] ) );
  XOR2X1 U513 ( .A(n355), .B(\add_98/carry[6] ), .Y(N139) );
  AND2X1 U514 ( .A(\add_98/carry[5] ), .B(n354), .Y(\add_98/carry[6] ) );
  XOR2X1 U515 ( .A(n354), .B(\add_98/carry[5] ), .Y(N138) );
  AND2X1 U516 ( .A(\add_98/carry[4] ), .B(n353), .Y(\add_98/carry[5] ) );
  XOR2X1 U517 ( .A(n353), .B(\add_98/carry[4] ), .Y(N137) );
  AND2X1 U518 ( .A(\add_98/carry[3] ), .B(n352), .Y(\add_98/carry[4] ) );
  XOR2X1 U519 ( .A(n352), .B(\add_98/carry[3] ), .Y(N136) );
  AND2X1 U520 ( .A(\add_98/carry[2] ), .B(n351), .Y(\add_98/carry[3] ) );
  XOR2X1 U521 ( .A(n351), .B(\add_98/carry[2] ), .Y(N135) );
  AND2X1 U522 ( .A(n362), .B(n350), .Y(\add_98/carry[2] ) );
  XOR2X1 U523 ( .A(n350), .B(n362), .Y(N134) );
  XOR2X1 U524 ( .A(n355), .B(\sub_101/carry [6]), .Y(N154) );
  AND2X1 U525 ( .A(\sub_101/carry [5]), .B(n354), .Y(\sub_101/carry [6]) );
  XOR2X1 U526 ( .A(n354), .B(\sub_101/carry [5]), .Y(N153) );
  AND2X1 U527 ( .A(\sub_101/carry [4]), .B(n353), .Y(\sub_101/carry [5]) );
  XOR2X1 U528 ( .A(n353), .B(\sub_101/carry [4]), .Y(N152) );
  AND2X1 U529 ( .A(\sub_101/carry [3]), .B(n352), .Y(\sub_101/carry [4]) );
  XOR2X1 U530 ( .A(n352), .B(\sub_101/carry [3]), .Y(N151) );
  AND2X1 U531 ( .A(n350), .B(n351), .Y(\sub_101/carry [3]) );
  XOR2X1 U532 ( .A(n351), .B(n350), .Y(N150) );
  XOR2X1 U533 ( .A(mid_addr[13]), .B(\add_102/carry[13] ), .Y(N170) );
  AND2X1 U534 ( .A(\add_102/carry[12] ), .B(n361), .Y(\add_102/carry[13] ) );
  XOR2X1 U535 ( .A(n361), .B(\add_102/carry[12] ), .Y(N169) );
  AND2X1 U536 ( .A(\add_102/carry[11] ), .B(n360), .Y(\add_102/carry[12] ) );
  XOR2X1 U537 ( .A(n360), .B(\add_102/carry[11] ), .Y(N168) );
  AND2X1 U538 ( .A(\add_102/carry[10] ), .B(n359), .Y(\add_102/carry[11] ) );
  XOR2X1 U539 ( .A(n359), .B(\add_102/carry[10] ), .Y(N167) );
  AND2X1 U540 ( .A(\add_102/carry[9] ), .B(n358), .Y(\add_102/carry[10] ) );
  XOR2X1 U541 ( .A(n358), .B(\add_102/carry[9] ), .Y(N166) );
  AND2X1 U542 ( .A(\add_102/carry[8] ), .B(n357), .Y(\add_102/carry[9] ) );
  XOR2X1 U543 ( .A(n357), .B(\add_102/carry[8] ), .Y(N165) );
  AND2X1 U544 ( .A(\add_102/carry[7] ), .B(n356), .Y(\add_102/carry[8] ) );
  XOR2X1 U545 ( .A(n356), .B(\add_102/carry[7] ), .Y(N164) );
  AND2X1 U546 ( .A(\add_102/carry[6] ), .B(n355), .Y(\add_102/carry[7] ) );
  XOR2X1 U547 ( .A(n355), .B(\add_102/carry[6] ), .Y(N163) );
  AND2X1 U548 ( .A(\add_102/carry[5] ), .B(n354), .Y(\add_102/carry[6] ) );
  XOR2X1 U549 ( .A(n354), .B(\add_102/carry[5] ), .Y(N162) );
  AND2X1 U550 ( .A(\add_102/carry[4] ), .B(n353), .Y(\add_102/carry[5] ) );
  XOR2X1 U551 ( .A(n353), .B(\add_102/carry[4] ), .Y(N161) );
  AND2X1 U552 ( .A(\add_102/carry[3] ), .B(n352), .Y(\add_102/carry[4] ) );
  XOR2X1 U553 ( .A(n352), .B(\add_102/carry[3] ), .Y(N160) );
  AND2X1 U554 ( .A(\add_102/carry[2] ), .B(n351), .Y(\add_102/carry[3] ) );
  XOR2X1 U555 ( .A(n351), .B(\add_102/carry[2] ), .Y(N159) );
  OR2X1 U556 ( .A(n350), .B(n362), .Y(\add_102/carry[2] ) );
  XNOR2X1 U557 ( .A(n362), .B(n350), .Y(N158) );
  NAND2BX1 U558 ( .AN(mid_data[4]), .B(gray_data[4]), .Y(n372) );
  OAI222XL U559 ( .A0(mid_data[5]), .A1(n387), .B0(mid_data[5]), .B1(n372), 
        .C0(n387), .C1(n372), .Y(n373) );
  OAI222XL U560 ( .A0(gray_data[6]), .A1(n373), .B0(n229), .B1(n373), .C0(
        gray_data[6]), .C1(n229), .Y(n384) );
  NOR2BX1 U561 ( .AN(mid_data[4]), .B(gray_data[4]), .Y(n374) );
  OAI22XL U562 ( .A0(n374), .A1(n387), .B0(mid_data[5]), .B1(n374), .Y(n382)
         );
  NAND2BX1 U563 ( .AN(mid_data[2]), .B(gray_data[2]), .Y(n380) );
  OAI2BB2XL U564 ( .B0(gray_data[0]), .B1(n223), .A0N(n385), .A1N(mid_data[1]), 
        .Y(n375) );
  OAI21XL U565 ( .A0(mid_data[1]), .A1(n385), .B0(n375), .Y(n378) );
  NOR2BX1 U566 ( .AN(mid_data[2]), .B(gray_data[2]), .Y(n376) );
  OAI22XL U567 ( .A0(n376), .A1(n386), .B0(mid_data[3]), .B1(n376), .Y(n377)
         );
  AOI2BB2X1 U568 ( .B0(n378), .B1(n377), .A0N(n380), .A1N(n386), .Y(n379) );
  OAI221XL U569 ( .A0(mid_data[3]), .A1(n380), .B0(mid_data[3]), .B1(n386), 
        .C0(n379), .Y(n381) );
  OAI211X1 U570 ( .A0(gray_data[6]), .A1(n229), .B0(n382), .C0(n381), .Y(n383)
         );
endmodule

