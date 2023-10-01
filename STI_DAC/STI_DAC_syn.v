/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri Jan 13 14:11:45 2023
/////////////////////////////////////////////////////////////


module STI_DAC ( clk, reset, load, pi_data, pi_length, pi_fill, pi_msb, pi_low, 
        pi_end, so_data, so_valid, oem_finish, oem_dataout, oem_addr, odd1_wr, 
        odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr );
  input [15:0] pi_data;
  input [1:0] pi_length;
  output [7:0] oem_dataout;
  output [4:0] oem_addr;
  input clk, reset, load, pi_fill, pi_msb, pi_low, pi_end;
  output so_data, so_valid, oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr,
         even1_wr, even2_wr, even3_wr, even4_wr;
  wire   N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, \ns[0] , \a[5] ,
         N159, N166, N167, N168, N169, N170, N172, N173, N174, N175, N176,
         N201, N202, switch, N215, N216, N217, N218, N248, pre_odd, N335, N336,
         N337, N338, N339, N340, N341, N342, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n167, n168, n169, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n217, n218, n219, n220, n221, n222, n223, n224, n225, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n282, n283,
         n284, n285, n286, n287, n288, n289, n291, n293, n304, n306, n308,
         n310, n312, n314, n316, n318, n320, n322, n324, n326, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542;
  wire   [5:0] length;
  wire   [31:0] temp_data;
  wire   [5:2] \add_122/carry ;
  wire   [4:2] \r428/carry ;

  DFFRX1 \mem_ctr_reg[0]  ( .D(n230), .CK(clk), .RN(n404), .Q(n539), .QN(n288)
         );
  DFFRX1 \mem_ctr_reg[1]  ( .D(n229), .CK(clk), .RN(n404), .Q(n540) );
  DFFRX1 \temp_data_reg[1]  ( .D(n280), .CK(clk), .RN(n400), .Q(temp_data[1]), 
        .QN(n172) );
  DFFRX1 \temp_data_reg[3]  ( .D(n278), .CK(clk), .RN(n400), .Q(temp_data[3]), 
        .QN(n174) );
  DFFRX1 \temp_data_reg[5]  ( .D(n276), .CK(clk), .RN(n400), .Q(temp_data[5]), 
        .QN(n176) );
  DFFRX1 \temp_data_reg[7]  ( .D(n274), .CK(clk), .RN(n400), .Q(temp_data[7]), 
        .QN(n178) );
  DFFRX1 \temp_data_reg[17]  ( .D(n264), .CK(clk), .RN(n401), .Q(temp_data[17]), .QN(n181) );
  DFFRX1 \temp_data_reg[19]  ( .D(n262), .CK(clk), .RN(n401), .Q(temp_data[19]), .QN(n183) );
  DFFRX1 \temp_data_reg[21]  ( .D(n260), .CK(clk), .RN(n401), .Q(temp_data[21]), .QN(n185) );
  DFFRX1 \temp_data_reg[23]  ( .D(n258), .CK(clk), .RN(n401), .Q(temp_data[23]), .QN(n187) );
  DFFRX1 \temp_data_reg[25]  ( .D(n256), .CK(clk), .RN(n401), .Q(temp_data[25]), .QN(n189) );
  DFFRX1 \temp_data_reg[27]  ( .D(n254), .CK(clk), .RN(n402), .Q(temp_data[27]), .QN(n191) );
  DFFRX1 \temp_data_reg[29]  ( .D(n252), .CK(clk), .RN(n402), .Q(temp_data[29]), .QN(n193) );
  DFFRX1 \temp_data_reg[31]  ( .D(n250), .CK(clk), .RN(n402), .Q(temp_data[31]), .QN(n195) );
  DFFRX1 \temp_data_reg[9]  ( .D(n248), .CK(clk), .RN(n402), .Q(temp_data[9]), 
        .QN(n197) );
  DFFRX1 \temp_data_reg[11]  ( .D(n246), .CK(clk), .RN(n402), .Q(temp_data[11]), .QN(n199) );
  DFFRX1 \temp_data_reg[13]  ( .D(n244), .CK(clk), .RN(n402), .Q(temp_data[13]), .QN(n201) );
  DFFRX1 \temp_data_reg[15]  ( .D(n242), .CK(clk), .RN(n403), .Q(temp_data[15]), .QN(n203) );
  DFFRX1 \temp_data_reg[2]  ( .D(n279), .CK(clk), .RN(n400), .Q(temp_data[2]), 
        .QN(n173) );
  DFFRX1 \temp_data_reg[4]  ( .D(n277), .CK(clk), .RN(n400), .Q(temp_data[4]), 
        .QN(n175) );
  DFFRX1 \temp_data_reg[6]  ( .D(n275), .CK(clk), .RN(n400), .Q(temp_data[6]), 
        .QN(n177) );
  DFFRX1 \temp_data_reg[0]  ( .D(n273), .CK(clk), .RN(n400), .Q(temp_data[0]), 
        .QN(n179) );
  DFFRX1 \temp_data_reg[16]  ( .D(n265), .CK(clk), .RN(n401), .Q(temp_data[16]), .QN(n180) );
  DFFRX1 \temp_data_reg[18]  ( .D(n263), .CK(clk), .RN(n401), .Q(temp_data[18]), .QN(n182) );
  DFFRX1 \temp_data_reg[20]  ( .D(n261), .CK(clk), .RN(n401), .Q(temp_data[20]), .QN(n184) );
  DFFRX1 \temp_data_reg[22]  ( .D(n259), .CK(clk), .RN(n401), .Q(temp_data[22]), .QN(n186) );
  DFFRX1 \temp_data_reg[24]  ( .D(n257), .CK(clk), .RN(n401), .Q(temp_data[24]), .QN(n188) );
  DFFRX1 \temp_data_reg[26]  ( .D(n255), .CK(clk), .RN(n401), .Q(temp_data[26]), .QN(n190) );
  DFFRX1 \temp_data_reg[28]  ( .D(n253), .CK(clk), .RN(n402), .Q(temp_data[28]), .QN(n192) );
  DFFRX1 \temp_data_reg[30]  ( .D(n251), .CK(clk), .RN(n402), .Q(temp_data[30]), .QN(n194) );
  DFFRX1 \temp_data_reg[8]  ( .D(n249), .CK(clk), .RN(n402), .Q(temp_data[8]), 
        .QN(n196) );
  DFFRX1 \temp_data_reg[10]  ( .D(n247), .CK(clk), .RN(n402), .Q(temp_data[10]), .QN(n198) );
  DFFRX1 \temp_data_reg[12]  ( .D(n245), .CK(clk), .RN(n402), .Q(temp_data[12]), .QN(n200) );
  DFFRX1 \temp_data_reg[14]  ( .D(n243), .CK(clk), .RN(n402), .Q(temp_data[14]), .QN(n202) );
  DFFSX1 \ctr8_reg[0]  ( .D(n266), .CK(clk), .SN(n405), .Q(n535), .QN(n286) );
  DFFRX1 go_or_stop_reg ( .D(n269), .CK(clk), .RN(n400), .Q(n533) );
  DFFSX1 \ctr8_reg[1]  ( .D(n268), .CK(clk), .SN(n405), .Q(n536), .QN(n283) );
  DFFRX1 \length_reg[4]  ( .D(n271), .CK(clk), .RN(n400), .Q(length[4]), .QN(
        n168) );
  DFFRX1 \length_reg[5]  ( .D(n272), .CK(clk), .RN(n400), .Q(length[5]), .QN(
        n169) );
  DFFRX1 \length_reg[3]  ( .D(n270), .CK(clk), .RN(n400), .QN(n167) );
  DFFRX2 \a_reg[2]  ( .D(n237), .CK(clk), .RN(n403), .Q(N51), .QN(n158) );
  DFFRX1 \a_reg[0]  ( .D(n239), .CK(clk), .RN(n403), .Q(N49), .QN(n160) );
  DFFRX1 \cs_reg[1]  ( .D(n542), .CK(clk), .RN(n401), .Q(n537) );
  DFFRX1 \a_reg[5]  ( .D(n241), .CK(clk), .RN(n403), .Q(\a[5] ), .QN(n162) );
  DFFRX2 \a_reg[3]  ( .D(n236), .CK(clk), .RN(n403), .Q(N52), .QN(n157) );
  DFFRX1 \cs_reg[0]  ( .D(\ns[0] ), .CK(clk), .RN(n403), .Q(n538) );
  DFFRX2 \a_reg[1]  ( .D(n238), .CK(clk), .RN(n403), .Q(N50), .QN(n159) );
  DFFRX1 switch_reg ( .D(N248), .CK(clk), .RN(n404), .Q(switch), .QN(n287) );
  DFFNSRX1 pre_odd_reg ( .D(n227), .CKN(clk), .SN(1'b1), .RN(n407), .Q(pre_odd), .QN(n285) );
  DFFRX1 \oem_addr_reg[0]  ( .D(n234), .CK(clk), .RN(n403), .Q(n557), .QN(n326) );
  DFFRX1 \oem_addr_reg[3]  ( .D(n232), .CK(clk), .RN(n404), .Q(n554), .QN(n324) );
  DFFRX1 \oem_addr_reg[4]  ( .D(n231), .CK(clk), .RN(n404), .Q(n553), .QN(n322) );
  DFFRX1 so_data_reg ( .D(n225), .CK(clk), .RN(n405), .Q(n543), .QN(n320) );
  DFFRX1 \oem_dataout_reg[1]  ( .D(n221), .CK(clk), .RN(n405), .Q(n551), .QN(
        n318) );
  DFFRX1 \oem_dataout_reg[3]  ( .D(n222), .CK(clk), .RN(n405), .Q(n549), .QN(
        n316) );
  DFFRX1 \oem_dataout_reg[5]  ( .D(n223), .CK(clk), .RN(n405), .Q(n547), .QN(
        n314) );
  DFFRX1 \oem_dataout_reg[7]  ( .D(n224), .CK(clk), .RN(n405), .Q(n545), .QN(
        n312) );
  DFFRX1 \oem_dataout_reg[6]  ( .D(n217), .CK(clk), .RN(n405), .Q(n546), .QN(
        n310) );
  DFFRX1 \oem_dataout_reg[4]  ( .D(n218), .CK(clk), .RN(n405), .Q(n548), .QN(
        n308) );
  DFFRX1 \oem_dataout_reg[2]  ( .D(n219), .CK(clk), .RN(n405), .Q(n550), .QN(
        n306) );
  DFFRX1 \oem_dataout_reg[0]  ( .D(n220), .CK(clk), .RN(n405), .Q(n552), .QN(
        n304) );
  DFFRX1 odd3_wr_reg ( .D(N339), .CK(clk), .RN(n404), .Q(n560), .QN(n204) );
  DFFRX1 odd2_wr_reg ( .D(N337), .CK(clk), .RN(n404), .Q(n559), .QN(n207) );
  DFFRX1 odd4_wr_reg ( .D(N341), .CK(clk), .RN(n404), .Q(n561), .QN(n205) );
  DFFRX1 odd1_wr_reg ( .D(N335), .CK(clk), .RN(n403), .Q(n558), .QN(n206) );
  DFFRX1 even1_wr_reg ( .D(N336), .CK(clk), .RN(n405), .Q(n562), .QN(n155) );
  DFFRX1 even2_wr_reg ( .D(N338), .CK(clk), .RN(n405), .Q(n563), .QN(n156) );
  DFFRX1 even3_wr_reg ( .D(N340), .CK(clk), .RN(n404), .Q(n564), .QN(n153) );
  DFFRX1 even4_wr_reg ( .D(N342), .CK(clk), .RN(n404), .Q(n565), .QN(n154) );
  DFFRX1 oem_finish_reg ( .D(n228), .CK(clk), .RN(n404), .Q(n544), .QN(n208)
         );
  DFFRX1 so_valid_reg ( .D(n282), .CK(clk), .RN(n403), .QN(n293) );
  DFFRX1 \oem_addr_reg[2]  ( .D(n233), .CK(clk), .RN(n404), .Q(n555), .QN(n291) );
  DFFRX1 \oem_addr_reg[1]  ( .D(n235), .CK(clk), .RN(n403), .Q(n556), .QN(n289) );
  DFFRX1 \a_reg[4]  ( .D(n240), .CK(clk), .RN(n403), .Q(N53), .QN(n161) );
  DFFSX1 \ctr8_reg[2]  ( .D(n267), .CK(clk), .SN(n406), .Q(n534), .QN(n284) );
  CLKBUFX2 U210 ( .A(n541), .Y(n406) );
  NAND2X2 U211 ( .A(N45), .B(n399), .Y(n350) );
  NAND2X2 U212 ( .A(N49), .B(n362), .Y(n348) );
  NAND3X2 U213 ( .A(n396), .B(n444), .C(pi_fill), .Y(n457) );
  NAND2X2 U214 ( .A(N45), .B(N44), .Y(n351) );
  INVX12 U215 ( .A(n289), .Y(oem_addr[1]) );
  NAND2X2 U216 ( .A(n543), .B(n448), .Y(n496) );
  NAND2X2 U217 ( .A(N44), .B(n159), .Y(n384) );
  NAND2X2 U218 ( .A(N44), .B(n362), .Y(n349) );
  NAND2X2 U219 ( .A(N50), .B(n399), .Y(n387) );
  NAND2X2 U220 ( .A(n442), .B(n398), .Y(n425) );
  INVX12 U221 ( .A(n291), .Y(oem_addr[2]) );
  NAND2X2 U222 ( .A(N50), .B(n160), .Y(n386) );
  NAND3X2 U223 ( .A(pi_fill), .B(n444), .C(n397), .Y(n455) );
  OAI2BB1X2 U224 ( .A0N(pi_fill), .A1N(pi_length[1]), .B0(n396), .Y(n458) );
  NAND2X2 U225 ( .A(n399), .B(n159), .Y(n385) );
  NAND4BX2 U226 ( .AN(pi_length[1]), .B(n398), .C(pi_low), .D(n444), .Y(n423)
         );
  INVX3 U227 ( .A(pi_length[0]), .Y(n444) );
  INVX12 U228 ( .A(n293), .Y(so_valid) );
  BUFX12 U229 ( .A(n544), .Y(oem_finish) );
  BUFX12 U230 ( .A(n565), .Y(even4_wr) );
  BUFX12 U231 ( .A(n564), .Y(even3_wr) );
  BUFX12 U232 ( .A(n563), .Y(even2_wr) );
  BUFX12 U233 ( .A(n562), .Y(even1_wr) );
  BUFX12 U234 ( .A(n558), .Y(odd1_wr) );
  BUFX12 U235 ( .A(n561), .Y(odd4_wr) );
  BUFX12 U236 ( .A(n559), .Y(odd2_wr) );
  BUFX12 U237 ( .A(n560), .Y(odd3_wr) );
  INVX12 U238 ( .A(n304), .Y(oem_dataout[0]) );
  INVX12 U239 ( .A(n306), .Y(oem_dataout[2]) );
  INVX12 U240 ( .A(n308), .Y(oem_dataout[4]) );
  INVX12 U241 ( .A(n310), .Y(oem_dataout[6]) );
  INVX12 U242 ( .A(n312), .Y(oem_dataout[7]) );
  INVX12 U243 ( .A(n314), .Y(oem_dataout[5]) );
  INVX12 U244 ( .A(n316), .Y(oem_dataout[3]) );
  INVX12 U245 ( .A(n318), .Y(oem_dataout[1]) );
  INVX12 U246 ( .A(n320), .Y(so_data) );
  CLKINVX1 U247 ( .A(N46), .Y(n361) );
  OAI21X1 U248 ( .A0(n412), .A1(n158), .B0(n413), .Y(N46) );
  INVX12 U249 ( .A(n322), .Y(oem_addr[4]) );
  INVX12 U250 ( .A(n324), .Y(oem_addr[3]) );
  INVX12 U251 ( .A(n326), .Y(oem_addr[0]) );
  AO22XL U252 ( .A0(n557), .A1(n475), .B0(n326), .B1(n476), .Y(n234) );
  AND2XL U253 ( .A(pi_low), .B(n444), .Y(n443) );
  NAND3XL U254 ( .A(n556), .B(n557), .C(n555), .Y(n490) );
  AOI31XL U255 ( .A0(n556), .A1(n487), .A2(n557), .B0(n486), .Y(n491) );
  MXI2XL U256 ( .A(n468), .B(n397), .S0(n444), .Y(n446) );
  AO22XL U257 ( .A0(n555), .A1(n475), .B0(N216), .B1(n476), .Y(n233) );
  AO22XL U258 ( .A0(n556), .A1(n475), .B0(N215), .B1(n476), .Y(n235) );
  AO22XL U259 ( .A0(n553), .A1(n475), .B0(N218), .B1(n476), .Y(n231) );
  XOR2XL U260 ( .A(\r428/carry [4]), .B(n553), .Y(N218) );
  AO22XL U261 ( .A0(n554), .A1(n475), .B0(N217), .B1(n476), .Y(n232) );
  MXI2XL U262 ( .A(n503), .B(n496), .S0(n504), .Y(n221) );
  NAND2XL U263 ( .A(n551), .B(n448), .Y(n503) );
  MXI2XL U264 ( .A(n501), .B(n496), .S0(n502), .Y(n222) );
  NAND2XL U265 ( .A(n549), .B(n448), .Y(n501) );
  MXI2XL U266 ( .A(n499), .B(n496), .S0(n500), .Y(n223) );
  NAND2XL U267 ( .A(n547), .B(n448), .Y(n499) );
  MXI2XL U268 ( .A(n495), .B(n496), .S0(n497), .Y(n224) );
  NAND2XL U269 ( .A(n545), .B(n448), .Y(n495) );
  MXI2XL U270 ( .A(n512), .B(n496), .S0(n513), .Y(n217) );
  NAND2XL U271 ( .A(n546), .B(n448), .Y(n512) );
  MXI2XL U272 ( .A(n510), .B(n496), .S0(n511), .Y(n218) );
  NAND2XL U273 ( .A(n548), .B(n448), .Y(n510) );
  MXI2XL U274 ( .A(n507), .B(n496), .S0(n508), .Y(n219) );
  NAND2XL U275 ( .A(n550), .B(n448), .Y(n507) );
  MXI2XL U276 ( .A(n505), .B(n496), .S0(n506), .Y(n220) );
  NAND2XL U277 ( .A(n552), .B(n448), .Y(n505) );
  OR2XL U278 ( .A(n557), .B(n556), .Y(n532) );
  NOR3XL U279 ( .A(n532), .B(n555), .C(n519), .Y(n531) );
  AOI211XL U280 ( .A0(n322), .A1(n324), .B0(n532), .C0(n555), .Y(n530) );
  NAND2BXL U281 ( .AN(n532), .B(n555), .Y(n529) );
  AOI2BB1XL U282 ( .A0N(n282), .A1N(n520), .B0(n451), .Y(n518) );
  NOR2XL U283 ( .A(\ns[0] ), .B(n542), .Y(n520) );
  AND3X2 U284 ( .A(n522), .B(n160), .C(n523), .Y(n521) );
  OAI211XL U285 ( .A0(n446), .A1(n465), .B0(n466), .C0(n467), .Y(n240) );
  NAND2XL U286 ( .A(N169), .B(n463), .Y(n466) );
  MXI2XL U287 ( .A(N201), .B(N202), .S0(n465), .Y(n494) );
  AND2X2 U288 ( .A(\ns[0] ), .B(n542), .Y(n282) );
  CLKBUFX3 U289 ( .A(n407), .Y(n405) );
  CLKBUFX3 U290 ( .A(n407), .Y(n404) );
  CLKBUFX3 U291 ( .A(n406), .Y(n402) );
  CLKBUFX3 U292 ( .A(n406), .Y(n401) );
  CLKBUFX3 U293 ( .A(n541), .Y(n403) );
  CLKBUFX3 U294 ( .A(n407), .Y(n400) );
  CLKBUFX3 U295 ( .A(n459), .Y(n396) );
  OAI21XL U296 ( .A0(n447), .A1(n444), .B0(n445), .Y(n459) );
  CLKBUFX3 U297 ( .A(n456), .Y(n397) );
  CLKINVX1 U298 ( .A(n445), .Y(n456) );
  CLKINVX1 U299 ( .A(N45), .Y(n362) );
  CLKBUFX3 U300 ( .A(n427), .Y(n398) );
  INVXL U301 ( .A(n447), .Y(n427) );
  CLKINVX1 U302 ( .A(n399), .Y(N44) );
  CLKINVX1 U303 ( .A(N47), .Y(n360) );
  CLKBUFX3 U304 ( .A(n541), .Y(n407) );
  NAND2X1 U305 ( .A(n447), .B(n474), .Y(n460) );
  NAND3X4 U306 ( .A(n397), .B(pi_fill), .C(pi_length[0]), .Y(n454) );
  CLKINVX1 U307 ( .A(N48), .Y(n363) );
  CLKBUFX3 U308 ( .A(N49), .Y(n399) );
  ADDHXL U309 ( .A(n556), .B(n557), .CO(\r428/carry [2]), .S(N215) );
  ADDHXL U310 ( .A(n555), .B(\r428/carry [2]), .CO(\r428/carry [3]), .S(N216)
         );
  CLKINVX1 U311 ( .A(N53), .Y(n422) );
  ADDHXL U312 ( .A(n554), .B(\r428/carry [3]), .CO(\r428/carry [4]), .S(N217)
         );
  ADDHXL U313 ( .A(N51), .B(\add_122/carry [2]), .CO(\add_122/carry [3]), .S(
        N167) );
  ADDHXL U314 ( .A(N52), .B(\add_122/carry [3]), .CO(\add_122/carry [4]), .S(
        N168) );
  ADDHXL U315 ( .A(N50), .B(n399), .CO(\add_122/carry [2]), .S(N166) );
  INVX3 U316 ( .A(n533), .Y(n448) );
  ADDHXL U317 ( .A(N53), .B(\add_122/carry [4]), .CO(\add_122/carry [5]), .S(
        N169) );
  OAI22XL U318 ( .A0(temp_data[13]), .A1(n349), .B0(temp_data[12]), .B1(n348), 
        .Y(n329) );
  OAI22XL U319 ( .A0(temp_data[15]), .A1(n351), .B0(temp_data[14]), .B1(n350), 
        .Y(n328) );
  OAI21XL U320 ( .A0(n329), .A1(n328), .B0(N46), .Y(n333) );
  OAI22XL U321 ( .A0(temp_data[9]), .A1(n349), .B0(temp_data[8]), .B1(n348), 
        .Y(n331) );
  OAI22XL U322 ( .A0(temp_data[11]), .A1(n351), .B0(temp_data[10]), .B1(n350), 
        .Y(n330) );
  OAI21XL U323 ( .A0(n331), .A1(n330), .B0(n361), .Y(n332) );
  AOI21X1 U324 ( .A0(n333), .A1(n332), .B0(n360), .Y(n359) );
  OAI22XL U325 ( .A0(temp_data[5]), .A1(n349), .B0(temp_data[4]), .B1(n348), 
        .Y(n335) );
  OAI22XL U326 ( .A0(temp_data[7]), .A1(n351), .B0(temp_data[6]), .B1(n350), 
        .Y(n334) );
  OAI21XL U327 ( .A0(n335), .A1(n334), .B0(N46), .Y(n339) );
  OAI22XL U328 ( .A0(temp_data[1]), .A1(n349), .B0(temp_data[0]), .B1(n348), 
        .Y(n337) );
  OAI22XL U329 ( .A0(temp_data[3]), .A1(n351), .B0(temp_data[2]), .B1(n350), 
        .Y(n336) );
  OAI21XL U330 ( .A0(n337), .A1(n336), .B0(n361), .Y(n338) );
  AOI21X1 U331 ( .A0(n339), .A1(n338), .B0(N47), .Y(n358) );
  OAI22XL U332 ( .A0(temp_data[21]), .A1(n349), .B0(temp_data[20]), .B1(n348), 
        .Y(n341) );
  OAI22XL U333 ( .A0(temp_data[23]), .A1(n351), .B0(temp_data[22]), .B1(n350), 
        .Y(n340) );
  OAI21XL U334 ( .A0(n341), .A1(n340), .B0(N46), .Y(n345) );
  OAI22XL U335 ( .A0(temp_data[17]), .A1(n349), .B0(temp_data[16]), .B1(n348), 
        .Y(n343) );
  OAI22XL U336 ( .A0(temp_data[19]), .A1(n351), .B0(temp_data[18]), .B1(n350), 
        .Y(n342) );
  OAI21XL U337 ( .A0(n343), .A1(n342), .B0(n361), .Y(n344) );
  AOI21X1 U338 ( .A0(n345), .A1(n344), .B0(N47), .Y(n357) );
  OAI22XL U339 ( .A0(temp_data[29]), .A1(n349), .B0(temp_data[28]), .B1(n348), 
        .Y(n347) );
  OAI22XL U340 ( .A0(temp_data[31]), .A1(n351), .B0(temp_data[30]), .B1(n350), 
        .Y(n346) );
  OAI21XL U341 ( .A0(n347), .A1(n346), .B0(N46), .Y(n355) );
  OAI22XL U342 ( .A0(temp_data[25]), .A1(n349), .B0(temp_data[24]), .B1(n348), 
        .Y(n353) );
  OAI22XL U343 ( .A0(temp_data[27]), .A1(n351), .B0(temp_data[26]), .B1(n350), 
        .Y(n352) );
  OAI21XL U344 ( .A0(n353), .A1(n352), .B0(n361), .Y(n354) );
  AOI21X1 U345 ( .A0(n355), .A1(n354), .B0(n360), .Y(n356) );
  OAI33X1 U346 ( .A0(n359), .A1(N48), .A2(n358), .B0(n363), .B1(n357), .B2(
        n356), .Y(N201) );
  OAI22XL U347 ( .A0(temp_data[13]), .A1(n385), .B0(temp_data[12]), .B1(n384), 
        .Y(n365) );
  OAI22XL U348 ( .A0(temp_data[15]), .A1(n387), .B0(temp_data[14]), .B1(n386), 
        .Y(n364) );
  OAI21XL U349 ( .A0(n365), .A1(n364), .B0(N51), .Y(n369) );
  OAI22XL U350 ( .A0(temp_data[9]), .A1(n385), .B0(temp_data[8]), .B1(n384), 
        .Y(n367) );
  OAI22XL U351 ( .A0(temp_data[11]), .A1(n387), .B0(temp_data[10]), .B1(n386), 
        .Y(n366) );
  OAI21XL U352 ( .A0(n367), .A1(n366), .B0(n158), .Y(n368) );
  AOI21X1 U353 ( .A0(n369), .A1(n368), .B0(n157), .Y(n395) );
  OAI22XL U354 ( .A0(temp_data[5]), .A1(n385), .B0(temp_data[4]), .B1(n384), 
        .Y(n371) );
  OAI22XL U355 ( .A0(temp_data[7]), .A1(n387), .B0(temp_data[6]), .B1(n386), 
        .Y(n370) );
  OAI21XL U356 ( .A0(n371), .A1(n370), .B0(N51), .Y(n375) );
  OAI22XL U357 ( .A0(temp_data[1]), .A1(n385), .B0(temp_data[0]), .B1(n384), 
        .Y(n373) );
  OAI22XL U358 ( .A0(temp_data[3]), .A1(n387), .B0(temp_data[2]), .B1(n386), 
        .Y(n372) );
  OAI21XL U359 ( .A0(n373), .A1(n372), .B0(n158), .Y(n374) );
  AOI21X1 U360 ( .A0(n375), .A1(n374), .B0(N52), .Y(n394) );
  OAI22XL U361 ( .A0(temp_data[21]), .A1(n385), .B0(temp_data[20]), .B1(n384), 
        .Y(n377) );
  OAI22XL U362 ( .A0(temp_data[23]), .A1(n387), .B0(temp_data[22]), .B1(n386), 
        .Y(n376) );
  OAI21XL U363 ( .A0(n377), .A1(n376), .B0(N51), .Y(n381) );
  OAI22XL U364 ( .A0(temp_data[17]), .A1(n385), .B0(temp_data[16]), .B1(n384), 
        .Y(n379) );
  OAI22XL U365 ( .A0(temp_data[19]), .A1(n387), .B0(temp_data[18]), .B1(n386), 
        .Y(n378) );
  OAI21XL U366 ( .A0(n379), .A1(n378), .B0(n158), .Y(n380) );
  AOI21X1 U367 ( .A0(n381), .A1(n380), .B0(N52), .Y(n393) );
  OAI22XL U368 ( .A0(temp_data[29]), .A1(n385), .B0(temp_data[28]), .B1(n384), 
        .Y(n383) );
  OAI22XL U369 ( .A0(temp_data[31]), .A1(n387), .B0(temp_data[30]), .B1(n386), 
        .Y(n382) );
  OAI21XL U370 ( .A0(n383), .A1(n382), .B0(N51), .Y(n391) );
  OAI22XL U371 ( .A0(temp_data[25]), .A1(n385), .B0(temp_data[24]), .B1(n384), 
        .Y(n389) );
  OAI22XL U372 ( .A0(temp_data[27]), .A1(n387), .B0(temp_data[26]), .B1(n386), 
        .Y(n388) );
  OAI21XL U373 ( .A0(n389), .A1(n388), .B0(n158), .Y(n390) );
  AOI21X1 U374 ( .A0(n391), .A1(n390), .B0(n157), .Y(n392) );
  OAI33X1 U375 ( .A0(n395), .A1(N53), .A2(n394), .B0(n422), .B1(n393), .B2(
        n392), .Y(N202) );
  AND3X2 U376 ( .A(n460), .B(n465), .C(n282), .Y(n463) );
  NAND3BXL U377 ( .AN(n542), .B(n486), .C(\ns[0] ), .Y(n488) );
  AOI2BB2XL U378 ( .B0(N175), .B1(n464), .A0N(n161), .A1N(n460), .Y(n467) );
  OAI21X1 U379 ( .A0(n477), .A1(n521), .B0(n447), .Y(n542) );
  XOR2X1 U380 ( .A(\add_122/carry [5]), .B(\a[5] ), .Y(N170) );
  NAND2BX1 U381 ( .AN(N50), .B(n160), .Y(n408) );
  OAI2BB1X1 U382 ( .A0N(n399), .A1N(N50), .B0(n408), .Y(N172) );
  NOR2X1 U383 ( .A(n408), .B(N51), .Y(n409) );
  AO21X1 U384 ( .A0(n408), .A1(N51), .B0(n409), .Y(N173) );
  NAND2X1 U385 ( .A(n409), .B(n157), .Y(n410) );
  OAI21XL U386 ( .A0(n409), .A1(n157), .B0(n410), .Y(N174) );
  XNOR2X1 U387 ( .A(N53), .B(n410), .Y(N175) );
  NOR2X1 U388 ( .A(N53), .B(n410), .Y(n411) );
  XOR2X1 U389 ( .A(\a[5] ), .B(n411), .Y(N176) );
  NOR2X1 U390 ( .A(N50), .B(n399), .Y(n412) );
  AO21X1 U391 ( .A0(n399), .A1(N50), .B0(n412), .Y(N45) );
  NAND2X1 U392 ( .A(n412), .B(n158), .Y(n413) );
  XNOR2X1 U393 ( .A(N52), .B(n413), .Y(N47) );
  NOR2X1 U394 ( .A(N52), .B(n413), .Y(n414) );
  XOR2X1 U395 ( .A(N53), .B(n414), .Y(N48) );
  NOR2BX1 U396 ( .AN(\a[5] ), .B(length[5]), .Y(n421) );
  NOR2X1 U397 ( .A(n167), .B(N52), .Y(n419) );
  AO22X1 U398 ( .A0(n422), .A1(length[4]), .B0(n422), .B1(n419), .Y(n418) );
  NAND2X1 U399 ( .A(N52), .B(n167), .Y(n415) );
  AOI22X1 U400 ( .A0(n415), .A1(n422), .B0(n415), .B1(length[4]), .Y(n416) );
  NOR4X1 U401 ( .A(N51), .B(N50), .C(n399), .D(n416), .Y(n417) );
  AOI211X1 U402 ( .A0(length[4]), .A1(n419), .B0(n418), .C0(n417), .Y(n420) );
  OAI22XL U403 ( .A0(n421), .A1(n420), .B0(\a[5] ), .B1(n169), .Y(N159) );
  CLKINVX1 U404 ( .A(reset), .Y(n541) );
  OAI222XL U405 ( .A0(n423), .A1(n424), .B0(n425), .B1(n426), .C0(n398), .C1(
        n172), .Y(n280) );
  OAI222XL U406 ( .A0(n423), .A1(n428), .B0(n425), .B1(n429), .C0(n398), .C1(
        n173), .Y(n279) );
  OAI222XL U407 ( .A0(n423), .A1(n430), .B0(n425), .B1(n431), .C0(n398), .C1(
        n174), .Y(n278) );
  OAI222XL U408 ( .A0(n423), .A1(n432), .B0(n425), .B1(n433), .C0(n398), .C1(
        n175), .Y(n277) );
  OAI222XL U409 ( .A0(n423), .A1(n434), .B0(n425), .B1(n435), .C0(n398), .C1(
        n176), .Y(n276) );
  OAI222XL U410 ( .A0(n423), .A1(n436), .B0(n425), .B1(n437), .C0(n398), .C1(
        n177), .Y(n275) );
  OAI222XL U411 ( .A0(n423), .A1(n438), .B0(n425), .B1(n439), .C0(n398), .C1(
        n178), .Y(n274) );
  OAI222XL U412 ( .A0(n423), .A1(n440), .B0(n425), .B1(n441), .C0(n398), .C1(
        n179), .Y(n273) );
  MXI2X1 U413 ( .A(n443), .B(pi_fill), .S0(pi_length[1]), .Y(n442) );
  OAI22XL U414 ( .A0(n169), .A1(n398), .B0(n445), .B1(n444), .Y(n272) );
  OAI21XL U415 ( .A0(n168), .A1(n398), .B0(n446), .Y(n271) );
  MXI2X1 U416 ( .A(pi_length[0]), .B(n167), .S0(n447), .Y(n270) );
  OAI2BB1X1 U417 ( .A0N(pi_end), .A1N(n398), .B0(n448), .Y(n269) );
  OAI211X1 U418 ( .A0(n449), .A1(n283), .B0(n450), .C0(n451), .Y(n268) );
  OAI2BB1X1 U419 ( .A0N(n450), .A1N(n534), .B0(n451), .Y(n267) );
  OAI211X1 U420 ( .A0(n452), .A1(n286), .B0(n453), .C0(n451), .Y(n266) );
  OAI222XL U421 ( .A0(n441), .A1(n454), .B0(n440), .B1(n455), .C0(n397), .C1(
        n180), .Y(n265) );
  OAI222XL U422 ( .A0(n426), .A1(n454), .B0(n424), .B1(n455), .C0(n397), .C1(
        n181), .Y(n264) );
  OAI222XL U423 ( .A0(n429), .A1(n454), .B0(n428), .B1(n455), .C0(n397), .C1(
        n182), .Y(n263) );
  OAI222XL U424 ( .A0(n431), .A1(n454), .B0(n430), .B1(n455), .C0(n397), .C1(
        n183), .Y(n262) );
  OAI222XL U425 ( .A0(n433), .A1(n454), .B0(n432), .B1(n455), .C0(n397), .C1(
        n184), .Y(n261) );
  OAI222XL U426 ( .A0(n435), .A1(n454), .B0(n434), .B1(n455), .C0(n397), .C1(
        n185), .Y(n260) );
  OAI222XL U427 ( .A0(n437), .A1(n454), .B0(n436), .B1(n455), .C0(n397), .C1(
        n186), .Y(n259) );
  OAI222XL U428 ( .A0(n439), .A1(n454), .B0(n438), .B1(n455), .C0(n397), .C1(
        n187), .Y(n258) );
  OAI22XL U429 ( .A0(n397), .A1(n188), .B0(n440), .B1(n454), .Y(n257) );
  OAI22XL U430 ( .A0(n397), .A1(n189), .B0(n424), .B1(n454), .Y(n256) );
  OAI22XL U431 ( .A0(n397), .A1(n190), .B0(n428), .B1(n454), .Y(n255) );
  OAI22XL U432 ( .A0(n397), .A1(n191), .B0(n430), .B1(n454), .Y(n254) );
  OAI22XL U433 ( .A0(n397), .A1(n192), .B0(n432), .B1(n454), .Y(n253) );
  OAI22XL U434 ( .A0(n397), .A1(n193), .B0(n434), .B1(n454), .Y(n252) );
  OAI22XL U435 ( .A0(n397), .A1(n194), .B0(n436), .B1(n454), .Y(n251) );
  OAI22XL U436 ( .A0(n397), .A1(n195), .B0(n438), .B1(n454), .Y(n250) );
  OAI222XL U437 ( .A0(n441), .A1(n457), .B0(n440), .B1(n458), .C0(n396), .C1(
        n196), .Y(n249) );
  CLKINVX1 U438 ( .A(pi_data[8]), .Y(n440) );
  CLKINVX1 U439 ( .A(pi_data[0]), .Y(n441) );
  OAI222XL U440 ( .A0(n426), .A1(n457), .B0(n424), .B1(n458), .C0(n396), .C1(
        n197), .Y(n248) );
  CLKINVX1 U441 ( .A(pi_data[9]), .Y(n424) );
  CLKINVX1 U442 ( .A(pi_data[1]), .Y(n426) );
  OAI222XL U443 ( .A0(n429), .A1(n457), .B0(n428), .B1(n458), .C0(n396), .C1(
        n198), .Y(n247) );
  CLKINVX1 U444 ( .A(pi_data[10]), .Y(n428) );
  CLKINVX1 U445 ( .A(pi_data[2]), .Y(n429) );
  OAI222XL U446 ( .A0(n431), .A1(n457), .B0(n430), .B1(n458), .C0(n396), .C1(
        n199), .Y(n246) );
  CLKINVX1 U447 ( .A(pi_data[11]), .Y(n430) );
  CLKINVX1 U448 ( .A(pi_data[3]), .Y(n431) );
  OAI222XL U449 ( .A0(n433), .A1(n457), .B0(n432), .B1(n458), .C0(n396), .C1(
        n200), .Y(n245) );
  CLKINVX1 U450 ( .A(pi_data[12]), .Y(n432) );
  CLKINVX1 U451 ( .A(pi_data[4]), .Y(n433) );
  OAI222XL U452 ( .A0(n435), .A1(n457), .B0(n434), .B1(n458), .C0(n396), .C1(
        n201), .Y(n244) );
  CLKINVX1 U453 ( .A(pi_data[13]), .Y(n434) );
  CLKINVX1 U454 ( .A(pi_data[5]), .Y(n435) );
  OAI222XL U455 ( .A0(n437), .A1(n457), .B0(n436), .B1(n458), .C0(n396), .C1(
        n202), .Y(n243) );
  CLKINVX1 U456 ( .A(pi_data[14]), .Y(n436) );
  CLKINVX1 U457 ( .A(pi_data[6]), .Y(n437) );
  OAI222XL U458 ( .A0(n439), .A1(n457), .B0(n438), .B1(n458), .C0(n396), .C1(
        n203), .Y(n242) );
  CLKINVX1 U459 ( .A(pi_data[15]), .Y(n438) );
  CLKINVX1 U460 ( .A(pi_data[7]), .Y(n439) );
  OAI211X1 U461 ( .A0(n162), .A1(n460), .B0(n461), .C0(n462), .Y(n241) );
  AOI32X1 U462 ( .A0(n397), .A1(pi_msb), .A2(pi_length[0]), .B0(N170), .B1(
        n463), .Y(n462) );
  NAND2X1 U463 ( .A(N176), .B(n464), .Y(n461) );
  NAND2X1 U464 ( .A(n398), .B(pi_length[1]), .Y(n445) );
  NOR2X1 U465 ( .A(pi_length[1]), .B(n447), .Y(n468) );
  OAI21XL U466 ( .A0(n160), .A1(n460), .B0(n469), .Y(n239) );
  AOI22X1 U467 ( .A0(n160), .A1(n463), .B0(N44), .B1(n464), .Y(n469) );
  OAI21XL U468 ( .A0(n159), .A1(n460), .B0(n470), .Y(n238) );
  AOI22X1 U469 ( .A0(N166), .A1(n463), .B0(N172), .B1(n464), .Y(n470) );
  OAI21XL U470 ( .A0(n158), .A1(n460), .B0(n471), .Y(n237) );
  AOI22X1 U471 ( .A0(N167), .A1(n463), .B0(N173), .B1(n464), .Y(n471) );
  OAI211X1 U472 ( .A0(n157), .A1(n460), .B0(n472), .C0(n473), .Y(n236) );
  AOI32X1 U473 ( .A0(pi_msb), .A1(n444), .A2(n398), .B0(N168), .B1(n463), .Y(
        n473) );
  NAND2X1 U474 ( .A(N174), .B(n464), .Y(n472) );
  AND2X1 U475 ( .A(n282), .B(pi_msb), .Y(n464) );
  OAI21XL U476 ( .A0(N159), .A1(pi_msb), .B0(n282), .Y(n474) );
  AOI21X1 U477 ( .A0(n477), .A1(n478), .B0(n476), .Y(n475) );
  AND3X1 U478 ( .A(n479), .B(n535), .C(n534), .Y(n476) );
  AOI211X1 U479 ( .A0(n477), .A1(n480), .B0(n283), .C0(n481), .Y(n479) );
  XNOR2X1 U480 ( .A(n288), .B(n478), .Y(n230) );
  NAND2X1 U481 ( .A(n482), .B(n483), .Y(n229) );
  MXI2X1 U482 ( .A(n540), .B(n484), .S0(n478), .Y(n482) );
  NOR2X1 U483 ( .A(n485), .B(n481), .Y(n478) );
  MXI2X1 U484 ( .A(n486), .B(n487), .S0(n287), .Y(n481) );
  OAI31XL U485 ( .A0(n488), .A1(n485), .A2(n489), .B0(n208), .Y(n228) );
  CLKINVX1 U486 ( .A(n480), .Y(n485) );
  NOR3X1 U487 ( .A(n324), .B(n490), .C(n322), .Y(n480) );
  OAI21XL U488 ( .A0(n491), .A1(switch), .B0(n492), .Y(n227) );
  MXI2X1 U489 ( .A(n493), .B(n490), .S0(n486), .Y(n492) );
  NOR2X1 U490 ( .A(n487), .B(n285), .Y(n493) );
  NAND4X1 U491 ( .A(n206), .B(n207), .C(n204), .D(n205), .Y(n486) );
  NAND4X1 U492 ( .A(n156), .B(n155), .C(n154), .D(n153), .Y(n487) );
  MXI2X1 U493 ( .A(n320), .B(n494), .S0(n282), .Y(n225) );
  NOR3X1 U494 ( .A(n498), .B(n283), .C(n284), .Y(n497) );
  NOR3X1 U495 ( .A(n498), .B(n536), .C(n284), .Y(n500) );
  NOR3X1 U496 ( .A(n498), .B(n534), .C(n283), .Y(n502) );
  NOR3X1 U497 ( .A(n498), .B(n534), .C(n536), .Y(n504) );
  NAND2X1 U498 ( .A(n535), .B(n452), .Y(n498) );
  NOR2X1 U499 ( .A(n534), .B(n450), .Y(n506) );
  NOR2X1 U500 ( .A(n534), .B(n509), .Y(n508) );
  NOR2X1 U501 ( .A(n284), .B(n450), .Y(n511) );
  NAND2X1 U502 ( .A(n449), .B(n283), .Y(n450) );
  NOR2X1 U503 ( .A(n284), .B(n509), .Y(n513) );
  NAND2X1 U504 ( .A(n536), .B(n449), .Y(n509) );
  CLKINVX1 U505 ( .A(n453), .Y(n449) );
  NAND2X1 U506 ( .A(n452), .B(n286), .Y(n453) );
  AND2X1 U507 ( .A(n537), .B(n538), .Y(n452) );
  NOR2X1 U508 ( .A(n489), .B(n514), .Y(N342) );
  NOR2X1 U509 ( .A(n489), .B(n515), .Y(N341) );
  NAND2X1 U510 ( .A(n540), .B(n539), .Y(n489) );
  NOR2X1 U511 ( .A(n514), .B(n483), .Y(N340) );
  NOR2X1 U512 ( .A(n515), .B(n483), .Y(N339) );
  NAND2X1 U513 ( .A(n540), .B(n288), .Y(n483) );
  NOR2X1 U514 ( .A(n516), .B(n514), .Y(N338) );
  NOR2X1 U515 ( .A(n516), .B(n515), .Y(N337) );
  CLKINVX1 U516 ( .A(n484), .Y(n516) );
  NOR2X1 U517 ( .A(n288), .B(n540), .Y(n484) );
  NOR2X1 U518 ( .A(n514), .B(n517), .Y(N336) );
  NAND2X1 U519 ( .A(n518), .B(pre_odd), .Y(n514) );
  NOR2X1 U520 ( .A(n515), .B(n517), .Y(N335) );
  CLKINVX1 U521 ( .A(n519), .Y(n517) );
  NAND2X1 U522 ( .A(n518), .B(n285), .Y(n515) );
  NAND3X1 U523 ( .A(n286), .B(n284), .C(n283), .Y(n451) );
  NOR2X1 U524 ( .A(n537), .B(n538), .Y(n477) );
  NOR2X1 U525 ( .A(n521), .B(n398), .Y(\ns[0] ) );
  NAND2BX1 U526 ( .AN(n537), .B(n538), .Y(n447) );
  AND3X1 U527 ( .A(n159), .B(n538), .C(n158), .Y(n523) );
  MXI2X1 U528 ( .A(n524), .B(n525), .S0(n465), .Y(n522) );
  CLKINVX1 U529 ( .A(pi_msb), .Y(n465) );
  NAND3X1 U530 ( .A(n526), .B(n527), .C(n528), .Y(n525) );
  XNOR2X1 U531 ( .A(n161), .B(n168), .Y(n528) );
  XNOR2X1 U532 ( .A(n162), .B(n169), .Y(n527) );
  XNOR2X1 U533 ( .A(n157), .B(n167), .Y(n526) );
  NAND3X1 U534 ( .A(n161), .B(n157), .C(n162), .Y(n524) );
  AOI211X1 U535 ( .A0(n287), .A1(n529), .B0(n530), .C0(n531), .Y(N248) );
  NOR2X1 U536 ( .A(n539), .B(n540), .Y(n519) );
endmodule

