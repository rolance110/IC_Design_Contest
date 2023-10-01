/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jan 21 00:21:39 2023
/////////////////////////////////////////////////////////////


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [22:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n21), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n22), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n15), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n14), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n10), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n11), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n7), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n5), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  XOR3X1 U2_21 ( .A(A[21]), .B(n2), .C(carry[21]), .Y(DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n4), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n23) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[20]), .Y(n3) );
  CLKINVX1 U4 ( .A(B[21]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[18]), .Y(n5) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[16]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[12]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[13]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[14]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n13) );
  CLKINVX1 U14 ( .A(B[11]), .Y(n12) );
  CLKINVX1 U15 ( .A(B[5]), .Y(n18) );
  CLKINVX1 U16 ( .A(B[6]), .Y(n17) );
  CLKINVX1 U17 ( .A(B[7]), .Y(n16) );
  CLKINVX1 U18 ( .A(B[8]), .Y(n15) );
  CLKINVX1 U19 ( .A(B[3]), .Y(n20) );
  CLKINVX1 U20 ( .A(B[4]), .Y(n19) );
  NAND2X1 U21 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U22 ( .A(B[1]), .Y(n22) );
  CLKINVX1 U23 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U24 ( .A(B[2]), .Y(n21) );
  XNOR2X1 U25 ( .A(n23), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  INVXL U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
  XNOR2XL U3 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U4 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n10) );
  NAND2X1 U6 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[0]), .Y(n11) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3XL U2_10 ( .A(A[10]), .B(n12), .C(carry[10]), .Y(DIFF[10]) );
  INVXL U1 ( .A(A[0]), .Y(n1) );
  INVXL U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n12) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n3) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  XNOR2XL U14 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [11:0] carry;

  XOR3X1 U2_10 ( .A(A[10]), .B(n11), .C(carry[10]), .Y(DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n8), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n3), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n2), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n12) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n11) );
  XNOR2X1 U14 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [11:0] carry;

  XOR3XL U2_10 ( .A(A[10]), .B(n11), .C(carry[10]), .Y(DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(A[0]), .Y(n1) );
  XNOR2XL U2 ( .A(n12), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n11) );
  CLKINVX1 U14 ( .A(B[0]), .Y(n12) );
endmodule


module geofence_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3XL U2_10 ( .A(A[10]), .B(n12), .C(carry[10]), .Y(DIFF[10]) );
  INVXL U1 ( .A(A[0]), .Y(n2) );
  XNOR2XL U2 ( .A(n13), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n12) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n11) );
  NAND2X1 U5 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(n13), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n5) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n3) );
  CLKINVX1 U15 ( .A(B[0]), .Y(n13) );
endmodule


module geofence_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  XNOR2X1 U1 ( .A(A[10]), .B(carry[10]), .Y(DIFF[10]) );
  INVXL U2 ( .A(A[0]), .Y(n1) );
  XNOR2XL U3 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U4 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n10) );
  NAND2X1 U6 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U14 ( .A(B[0]), .Y(n11) );
endmodule


module geofence_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3XL U2_10 ( .A(A[10]), .B(n12), .C(carry[10]), .Y(DIFF[10]) );
  INVXL U1 ( .A(A[0]), .Y(n1) );
  INVXL U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n12) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n3) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  XNOR2XL U14 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_sub_8 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n4), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n5), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n6), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n9), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n10), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n11), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n12), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_10 ( .A(A[10]), .B(n3), .C(carry[10]), .Y(DIFF[10]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n12) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n11) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n10) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n5) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n4) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n3) );
endmodule


module geofence_DW01_sub_9 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n12), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n4), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3XL U2_10 ( .A(A[10]), .B(n3), .C(carry[10]), .Y(DIFF[10]) );
  INVXL U1 ( .A(A[0]), .Y(n1) );
  XNOR2XL U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n3) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n4) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n11) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n12) );
  CLKINVX1 U14 ( .A(B[0]), .Y(n2) );
endmodule


module geofence_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n13), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n12), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n11), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n9), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n5), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3XL U2_10 ( .A(A[10]), .B(n4), .C(carry[10]), .Y(DIFF[10]) );
  INVXL U1 ( .A(A[0]), .Y(n2) );
  XNOR2XL U2 ( .A(n3), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[10]), .Y(n4) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n5) );
  NAND2X1 U5 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(n3), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n11) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n12) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n13) );
  CLKINVX1 U15 ( .A(B[0]), .Y(n3) );
endmodule


module geofence_DW_mult_tc_0 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n32, n33, n34,
         n35, n36, n37, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n115, n116, n117,
         n118, n119, n120, n121, n122, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n37), .B(n41), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n30), .B(n125), .CI(n115), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n369), .B(n116), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n136), .B(n126), .C(n38), .D(n117), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n127), .B(n118), .C(n366), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n137), .B(n128), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n50), .B(n146), .CI(n119), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n364), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n129), .B(n120), .CI(n138), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n139), .B(n130), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n157), .B(n121), .C(n64), .D(n147), .ICI(n61), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n367), .B(n69), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n131), .B(n158), .C(n148), .D(n122), .ICI(n72), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n140), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n159), .B(n108), .C(n149), .D(n132), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n124), .B(n141), .C(n170), .D(n160), .ICI(n133), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n142), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n134), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n143), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n135), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n144), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n145), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  CLKINVX1 U264 ( .A(n64), .Y(n367) );
  CLKINVX1 U265 ( .A(n50), .Y(n364) );
  CLKBUFX3 U266 ( .A(n371), .Y(n352) );
  CLKINVX1 U267 ( .A(n380), .Y(n371) );
  CLKINVX1 U268 ( .A(n38), .Y(n366) );
  NAND2X2 U269 ( .A(a[1]), .B(n361), .Y(n381) );
  CLKINVX1 U270 ( .A(b[0]), .Y(n373) );
  INVX3 U271 ( .A(a[1]), .Y(n362) );
  INVX3 U272 ( .A(a[3]), .Y(n363) );
  INVX3 U273 ( .A(a[5]), .Y(n365) );
  INVX3 U274 ( .A(a[0]), .Y(n361) );
  CLKBUFX3 U275 ( .A(n406), .Y(n354) );
  XNOR2X1 U276 ( .A(a[2]), .B(a[1]), .Y(n406) );
  CLKBUFX3 U277 ( .A(n387), .Y(n356) );
  XNOR2X1 U278 ( .A(a[4]), .B(a[3]), .Y(n387) );
  CLKBUFX3 U279 ( .A(n408), .Y(n353) );
  NAND2X1 U280 ( .A(n354), .B(n452), .Y(n408) );
  CLKBUFX3 U281 ( .A(n390), .Y(n355) );
  NAND2X1 U282 ( .A(n356), .B(n453), .Y(n390) );
  CLKBUFX3 U283 ( .A(n385), .Y(n358) );
  XNOR2X1 U284 ( .A(a[6]), .B(a[5]), .Y(n385) );
  CLKBUFX3 U285 ( .A(n384), .Y(n357) );
  NAND2X1 U286 ( .A(n358), .B(n454), .Y(n384) );
  INVX3 U287 ( .A(a[7]), .Y(n368) );
  INVX3 U288 ( .A(a[9]), .Y(n370) );
  INVX3 U289 ( .A(a[10]), .Y(n372) );
  CLKBUFX3 U290 ( .A(n393), .Y(n360) );
  XNOR2X1 U291 ( .A(a[8]), .B(a[7]), .Y(n393) );
  CLKBUFX3 U292 ( .A(n396), .Y(n359) );
  NAND2X1 U293 ( .A(n360), .B(n455), .Y(n396) );
  CLKINVX1 U294 ( .A(n30), .Y(n369) );
  XOR2X1 U295 ( .A(n374), .B(n375), .Y(product[21]) );
  NOR2BX1 U296 ( .AN(n376), .B(n352), .Y(n375) );
  XOR2X1 U297 ( .A(n25), .B(n4), .Y(n374) );
  NOR2X1 U298 ( .A(n361), .B(n373), .Y(product[0]) );
  XOR2X1 U299 ( .A(n377), .B(n378), .Y(n73) );
  NAND2BX1 U300 ( .AN(n378), .B(n377), .Y(n72) );
  NAND2X1 U301 ( .A(n379), .B(n380), .Y(n377) );
  XOR2X1 U302 ( .A(b[1]), .B(a[10]), .Y(n379) );
  OAI2BB1X1 U303 ( .A0N(n361), .A1N(n381), .B0(n382), .Y(n378) );
  OAI22XL U304 ( .A0(n383), .A1(n357), .B0(n358), .B1(n386), .Y(n64) );
  OAI22XL U305 ( .A0(n356), .A1(n388), .B0(n389), .B1(n355), .Y(n50) );
  OAI22XL U306 ( .A0(n358), .A1(n391), .B0(n392), .B1(n357), .Y(n38) );
  OAI22XL U307 ( .A0(n360), .A1(n394), .B0(n395), .B1(n359), .Y(n30) );
  NAND2X1 U308 ( .A(n376), .B(n380), .Y(n25) );
  XOR2X1 U309 ( .A(b[10]), .B(a[10]), .Y(n376) );
  OAI22XL U310 ( .A0(b[0]), .A1(n381), .B0(n397), .B1(n361), .Y(n179) );
  OAI22XL U311 ( .A0(n397), .A1(n381), .B0(n398), .B1(n361), .Y(n178) );
  XOR2X1 U312 ( .A(b[1]), .B(n362), .Y(n397) );
  OAI22XL U313 ( .A0(n398), .A1(n381), .B0(n399), .B1(n361), .Y(n177) );
  XOR2X1 U314 ( .A(b[2]), .B(n362), .Y(n398) );
  OAI22XL U315 ( .A0(n399), .A1(n381), .B0(n400), .B1(n361), .Y(n176) );
  XOR2X1 U316 ( .A(b[3]), .B(n362), .Y(n399) );
  OAI22XL U317 ( .A0(n400), .A1(n381), .B0(n401), .B1(n361), .Y(n175) );
  XOR2X1 U318 ( .A(b[4]), .B(n362), .Y(n400) );
  OAI22XL U319 ( .A0(n401), .A1(n381), .B0(n402), .B1(n361), .Y(n174) );
  XOR2X1 U320 ( .A(b[5]), .B(n362), .Y(n401) );
  OAI22XL U321 ( .A0(n402), .A1(n381), .B0(n403), .B1(n361), .Y(n173) );
  XOR2X1 U322 ( .A(b[6]), .B(n362), .Y(n402) );
  OAI22XL U323 ( .A0(n403), .A1(n381), .B0(n404), .B1(n361), .Y(n172) );
  XOR2X1 U324 ( .A(b[7]), .B(n362), .Y(n403) );
  OAI22XL U325 ( .A0(n404), .A1(n381), .B0(n405), .B1(n361), .Y(n171) );
  XOR2X1 U326 ( .A(b[8]), .B(n362), .Y(n404) );
  OAI2BB2XL U327 ( .B0(n405), .B1(n381), .A0N(n382), .A1N(a[0]), .Y(n170) );
  XOR2X1 U328 ( .A(b[10]), .B(a[1]), .Y(n382) );
  XOR2X1 U329 ( .A(b[9]), .B(n362), .Y(n405) );
  NOR2X1 U330 ( .A(n354), .B(n373), .Y(n168) );
  OAI22XL U331 ( .A0(n407), .A1(n353), .B0(n354), .B1(n409), .Y(n167) );
  XOR2X1 U332 ( .A(n363), .B(b[0]), .Y(n407) );
  OAI22XL U333 ( .A0(n409), .A1(n353), .B0(n354), .B1(n410), .Y(n166) );
  XOR2X1 U334 ( .A(b[1]), .B(n363), .Y(n409) );
  OAI22XL U335 ( .A0(n410), .A1(n353), .B0(n354), .B1(n411), .Y(n165) );
  XOR2X1 U336 ( .A(b[2]), .B(n363), .Y(n410) );
  OAI22XL U337 ( .A0(n411), .A1(n353), .B0(n354), .B1(n412), .Y(n164) );
  XOR2X1 U338 ( .A(b[3]), .B(n363), .Y(n411) );
  OAI22XL U339 ( .A0(n412), .A1(n353), .B0(n354), .B1(n413), .Y(n163) );
  XOR2X1 U340 ( .A(b[4]), .B(n363), .Y(n412) );
  OAI22XL U341 ( .A0(n413), .A1(n353), .B0(n354), .B1(n414), .Y(n162) );
  XOR2X1 U342 ( .A(b[5]), .B(n363), .Y(n413) );
  OAI22XL U343 ( .A0(n414), .A1(n353), .B0(n354), .B1(n415), .Y(n161) );
  XOR2X1 U344 ( .A(b[6]), .B(n363), .Y(n414) );
  OAI22XL U345 ( .A0(n415), .A1(n353), .B0(n354), .B1(n416), .Y(n160) );
  XOR2X1 U346 ( .A(b[7]), .B(n363), .Y(n415) );
  OAI22XL U347 ( .A0(n416), .A1(n353), .B0(n354), .B1(n417), .Y(n159) );
  XOR2X1 U348 ( .A(b[8]), .B(n363), .Y(n416) );
  OAI22XL U349 ( .A0(n417), .A1(n353), .B0(n354), .B1(n418), .Y(n158) );
  XOR2X1 U350 ( .A(b[9]), .B(n363), .Y(n417) );
  AO21X1 U351 ( .A0(n353), .A1(n354), .B0(n418), .Y(n157) );
  XOR2X1 U352 ( .A(b[10]), .B(n363), .Y(n418) );
  NOR2X1 U353 ( .A(n356), .B(n373), .Y(n156) );
  OAI22XL U354 ( .A0(n419), .A1(n355), .B0(n356), .B1(n420), .Y(n155) );
  XOR2X1 U355 ( .A(n365), .B(b[0]), .Y(n419) );
  OAI22XL U356 ( .A0(n420), .A1(n355), .B0(n356), .B1(n421), .Y(n154) );
  XOR2X1 U357 ( .A(b[1]), .B(n365), .Y(n420) );
  OAI22XL U358 ( .A0(n421), .A1(n355), .B0(n356), .B1(n422), .Y(n153) );
  XOR2X1 U359 ( .A(b[2]), .B(n365), .Y(n421) );
  OAI22XL U360 ( .A0(n422), .A1(n355), .B0(n356), .B1(n423), .Y(n152) );
  XOR2X1 U361 ( .A(b[3]), .B(n365), .Y(n422) );
  OAI22XL U362 ( .A0(n423), .A1(n355), .B0(n356), .B1(n424), .Y(n151) );
  XOR2X1 U363 ( .A(b[4]), .B(n365), .Y(n423) );
  OAI22XL U364 ( .A0(n424), .A1(n355), .B0(n356), .B1(n425), .Y(n150) );
  XOR2X1 U365 ( .A(b[5]), .B(n365), .Y(n424) );
  OAI22XL U366 ( .A0(n425), .A1(n355), .B0(n356), .B1(n426), .Y(n149) );
  XOR2X1 U367 ( .A(b[6]), .B(n365), .Y(n425) );
  OAI22XL U368 ( .A0(n426), .A1(n355), .B0(n356), .B1(n427), .Y(n148) );
  XOR2X1 U369 ( .A(b[7]), .B(n365), .Y(n426) );
  OAI22XL U370 ( .A0(n427), .A1(n355), .B0(n356), .B1(n389), .Y(n147) );
  XOR2X1 U371 ( .A(b[9]), .B(n365), .Y(n389) );
  XOR2X1 U372 ( .A(b[8]), .B(n365), .Y(n427) );
  AO21X1 U373 ( .A0(n355), .A1(n356), .B0(n388), .Y(n146) );
  XOR2X1 U374 ( .A(b[10]), .B(n365), .Y(n388) );
  NOR2X1 U375 ( .A(n358), .B(n373), .Y(n145) );
  OAI22XL U376 ( .A0(n428), .A1(n357), .B0(n358), .B1(n429), .Y(n144) );
  XOR2X1 U377 ( .A(n368), .B(b[0]), .Y(n428) );
  OAI22XL U378 ( .A0(n429), .A1(n357), .B0(n358), .B1(n430), .Y(n143) );
  XOR2X1 U379 ( .A(b[1]), .B(n368), .Y(n429) );
  OAI22XL U380 ( .A0(n430), .A1(n357), .B0(n358), .B1(n431), .Y(n142) );
  XOR2X1 U381 ( .A(b[2]), .B(n368), .Y(n430) );
  OAI22XL U382 ( .A0(n431), .A1(n357), .B0(n358), .B1(n432), .Y(n141) );
  XOR2X1 U383 ( .A(b[3]), .B(n368), .Y(n431) );
  OAI22XL U384 ( .A0(n432), .A1(n357), .B0(n358), .B1(n383), .Y(n140) );
  XOR2X1 U385 ( .A(b[5]), .B(n368), .Y(n383) );
  XOR2X1 U386 ( .A(b[4]), .B(n368), .Y(n432) );
  OAI22XL U387 ( .A0(n386), .A1(n357), .B0(n358), .B1(n433), .Y(n139) );
  XOR2X1 U388 ( .A(b[6]), .B(n368), .Y(n386) );
  OAI22XL U389 ( .A0(n433), .A1(n357), .B0(n358), .B1(n434), .Y(n138) );
  XOR2X1 U390 ( .A(b[7]), .B(n368), .Y(n433) );
  OAI22XL U391 ( .A0(n434), .A1(n357), .B0(n358), .B1(n392), .Y(n137) );
  XOR2X1 U392 ( .A(b[9]), .B(n368), .Y(n392) );
  XOR2X1 U393 ( .A(b[8]), .B(n368), .Y(n434) );
  AO21X1 U394 ( .A0(n357), .A1(n358), .B0(n391), .Y(n136) );
  XOR2X1 U395 ( .A(b[10]), .B(n368), .Y(n391) );
  NOR2X1 U396 ( .A(n360), .B(n373), .Y(n135) );
  OAI22XL U397 ( .A0(n435), .A1(n359), .B0(n360), .B1(n436), .Y(n134) );
  XOR2X1 U398 ( .A(n370), .B(b[0]), .Y(n435) );
  OAI22XL U399 ( .A0(n436), .A1(n359), .B0(n360), .B1(n437), .Y(n133) );
  XOR2X1 U400 ( .A(b[1]), .B(n370), .Y(n436) );
  OAI22XL U401 ( .A0(n437), .A1(n359), .B0(n360), .B1(n438), .Y(n132) );
  XOR2X1 U402 ( .A(b[2]), .B(n370), .Y(n437) );
  OAI22XL U403 ( .A0(n438), .A1(n359), .B0(n360), .B1(n439), .Y(n131) );
  XOR2X1 U404 ( .A(b[3]), .B(n370), .Y(n438) );
  OAI22XL U405 ( .A0(n439), .A1(n359), .B0(n360), .B1(n440), .Y(n130) );
  XOR2X1 U406 ( .A(b[4]), .B(n370), .Y(n439) );
  OAI22XL U407 ( .A0(n440), .A1(n359), .B0(n360), .B1(n441), .Y(n129) );
  XOR2X1 U408 ( .A(b[5]), .B(n370), .Y(n440) );
  OAI22XL U409 ( .A0(n441), .A1(n359), .B0(n360), .B1(n442), .Y(n128) );
  XOR2X1 U410 ( .A(b[6]), .B(n370), .Y(n441) );
  OAI22XL U411 ( .A0(n442), .A1(n359), .B0(n360), .B1(n443), .Y(n127) );
  XOR2X1 U412 ( .A(b[7]), .B(n370), .Y(n442) );
  OAI22XL U413 ( .A0(n443), .A1(n359), .B0(n360), .B1(n395), .Y(n126) );
  XOR2X1 U414 ( .A(b[9]), .B(n370), .Y(n395) );
  XOR2X1 U415 ( .A(b[8]), .B(n370), .Y(n443) );
  AO21X1 U416 ( .A0(n359), .A1(n360), .B0(n394), .Y(n125) );
  XOR2X1 U417 ( .A(b[10]), .B(n370), .Y(n394) );
  NOR2X1 U418 ( .A(n352), .B(n373), .Y(n124) );
  NOR2X1 U419 ( .A(n352), .B(n444), .Y(n122) );
  XOR2X1 U420 ( .A(b[2]), .B(n372), .Y(n444) );
  NOR2X1 U421 ( .A(n352), .B(n445), .Y(n121) );
  XOR2X1 U422 ( .A(b[3]), .B(n372), .Y(n445) );
  NOR2X1 U423 ( .A(n352), .B(n446), .Y(n120) );
  XOR2X1 U424 ( .A(b[4]), .B(n372), .Y(n446) );
  NOR2X1 U425 ( .A(n352), .B(n447), .Y(n119) );
  XOR2X1 U426 ( .A(b[5]), .B(n372), .Y(n447) );
  NOR2X1 U427 ( .A(n352), .B(n448), .Y(n118) );
  XOR2X1 U428 ( .A(b[6]), .B(n372), .Y(n448) );
  NOR2X1 U429 ( .A(n352), .B(n449), .Y(n117) );
  XOR2X1 U430 ( .A(b[7]), .B(n372), .Y(n449) );
  NOR2X1 U431 ( .A(n352), .B(n450), .Y(n116) );
  XOR2X1 U432 ( .A(b[8]), .B(n372), .Y(n450) );
  NOR2X1 U433 ( .A(n352), .B(n451), .Y(n115) );
  XOR2X1 U434 ( .A(b[9]), .B(n372), .Y(n451) );
  OAI21XL U435 ( .A0(b[0]), .A1(n362), .B0(n381), .Y(n113) );
  OAI32X1 U436 ( .A0(n363), .A1(b[0]), .A2(n354), .B0(n363), .B1(n353), .Y(
        n112) );
  XOR2X1 U437 ( .A(a[3]), .B(a[2]), .Y(n452) );
  OAI32X1 U438 ( .A0(n365), .A1(b[0]), .A2(n356), .B0(n365), .B1(n355), .Y(
        n111) );
  XOR2X1 U439 ( .A(a[5]), .B(a[4]), .Y(n453) );
  OAI32X1 U440 ( .A0(n368), .A1(b[0]), .A2(n358), .B0(n368), .B1(n357), .Y(
        n110) );
  XOR2X1 U441 ( .A(a[7]), .B(a[6]), .Y(n454) );
  OAI32X1 U442 ( .A0(n370), .A1(b[0]), .A2(n360), .B0(n370), .B1(n359), .Y(
        n109) );
  XOR2X1 U443 ( .A(a[9]), .B(a[8]), .Y(n455) );
  NOR3X1 U444 ( .A(n372), .B(b[0]), .C(n352), .Y(n108) );
  XNOR2X1 U445 ( .A(n372), .B(a[9]), .Y(n380) );
endmodule


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   sort_dicide, N339, N340, N341, N353, \xg[5][10] , \xg[5][9] ,
         \xg[5][8] , \xg[5][7] , \xg[5][6] , \xg[5][5] , \xg[5][4] ,
         \xg[5][3] , \xg[5][2] , \xg[5][1] , \xg[5][0] , \xg[2][10] ,
         \xg[2][9] , \xg[2][8] , \xg[2][7] , \xg[2][6] , \xg[2][5] ,
         \xg[2][4] , \xg[2][3] , \xg[2][2] , \xg[2][1] , \xg[2][0] ,
         \xg[1][10] , \xg[1][9] , \xg[1][8] , \xg[1][7] , \xg[1][6] ,
         \xg[1][5] , \xg[1][4] , \xg[1][3] , \xg[1][2] , \xg[1][1] ,
         \xg[1][0] , \xg[0][10] , \xg[0][9] , \xg[0][8] , \xg[0][7] ,
         \xg[0][6] , \xg[0][5] , \xg[0][4] , \xg[0][3] , \xg[0][2] ,
         \xg[0][1] , \xg[0][0] , N360, N361, N362, N363, N364, N365, N366,
         N367, N368, N369, N370, N383, N384, N385, N386, N387, N388, N389,
         N390, N391, N392, N393, N411, N412, N413, N414, N415, N416, N417,
         N418, N419, N420, N421, N423, N424, N425, N426, N427, N428, N429,
         N430, N431, N432, N433, N451, N452, N453, N454, N455, N456, N457,
         N458, N459, N460, N461, N463, N464, N465, N466, N467, N468, N469,
         N470, N471, N472, N473, N474, N475, N476, N477, N478, N479, N480,
         N481, N482, N483, N484, \yg[5][10] , \yg[5][9] , \yg[5][8] ,
         \yg[5][7] , \yg[5][6] , \yg[5][5] , \yg[5][4] , \yg[5][3] ,
         \yg[5][2] , \yg[5][1] , \yg[5][0] , \yg[2][10] , \yg[2][9] ,
         \yg[2][8] , \yg[2][7] , \yg[2][6] , \yg[2][5] , \yg[2][4] ,
         \yg[2][3] , \yg[2][2] , \yg[2][1] , \yg[2][0] , \yg[1][10] ,
         \yg[1][9] , \yg[1][8] , \yg[1][7] , \yg[1][6] , \yg[1][5] ,
         \yg[1][4] , \yg[1][3] , \yg[1][2] , \yg[1][1] , \yg[1][0] ,
         \yg[0][10] , \yg[0][9] , \yg[0][8] , \yg[0][7] , \yg[0][6] ,
         \yg[0][5] , \yg[0][4] , \yg[0][3] , \yg[0][2] , \yg[0][1] ,
         \yg[0][0] , N502, N503, N504, N505, N506, N507, N508, N509, N510,
         N511, N512, N539, N540, N541, N542, N543, N544, N545, N546, N547,
         N548, N549, N551, N552, N553, N554, N555, N556, N557, N558, N559,
         N560, N561, N563, N564, N565, N566, N567, N568, N569, N570, N571,
         N572, N573, N591, N592, N593, N594, N595, N596, N597, N598, N599,
         N600, N601, N603, N604, N605, N606, N607, N608, N609, N610, N611,
         N612, N613, N614, N615, N616, N617, N618, N619, N620, N621, N622,
         N623, N624, N638, N639, N640, N641, N642, N643, N644, N645, N646,
         N647, N648, N649, N650, N651, N652, N653, N654, N655, N656, N657,
         N658, N659, N682, N683, N684, N685, N686, N687, N688, N689, N690,
         N691, N692, N693, N694, N695, N696, N697, N698, N699, N700, N701,
         N702, N703, N726, N727, N728, N729, N730, N731, N732, N733, N734,
         N735, N737, N738, N739, N740, N741, N742, N743, N744, N745, N746,
         N762, N763, N764, N765, N766, N767, N768, N769, N770, N771, N772,
         N880, N895, N896, N897, N898, N899, N900, N901, N902, N903, N904,
         N905, N1026, N1027, N1028, N1033, n53, n96, n97, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n125, n126, n127, n129, n131, n133, n134, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n162,
         n164, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n191, n193, n194, n195, n196, n197, n198, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n253, n254, n255, n256, n257, n258, n260, n261, n264, n265, n266,
         n267, n268, n269, n270, n271, n273, n276, n277, n278, n280, n281,
         n282, n285, n286, n287, n289, n290, n291, n292, n293, n294, n297,
         n298, n302, n303, n304, n305, n306, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n332, n351, n352, n353, n354,
         n356, n357, n358, n359, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n628, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1479, n1481, n1482, n1483, n1484, n1485,
         n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495,
         n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505,
         n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515,
         n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525,
         n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535,
         n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545,
         n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555,
         n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565,
         n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575,
         n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585,
         n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595,
         n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605,
         n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615,
         n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625,
         n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635,
         n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645,
         n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655,
         n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665,
         n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675,
         n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685,
         n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695,
         n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705;
  wire   [3:0] ns;
  wire   [2:0] ctr6;
  wire   [21:0] cross;
  wire   [10:0] ABx;
  wire   [10:0] xt;
  wire   [10:0] ABy;
  wire   [10:0] yt;

  OAI211X2 U457 ( .A0(n1701), .A1(n268), .B0(n297), .C0(n298), .Y(ns[1]) );
  geofence_DW01_sub_0 sub_218 ( .A(cross), .B({N659, N658, N657, N656, N655, 
        N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, N644, N643, 
        N642, N641, N640, N639, N638}), .CI(1'b0), .DIFF({N703, N702, N701, 
        N700, N699, N698, N697, N696, N695, N694, N693, N692, N691, N690, N689, 
        N688, N687, N686, N685, N684, N683, N682}) );
  geofence_DW01_sub_1 sub_202 ( .A({N502, N503, N504, N505, N506, N507, N508, 
        N509, N510, N511, N512}), .B({1'b0, yt[9:0]}), .CI(1'b0), .DIFF({N613, 
        N612, N611, N610, N609, N608, N607, N606, N605, N604, N603}) );
  geofence_DW01_sub_2 sub_199 ( .A({N905, N904, N903, N902, N901, N900, N899, 
        N898, N897, N896, N895}), .B({N502, N503, N504, N505, N506, N507, N508, 
        N509, N510, N511, N512}), .CI(1'b0), .DIFF({N601, N600, N599, N598, 
        N597, N596, N595, N594, N593, N592, N591}) );
  geofence_DW01_sub_3 sub_196 ( .A({\yg[0][10] , \yg[0][9] , \yg[0][8] , 
        \yg[0][7] , \yg[0][6] , \yg[0][5] , \yg[0][4] , \yg[0][3] , \yg[0][2] , 
        \yg[0][1] , \yg[0][0] }), .B({\yg[5][10] , \yg[5][9] , \yg[5][8] , 
        \yg[5][7] , \yg[5][6] , \yg[5][5] , \yg[5][4] , \yg[5][3] , \yg[5][2] , 
        \yg[5][1] , \yg[5][0] }), .CI(1'b0), .DIFF({N573, N572, N571, N570, 
        N569, N568, N567, N566, N565, N564, N563}) );
  geofence_DW01_sub_4 sub_193 ( .A({N502, N503, N504, N505, N506, N507, N508, 
        N509, N510, N511, N512}), .B({\yg[0][10] , \yg[0][9] , \yg[0][8] , 
        \yg[0][7] , \yg[0][6] , \yg[0][5] , \yg[0][4] , \yg[0][3] , \yg[0][2] , 
        \yg[0][1] , \yg[0][0] }), .CI(1'b0), .DIFF({N561, N560, N559, N558, 
        N557, N556, N555, N554, N553, N552, N551}) );
  geofence_DW01_sub_5 sub_190 ( .A({N905, N904, N903, N902, N901, N900, N899, 
        N898, N897, N896, N895}), .B({\yg[0][10] , \yg[0][9] , \yg[0][8] , 
        \yg[0][7] , \yg[0][6] , \yg[0][5] , \yg[0][4] , \yg[0][3] , \yg[0][2] , 
        \yg[0][1] , \yg[0][0] }), .CI(1'b0), .DIFF({N549, N548, N547, N546, 
        N545, N544, N543, N542, N541, N540, N539}) );
  geofence_DW01_sub_6 sub_178 ( .A({N360, N361, N362, N363, N364, N365, N366, 
        N367, N368, N369, N370}), .B({1'b0, xt[9:0]}), .CI(1'b0), .DIFF({N473, 
        N472, N471, N470, N469, N468, N467, N466, N465, N464, N463}) );
  geofence_DW01_sub_7 sub_175 ( .A({N772, N771, N770, N769, N768, N767, N766, 
        N765, N764, N763, N762}), .B({N360, N361, N362, N363, N364, N365, N366, 
        N367, N368, N369, N370}), .CI(1'b0), .DIFF({N461, N460, N459, N458, 
        N457, N456, N455, N454, N453, N452, N451}) );
  geofence_DW01_sub_8 sub_172 ( .A({\xg[0][10] , \xg[0][9] , \xg[0][8] , 
        \xg[0][7] , \xg[0][6] , \xg[0][5] , \xg[0][4] , \xg[0][3] , \xg[0][2] , 
        \xg[0][1] , \xg[0][0] }), .B({\xg[5][10] , \xg[5][9] , \xg[5][8] , 
        \xg[5][7] , \xg[5][6] , \xg[5][5] , \xg[5][4] , \xg[5][3] , \xg[5][2] , 
        \xg[5][1] , \xg[5][0] }), .CI(1'b0), .DIFF({N433, N432, N431, N430, 
        N429, N428, N427, N426, N425, N424, N423}) );
  geofence_DW01_sub_9 sub_169 ( .A({N772, N771, N770, N769, N768, N767, N766, 
        N765, N764, N763, N762}), .B({\xg[0][10] , \xg[0][9] , \xg[0][8] , 
        \xg[0][7] , \xg[0][6] , \xg[0][5] , \xg[0][4] , \xg[0][3] , \xg[0][2] , 
        \xg[0][1] , \xg[0][0] }), .CI(1'b0), .DIFF({N421, N420, N419, N418, 
        N417, N416, N415, N414, N413, N412, N411}) );
  geofence_DW01_sub_10 sub_166 ( .A({N360, N361, N362, N363, N364, N365, N366, 
        N367, N368, N369, N370}), .B({\xg[0][10] , \xg[0][9] , \xg[0][8] , 
        \xg[0][7] , \xg[0][6] , \xg[0][5] , \xg[0][4] , \xg[0][3] , \xg[0][2] , 
        \xg[0][1] , \xg[0][0] }), .CI(1'b0), .DIFF({N393, N392, N391, N390, 
        N389, N388, N387, N386, N385, N384, N383}) );
  geofence_DW_mult_tc_0 r480 ( .a(ABx), .b(ABy), .product({N659, N658, N657, 
        N656, N655, N654, N653, N652, N651, N650, N649, N648, N647, N646, N645, 
        N644, N643, N642, N641, N640, N639, N638}) );
  EDFFX1 \tempx_reg[0]  ( .D(N762), .E(n1587), .CK(clk), .QN(n1474) );
  EDFFX1 \tempx_reg[9]  ( .D(N771), .E(n1587), .CK(clk), .QN(n1465) );
  EDFFX1 \tempx_reg[8]  ( .D(N770), .E(n1587), .CK(clk), .QN(n1466) );
  EDFFX1 \tempx_reg[7]  ( .D(N769), .E(n1587), .CK(clk), .QN(n1467) );
  EDFFX1 \tempx_reg[6]  ( .D(N768), .E(n1587), .CK(clk), .QN(n1468) );
  EDFFX1 \tempx_reg[5]  ( .D(N767), .E(n1587), .CK(clk), .QN(n1469) );
  EDFFX1 \tempx_reg[4]  ( .D(N766), .E(n1587), .CK(clk), .QN(n1470) );
  EDFFX1 \tempx_reg[3]  ( .D(N765), .E(n1587), .CK(clk), .QN(n1471) );
  EDFFX1 \tempx_reg[2]  ( .D(N764), .E(n1587), .CK(clk), .QN(n1472) );
  EDFFX1 \tempx_reg[1]  ( .D(N763), .E(n1587), .CK(clk), .QN(n1473) );
  EDFFX1 \tempy_reg[9]  ( .D(N904), .E(n1587), .CK(clk), .QN(n1464) );
  EDFFX1 \tempy_reg[8]  ( .D(N903), .E(n1587), .CK(clk), .QN(n1463) );
  EDFFX1 \tempy_reg[7]  ( .D(N902), .E(n1587), .CK(clk), .QN(n1462) );
  EDFFX1 \tempy_reg[6]  ( .D(N901), .E(n1587), .CK(clk), .QN(n1461) );
  EDFFX1 \tempy_reg[5]  ( .D(N900), .E(n1587), .CK(clk), .QN(n1460) );
  EDFFX1 \tempy_reg[4]  ( .D(N899), .E(n1587), .CK(clk), .QN(n1459) );
  EDFFX1 \tempy_reg[3]  ( .D(N898), .E(n1587), .CK(clk), .QN(n1458) );
  EDFFX1 \tempy_reg[2]  ( .D(N897), .E(n1587), .CK(clk), .QN(n1457) );
  EDFFX1 \tempy_reg[1]  ( .D(N896), .E(n1587), .CK(clk), .QN(n1456) );
  EDFFX1 \tempy_reg[0]  ( .D(N895), .E(n1587), .CK(clk), .QN(n1455) );
  DFFRX1 \yt_reg[9]  ( .D(N746), .CK(clk), .RN(n1626), .Q(yt[9]), .QN(n330) );
  DFFRX1 \yt_reg[8]  ( .D(N745), .CK(clk), .RN(n1626), .Q(yt[8]), .QN(n329) );
  DFFRX1 \yt_reg[7]  ( .D(N744), .CK(clk), .RN(n1626), .Q(yt[7]), .QN(n328) );
  DFFRX1 \xt_reg[9]  ( .D(N735), .CK(clk), .RN(n1626), .Q(xt[9]), .QN(n320) );
  DFFRX1 \xt_reg[8]  ( .D(N734), .CK(clk), .RN(n1625), .Q(xt[8]), .QN(n319) );
  DFFRX1 \xt_reg[7]  ( .D(N733), .CK(clk), .RN(n1625), .Q(xt[7]), .QN(n318) );
  DFFRX1 \cross_reg[19]  ( .D(n1640), .CK(clk), .RN(n1627), .Q(cross[19]) );
  DFFRX1 \cross_reg[20]  ( .D(n1639), .CK(clk), .RN(n1627), .Q(cross[20]) );
  EDFFX1 \tempx_reg[10]  ( .D(N772), .E(n1587), .CK(clk), .Q(n351), .QN(n1476)
         );
  EDFFX1 \tempy_reg[10]  ( .D(N905), .E(n1587), .CK(clk), .Q(n332), .QN(n1475)
         );
  DFFRX1 \yt_reg[6]  ( .D(N743), .CK(clk), .RN(n1626), .Q(yt[6]), .QN(n327) );
  DFFRX1 \yt_reg[5]  ( .D(N742), .CK(clk), .RN(n1626), .Q(yt[5]), .QN(n326) );
  DFFRX1 \yt_reg[4]  ( .D(N741), .CK(clk), .RN(n1626), .Q(yt[4]), .QN(n325) );
  DFFRX1 \yt_reg[3]  ( .D(N740), .CK(clk), .RN(n1626), .Q(yt[3]), .QN(n324) );
  DFFRX1 \yt_reg[2]  ( .D(N739), .CK(clk), .RN(n1626), .Q(yt[2]), .QN(n323) );
  DFFRX1 \xt_reg[6]  ( .D(N732), .CK(clk), .RN(n1625), .Q(xt[6]), .QN(n317) );
  DFFRX1 \xt_reg[5]  ( .D(N731), .CK(clk), .RN(n1625), .Q(xt[5]), .QN(n316) );
  DFFRX1 \xt_reg[4]  ( .D(N730), .CK(clk), .RN(n1625), .Q(xt[4]), .QN(n315) );
  DFFRX1 \xt_reg[3]  ( .D(N729), .CK(clk), .RN(n1625), .Q(xt[3]), .QN(n314) );
  DFFRX1 \xt_reg[2]  ( .D(N728), .CK(clk), .RN(n1625), .Q(xt[2]), .QN(n313) );
  DFFRX1 \cross_reg[14]  ( .D(n1645), .CK(clk), .RN(n1627), .Q(cross[14]) );
  DFFRX1 \cross_reg[15]  ( .D(n1644), .CK(clk), .RN(n1627), .Q(cross[15]) );
  DFFRX1 \cross_reg[16]  ( .D(n1643), .CK(clk), .RN(n1627), .Q(cross[16]) );
  DFFRX1 \cross_reg[17]  ( .D(n1642), .CK(clk), .RN(n1627), .Q(cross[17]) );
  DFFRX1 \cross_reg[18]  ( .D(n1641), .CK(clk), .RN(n1627), .Q(cross[18]) );
  DFFRX1 \xg_reg[3][10]  ( .D(n581), .CK(clk), .RN(n1621), .Q(n1454), .QN(n408) );
  DFFRX1 \yg_reg[3][10]  ( .D(n562), .CK(clk), .RN(n1619), .Q(n1453), .QN(n427) );
  DFFRX1 \yt_reg[1]  ( .D(N738), .CK(clk), .RN(n1626), .Q(yt[1]), .QN(n322) );
  DFFRX1 \yt_reg[0]  ( .D(N737), .CK(clk), .RN(n1626), .Q(yt[0]), .QN(n321) );
  DFFRX1 \xt_reg[1]  ( .D(N727), .CK(clk), .RN(n1625), .Q(xt[1]), .QN(n312) );
  DFFRX1 \xt_reg[0]  ( .D(N726), .CK(clk), .RN(n1625), .Q(xt[0]), .QN(n311) );
  DFFRX1 \xg_reg[2][9]  ( .D(n558), .CK(clk), .RN(n1619), .Q(\xg[2][9] ), .QN(
        n431) );
  DFFRX1 \xg_reg[2][8]  ( .D(n557), .CK(clk), .RN(n1619), .Q(\xg[2][8] ), .QN(
        n432) );
  DFFRX1 \xg_reg[2][7]  ( .D(n556), .CK(clk), .RN(n1619), .Q(\xg[2][7] ), .QN(
        n433) );
  DFFRX1 \yg_reg[2][7]  ( .D(n543), .CK(clk), .RN(n1618), .Q(\yg[2][7] ), .QN(
        n446) );
  DFFRX1 \yg_reg[2][8]  ( .D(n542), .CK(clk), .RN(n1617), .Q(\yg[2][8] ), .QN(
        n447) );
  DFFRX1 \yg_reg[2][9]  ( .D(n541), .CK(clk), .RN(n1617), .Q(\yg[2][9] ), .QN(
        n448) );
  DFFRX1 \yg_reg[2][10]  ( .D(n540), .CK(clk), .RN(n1617), .Q(\yg[2][10] ), 
        .QN(n449) );
  DFFRX1 \xg_reg[2][10]  ( .D(n559), .CK(clk), .RN(n1619), .Q(\xg[2][10] ), 
        .QN(n430) );
  DFFRX1 \xg_reg[1][10]  ( .D(n537), .CK(clk), .RN(n1617), .Q(\xg[1][10] ), 
        .QN(n452) );
  DFFRX1 \xg_reg[1][9]  ( .D(n536), .CK(clk), .RN(n1617), .Q(\xg[1][9] ), .QN(
        n453) );
  DFFRX1 \xg_reg[1][8]  ( .D(n535), .CK(clk), .RN(n1617), .Q(\xg[1][8] ), .QN(
        n454) );
  DFFRX1 \xg_reg[1][7]  ( .D(n534), .CK(clk), .RN(n1617), .Q(\xg[1][7] ), .QN(
        n455) );
  DFFRX1 \xg_reg[1][6]  ( .D(n533), .CK(clk), .RN(n1617), .Q(\xg[1][6] ), .QN(
        n456) );
  DFFRX1 \yg_reg[1][6]  ( .D(n522), .CK(clk), .RN(n1616), .Q(\yg[1][6] ), .QN(
        n467) );
  DFFRX1 \yg_reg[1][7]  ( .D(n521), .CK(clk), .RN(n1616), .Q(\yg[1][7] ), .QN(
        n468) );
  DFFRX1 \yg_reg[1][8]  ( .D(n520), .CK(clk), .RN(n1616), .Q(\yg[1][8] ), .QN(
        n469) );
  DFFRX1 \yg_reg[1][9]  ( .D(n519), .CK(clk), .RN(n1616), .Q(\yg[1][9] ), .QN(
        n470) );
  DFFRX1 \yg_reg[1][10]  ( .D(n518), .CK(clk), .RN(n1615), .Q(\yg[1][10] ), 
        .QN(n471) );
  DFFRX1 \cross_reg[9]  ( .D(n1650), .CK(clk), .RN(n1627), .Q(cross[9]) );
  DFFRX1 \cross_reg[10]  ( .D(n1649), .CK(clk), .RN(n1627), .Q(cross[10]) );
  DFFRX1 \cross_reg[11]  ( .D(n1648), .CK(clk), .RN(n1627), .Q(cross[11]) );
  DFFRX1 \cross_reg[12]  ( .D(n1647), .CK(clk), .RN(n1627), .Q(cross[12]) );
  DFFRX1 \cross_reg[13]  ( .D(n1646), .CK(clk), .RN(n1627), .Q(cross[13]) );
  DFFRX1 \yg_reg[5][7]  ( .D(n609), .CK(clk), .RN(n1623), .Q(\yg[5][7] ), .QN(
        n380) );
  DFFRX1 \yg_reg[5][8]  ( .D(n608), .CK(clk), .RN(n1623), .Q(\yg[5][8] ), .QN(
        n381) );
  DFFRX1 \yg_reg[5][9]  ( .D(n607), .CK(clk), .RN(n1623), .Q(\yg[5][9] ), .QN(
        n382) );
  DFFRX1 \yg_reg[5][10]  ( .D(n606), .CK(clk), .RN(n1623), .Q(\yg[5][10] ), 
        .QN(n383) );
  DFFRX1 \xg_reg[5][10]  ( .D(n625), .CK(clk), .RN(n1624), .Q(\xg[5][10] ), 
        .QN(n364) );
  DFFRX1 \xg_reg[5][9]  ( .D(n624), .CK(clk), .RN(n1624), .Q(\xg[5][9] ), .QN(
        n365) );
  DFFRX1 \xg_reg[5][8]  ( .D(n623), .CK(clk), .RN(n1624), .Q(\xg[5][8] ), .QN(
        n366) );
  DFFRX1 \xg_reg[5][7]  ( .D(n622), .CK(clk), .RN(n1624), .Q(\xg[5][7] ), .QN(
        n367) );
  DFFRX1 \xg_reg[5][6]  ( .D(n621), .CK(clk), .RN(n1624), .Q(\xg[5][6] ), .QN(
        n368) );
  DFFRX1 \xg_reg[4][10]  ( .D(n603), .CK(clk), .RN(n1623), .Q(n1448), .QN(n386) );
  DFFRX1 \xg_reg[4][9]  ( .D(n602), .CK(clk), .RN(n1622), .Q(n1447), .QN(n387)
         );
  DFFRX1 \xg_reg[4][8]  ( .D(n601), .CK(clk), .RN(n1622), .Q(n1438), .QN(n388)
         );
  DFFRX1 \xg_reg[4][7]  ( .D(n600), .CK(clk), .RN(n1622), .Q(n1437), .QN(n389)
         );
  DFFRX1 \xg_reg[4][6]  ( .D(n599), .CK(clk), .RN(n1622), .Q(n1430), .QN(n390)
         );
  DFFRX1 \yg_reg[4][6]  ( .D(n588), .CK(clk), .RN(n1621), .Q(n1428), .QN(n401)
         );
  DFFRX1 \yg_reg[4][7]  ( .D(n587), .CK(clk), .RN(n1621), .Q(n1435), .QN(n402)
         );
  DFFRX1 \yg_reg[4][8]  ( .D(n586), .CK(clk), .RN(n1621), .Q(n1436), .QN(n403)
         );
  DFFRX1 \yg_reg[4][9]  ( .D(n585), .CK(clk), .RN(n1621), .Q(n1445), .QN(n404)
         );
  DFFRX1 \yg_reg[4][10]  ( .D(n584), .CK(clk), .RN(n1621), .Q(n1446), .QN(n405) );
  DFFRX1 \xg_reg[3][9]  ( .D(n580), .CK(clk), .RN(n1621), .Q(n1452), .QN(n409)
         );
  DFFRX1 \xg_reg[3][8]  ( .D(n579), .CK(clk), .RN(n1621), .Q(n1451), .QN(n410)
         );
  DFFRX1 \xg_reg[3][7]  ( .D(n578), .CK(clk), .RN(n1620), .Q(n1442), .QN(n411)
         );
  DFFRX1 \xg_reg[3][6]  ( .D(n577), .CK(clk), .RN(n1620), .Q(n1441), .QN(n412)
         );
  DFFRX1 \yg_reg[3][6]  ( .D(n566), .CK(clk), .RN(n1619), .Q(n1439), .QN(n423)
         );
  DFFRX1 \yg_reg[3][7]  ( .D(n565), .CK(clk), .RN(n1619), .Q(n1440), .QN(n424)
         );
  DFFRX1 \yg_reg[3][8]  ( .D(n564), .CK(clk), .RN(n1619), .Q(n1449), .QN(n425)
         );
  DFFRX1 \yg_reg[3][9]  ( .D(n563), .CK(clk), .RN(n1619), .Q(n1450), .QN(n426)
         );
  DFFRX1 \xg_reg[0][10]  ( .D(n515), .CK(clk), .RN(n1615), .Q(\xg[0][10] ), 
        .QN(n474) );
  DFFRX1 \xg_reg[0][6]  ( .D(n509), .CK(clk), .RN(n1615), .Q(\xg[0][6] ), .QN(
        n480) );
  DFFRX1 \xg_reg[0][7]  ( .D(n508), .CK(clk), .RN(n1615), .Q(\xg[0][7] ), .QN(
        n481) );
  DFFRX1 \xg_reg[0][8]  ( .D(n507), .CK(clk), .RN(n1615), .Q(\xg[0][8] ), .QN(
        n482) );
  DFFRX1 \xg_reg[0][9]  ( .D(n506), .CK(clk), .RN(n1614), .Q(\xg[0][9] ), .QN(
        n483) );
  DFFRX1 \yg_reg[0][9]  ( .D(n505), .CK(clk), .RN(n1613), .Q(\yg[0][9] ), .QN(
        n484) );
  DFFRX1 \yg_reg[0][8]  ( .D(n504), .CK(clk), .RN(n1613), .Q(\yg[0][8] ), .QN(
        n485) );
  DFFRX1 \yg_reg[0][7]  ( .D(n503), .CK(clk), .RN(n1613), .Q(\yg[0][7] ), .QN(
        n486) );
  DFFRX1 \yg_reg[0][6]  ( .D(n502), .CK(clk), .RN(n1613), .Q(\yg[0][6] ), .QN(
        n487) );
  DFFRX1 \yg_reg[0][10]  ( .D(n496), .CK(clk), .RN(n1613), .Q(\yg[0][10] ), 
        .QN(n493) );
  DFFRX1 \xg_reg[2][6]  ( .D(n555), .CK(clk), .RN(n1619), .Q(\xg[2][6] ), .QN(
        n434) );
  DFFRX1 \xg_reg[2][5]  ( .D(n554), .CK(clk), .RN(n1618), .Q(\xg[2][5] ), .QN(
        n435) );
  DFFRX1 \xg_reg[2][4]  ( .D(n553), .CK(clk), .RN(n1618), .Q(\xg[2][4] ), .QN(
        n436) );
  DFFRX1 \xg_reg[2][3]  ( .D(n552), .CK(clk), .RN(n1618), .Q(\xg[2][3] ), .QN(
        n437) );
  DFFRX1 \xg_reg[2][2]  ( .D(n551), .CK(clk), .RN(n1618), .Q(\xg[2][2] ), .QN(
        n438) );
  DFFRX1 \yg_reg[2][2]  ( .D(n548), .CK(clk), .RN(n1618), .Q(\yg[2][2] ), .QN(
        n441) );
  DFFRX1 \yg_reg[2][3]  ( .D(n547), .CK(clk), .RN(n1618), .Q(\yg[2][3] ), .QN(
        n442) );
  DFFRX1 \yg_reg[2][4]  ( .D(n546), .CK(clk), .RN(n1618), .Q(\yg[2][4] ), .QN(
        n443) );
  DFFRX1 \yg_reg[2][5]  ( .D(n545), .CK(clk), .RN(n1618), .Q(\yg[2][5] ), .QN(
        n444) );
  DFFRX1 \yg_reg[2][6]  ( .D(n544), .CK(clk), .RN(n1618), .Q(\yg[2][6] ), .QN(
        n445) );
  DFFRX1 \xg_reg[1][5]  ( .D(n532), .CK(clk), .RN(n1617), .Q(\xg[1][5] ), .QN(
        n457) );
  DFFRX1 \xg_reg[1][4]  ( .D(n531), .CK(clk), .RN(n1617), .Q(\xg[1][4] ), .QN(
        n458) );
  DFFRX1 \xg_reg[1][3]  ( .D(n530), .CK(clk), .RN(n1616), .Q(\xg[1][3] ), .QN(
        n459) );
  DFFRX1 \xg_reg[1][2]  ( .D(n529), .CK(clk), .RN(n1616), .Q(\xg[1][2] ), .QN(
        n460) );
  DFFRX1 \yg_reg[1][2]  ( .D(n526), .CK(clk), .RN(n1616), .Q(\yg[1][2] ), .QN(
        n463) );
  DFFRX1 \yg_reg[1][3]  ( .D(n525), .CK(clk), .RN(n1616), .Q(\yg[1][3] ), .QN(
        n464) );
  DFFRX1 \yg_reg[1][4]  ( .D(n524), .CK(clk), .RN(n1616), .Q(\yg[1][4] ), .QN(
        n465) );
  DFFRX1 \yg_reg[1][5]  ( .D(n523), .CK(clk), .RN(n1616), .Q(\yg[1][5] ), .QN(
        n466) );
  DFFRX1 \cross_reg[4]  ( .D(n1655), .CK(clk), .RN(n1628), .Q(cross[4]) );
  DFFRX1 \cross_reg[5]  ( .D(n1654), .CK(clk), .RN(n1628), .Q(cross[5]) );
  DFFRX1 \cross_reg[6]  ( .D(n1653), .CK(clk), .RN(n1628), .Q(cross[6]) );
  DFFRX1 \cross_reg[7]  ( .D(n1652), .CK(clk), .RN(n1628), .Q(cross[7]) );
  DFFRX1 \cross_reg[8]  ( .D(n1651), .CK(clk), .RN(n1628), .Q(cross[8]) );
  DFFRX1 \counter_max_reg[1]  ( .D(N1027), .CK(clk), .RN(n1629), .Q(n1444), 
        .QN(n309) );
  DFFRX1 \counter_max_reg[2]  ( .D(N1028), .CK(clk), .RN(n1625), .Q(n1486) );
  DFFRX1 \yg_reg[5][2]  ( .D(n614), .CK(clk), .RN(n1623), .Q(\yg[5][2] ), .QN(
        n375) );
  DFFRX1 \yg_reg[5][3]  ( .D(n613), .CK(clk), .RN(n1623), .Q(\yg[5][3] ), .QN(
        n376) );
  DFFRX1 \yg_reg[5][4]  ( .D(n612), .CK(clk), .RN(n1623), .Q(\yg[5][4] ), .QN(
        n377) );
  DFFRX1 \yg_reg[5][5]  ( .D(n611), .CK(clk), .RN(n1623), .Q(\yg[5][5] ), .QN(
        n378) );
  DFFRX1 \yg_reg[5][6]  ( .D(n610), .CK(clk), .RN(n1623), .Q(\yg[5][6] ), .QN(
        n379) );
  DFFRX1 \xg_reg[5][5]  ( .D(n620), .CK(clk), .RN(n1624), .Q(\xg[5][5] ), .QN(
        n369) );
  DFFRX1 \xg_reg[5][4]  ( .D(n619), .CK(clk), .RN(n1624), .Q(\xg[5][4] ), .QN(
        n370) );
  DFFRX1 \xg_reg[5][3]  ( .D(n618), .CK(clk), .RN(n1624), .Q(\xg[5][3] ), .QN(
        n371) );
  DFFRX1 \xg_reg[5][2]  ( .D(n617), .CK(clk), .RN(n1624), .Q(\xg[5][2] ), .QN(
        n372) );
  DFFRX1 \xg_reg[5][1]  ( .D(n616), .CK(clk), .RN(n1624), .Q(\xg[5][1] ), .QN(
        n373) );
  DFFRX1 \xg_reg[4][5]  ( .D(n598), .CK(clk), .RN(n1622), .Q(n1429), .QN(n391)
         );
  DFFRX1 \xg_reg[4][4]  ( .D(n597), .CK(clk), .RN(n1622), .Q(n1422), .QN(n392)
         );
  DFFRX1 \xg_reg[4][3]  ( .D(n596), .CK(clk), .RN(n1622), .Q(n1421), .QN(n393)
         );
  DFFRX1 \xg_reg[4][2]  ( .D(n595), .CK(clk), .RN(n1622), .Q(n1414), .QN(n394)
         );
  DFFRX1 \xg_reg[4][1]  ( .D(n594), .CK(clk), .RN(n1622), .Q(n1413), .QN(n395)
         );
  DFFRX1 \yg_reg[4][1]  ( .D(n593), .CK(clk), .RN(n1622), .Q(n1410), .QN(n396)
         );
  DFFRX1 \yg_reg[4][2]  ( .D(n592), .CK(clk), .RN(n1622), .Q(n1411), .QN(n397)
         );
  DFFRX1 \yg_reg[4][3]  ( .D(n591), .CK(clk), .RN(n1622), .Q(n1419), .QN(n398)
         );
  DFFRX1 \yg_reg[4][4]  ( .D(n590), .CK(clk), .RN(n1621), .Q(n1420), .QN(n399)
         );
  DFFRX1 \yg_reg[4][5]  ( .D(n589), .CK(clk), .RN(n1621), .Q(n1427), .QN(n400)
         );
  DFFRX1 \xg_reg[3][5]  ( .D(n576), .CK(clk), .RN(n1620), .Q(n1434), .QN(n413)
         );
  DFFRX1 \xg_reg[3][4]  ( .D(n575), .CK(clk), .RN(n1620), .Q(n1433), .QN(n414)
         );
  DFFRX1 \xg_reg[3][3]  ( .D(n574), .CK(clk), .RN(n1620), .Q(n1426), .QN(n415)
         );
  DFFRX1 \xg_reg[3][2]  ( .D(n573), .CK(clk), .RN(n1620), .Q(n1425), .QN(n416)
         );
  DFFRX1 \xg_reg[3][1]  ( .D(n572), .CK(clk), .RN(n1620), .Q(n1416), .QN(n417)
         );
  DFFRX1 \yg_reg[3][1]  ( .D(n571), .CK(clk), .RN(n1620), .Q(n1415), .QN(n418)
         );
  DFFRX1 \yg_reg[3][2]  ( .D(n570), .CK(clk), .RN(n1620), .Q(n1423), .QN(n419)
         );
  DFFRX1 \yg_reg[3][3]  ( .D(n569), .CK(clk), .RN(n1620), .Q(n1424), .QN(n420)
         );
  DFFRX1 \yg_reg[3][4]  ( .D(n568), .CK(clk), .RN(n1620), .Q(n1431), .QN(n421)
         );
  DFFRX1 \yg_reg[3][5]  ( .D(n567), .CK(clk), .RN(n1620), .Q(n1432), .QN(n422)
         );
  DFFRX1 compare_reg ( .D(n628), .CK(clk), .RN(n1629), .QN(n362) );
  DFFRX1 \xg_reg[0][1]  ( .D(n514), .CK(clk), .RN(n1615), .Q(\xg[0][1] ), .QN(
        n475) );
  DFFRX1 \xg_reg[0][2]  ( .D(n513), .CK(clk), .RN(n1615), .Q(\xg[0][2] ), .QN(
        n476) );
  DFFRX1 \xg_reg[0][3]  ( .D(n512), .CK(clk), .RN(n1615), .Q(\xg[0][3] ), .QN(
        n477) );
  DFFRX1 \xg_reg[0][4]  ( .D(n511), .CK(clk), .RN(n1615), .Q(\xg[0][4] ), .QN(
        n478) );
  DFFRX1 \xg_reg[0][5]  ( .D(n510), .CK(clk), .RN(n1615), .Q(\xg[0][5] ), .QN(
        n479) );
  DFFRX1 \yg_reg[0][5]  ( .D(n501), .CK(clk), .RN(n1613), .Q(\yg[0][5] ), .QN(
        n488) );
  DFFRX1 \yg_reg[0][4]  ( .D(n500), .CK(clk), .RN(n1613), .Q(\yg[0][4] ), .QN(
        n489) );
  DFFRX1 \yg_reg[0][3]  ( .D(n499), .CK(clk), .RN(n1613), .Q(\yg[0][3] ), .QN(
        n490) );
  DFFRX1 \yg_reg[0][2]  ( .D(n498), .CK(clk), .RN(n1613), .Q(\yg[0][2] ), .QN(
        n491) );
  DFFRX1 \yg_reg[0][1]  ( .D(n497), .CK(clk), .RN(n1613), .Q(\yg[0][1] ), .QN(
        n492) );
  DFFRX1 \cross_reg[21]  ( .D(n1638), .CK(clk), .RN(n1626), .Q(cross[21]), 
        .QN(n361) );
  DFFRX1 \xg_reg[2][0]  ( .D(n560), .CK(clk), .RN(n1619), .Q(\xg[2][0] ), .QN(
        n429) );
  DFFRX1 \xg_reg[2][1]  ( .D(n550), .CK(clk), .RN(n1618), .Q(\xg[2][1] ), .QN(
        n439) );
  DFFRX1 \yg_reg[2][1]  ( .D(n549), .CK(clk), .RN(n1618), .Q(\yg[2][1] ), .QN(
        n440) );
  DFFRX1 \yg_reg[2][0]  ( .D(n539), .CK(clk), .RN(n1617), .Q(\yg[2][0] ), .QN(
        n450) );
  DFFRX1 \xg_reg[1][0]  ( .D(n538), .CK(clk), .RN(n1617), .Q(\xg[1][0] ), .QN(
        n451) );
  DFFRX1 \xg_reg[1][1]  ( .D(n528), .CK(clk), .RN(n1616), .Q(\xg[1][1] ), .QN(
        n461) );
  DFFRX1 \yg_reg[1][1]  ( .D(n527), .CK(clk), .RN(n1616), .Q(\yg[1][1] ), .QN(
        n462) );
  DFFRX1 \yg_reg[1][0]  ( .D(n517), .CK(clk), .RN(n1615), .Q(\yg[1][0] ), .QN(
        n472) );
  DFFRXL \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(n1628), .Q(n1408), .QN(n359)
         );
  DFFRX1 \cross_reg[1]  ( .D(n1658), .CK(clk), .RN(n1628), .Q(cross[1]) );
  DFFRX1 \cross_reg[2]  ( .D(n1657), .CK(clk), .RN(n1628), .Q(cross[2]) );
  DFFRX1 \cross_reg[3]  ( .D(n1656), .CK(clk), .RN(n1628), .Q(cross[3]) );
  DFFRX1 \yg_reg[5][1]  ( .D(n615), .CK(clk), .RN(n1624), .Q(\yg[5][1] ), .QN(
        n374) );
  DFFRX1 \yg_reg[5][0]  ( .D(n605), .CK(clk), .RN(n1623), .Q(\yg[5][0] ), .QN(
        n384) );
  DFFRX1 \xg_reg[5][0]  ( .D(n626), .CK(clk), .RN(n1624), .Q(\xg[5][0] ), .QN(
        n363) );
  DFFRX1 \xg_reg[4][0]  ( .D(n604), .CK(clk), .RN(n1623), .Q(n1412), .QN(n385)
         );
  DFFRX1 \yg_reg[4][0]  ( .D(n583), .CK(clk), .RN(n1621), .Q(n1409), .QN(n406)
         );
  DFFRX1 \xg_reg[3][0]  ( .D(n582), .CK(clk), .RN(n1621), .Q(n1418), .QN(n407)
         );
  DFFRX1 \yg_reg[3][0]  ( .D(n561), .CK(clk), .RN(n1619), .Q(n1417), .QN(n428)
         );
  DFFRX1 \cross_reg[0]  ( .D(n1659), .CK(clk), .RN(n1628), .Q(cross[0]) );
  DFFRX1 \cs_reg[3]  ( .D(ns[3]), .CK(clk), .RN(n1628), .Q(n1404), .QN(n356)
         );
  DFFRX1 \cs_reg[0]  ( .D(n1571), .CK(clk), .RN(n1629), .Q(n1407), .QN(n357)
         );
  DFFRX1 \counter_max_reg[0]  ( .D(N1026), .CK(clk), .RN(n1629), .Q(n1443), 
        .QN(n310) );
  DFFRX2 \ctr6_reg[1]  ( .D(N340), .CK(clk), .RN(n1625), .Q(ctr6[1]), .QN(n352) );
  DFFRX2 \ctr6_reg[0]  ( .D(N339), .CK(clk), .RN(n1629), .Q(ctr6[0]), .QN(n354) );
  DFFRX2 \ABy_reg[9]  ( .D(N623), .CK(clk), .RN(n1612), .Q(ABy[9]) );
  DFFRX2 \ABy_reg[10]  ( .D(N624), .CK(clk), .RN(n1612), .Q(ABy[10]) );
  DFFRX1 \ABx_reg[8]  ( .D(N482), .CK(clk), .RN(n1614), .Q(ABx[8]) );
  DFFRX2 \ABy_reg[7]  ( .D(N621), .CK(clk), .RN(n1612), .Q(ABy[7]) );
  DFFRX2 \ABy_reg[8]  ( .D(N622), .CK(clk), .RN(n1612), .Q(ABy[8]) );
  DFFRX1 \ABx_reg[6]  ( .D(N480), .CK(clk), .RN(n1614), .Q(ABx[6]) );
  DFFRX2 \ABy_reg[5]  ( .D(N619), .CK(clk), .RN(n1612), .Q(ABy[5]) );
  DFFRX2 \ABy_reg[6]  ( .D(N620), .CK(clk), .RN(n1612), .Q(ABy[6]) );
  DFFRX1 \ABx_reg[2]  ( .D(N476), .CK(clk), .RN(n1614), .Q(ABx[2]) );
  DFFRX1 \ABx_reg[4]  ( .D(N478), .CK(clk), .RN(n1614), .Q(ABx[4]) );
  DFFRX1 \ABx_reg[0]  ( .D(N474), .CK(clk), .RN(n1614), .Q(ABx[0]) );
  DFFRX2 \ABy_reg[1]  ( .D(N615), .CK(clk), .RN(n1612), .Q(ABy[1]) );
  DFFRX2 \ABy_reg[2]  ( .D(N616), .CK(clk), .RN(n1612), .Q(ABy[2]) );
  DFFRX2 \ABy_reg[3]  ( .D(N617), .CK(clk), .RN(n1612), .Q(ABy[3]) );
  DFFRX2 \ABy_reg[4]  ( .D(N618), .CK(clk), .RN(n1612), .Q(ABy[4]) );
  DFFRX1 \xg_reg[0][0]  ( .D(n516), .CK(clk), .RN(n1615), .Q(\xg[0][0] ), .QN(
        n473) );
  DFFRX1 \yg_reg[0][0]  ( .D(n495), .CK(clk), .RN(n1613), .Q(\yg[0][0] ), .QN(
        n494) );
  DFFRX1 \cs_reg[2]  ( .D(ns[2]), .CK(clk), .RN(n1629), .Q(n1405), .QN(n358)
         );
  DFFRX1 \ctr6_reg[2]  ( .D(N341), .CK(clk), .RN(n1625), .Q(ctr6[2]), .QN(n353) );
  DFFRX1 \ABx_reg[10]  ( .D(N484), .CK(clk), .RN(n1614), .Q(ABx[10]) );
  DFFRX1 \ABx_reg[9]  ( .D(N483), .CK(clk), .RN(n1614), .Q(ABx[9]) );
  DFFRX1 \ABx_reg[7]  ( .D(N481), .CK(clk), .RN(n1614), .Q(ABx[7]) );
  DFFRX1 \ABx_reg[3]  ( .D(N477), .CK(clk), .RN(n1614), .Q(ABx[3]) );
  DFFRX1 \ABx_reg[5]  ( .D(N479), .CK(clk), .RN(n1614), .Q(ABx[5]) );
  DFFRX1 \ABx_reg[1]  ( .D(N475), .CK(clk), .RN(n1614), .Q(ABx[1]) );
  DFFRX1 sort_dicide_reg ( .D(N353), .CK(clk), .RN(n1628), .Q(sort_dicide), 
        .QN(n1483) );
  DFFRX1 is_inside_reg ( .D(N1033), .CK(clk), .RN(n1612), .QN(n1479) );
  DFFRX1 valid_reg ( .D(n1695), .CK(clk), .RN(n1612), .QN(n1477) );
  DFFRX2 \ABy_reg[0]  ( .D(N614), .CK(clk), .RN(n1613), .Q(ABy[0]) );
  OAI211X1 U1237 ( .A0(n1698), .A1(n1699), .B0(sort_dicide), .C0(n253), .Y(
        n222) );
  OAI221X1 U1238 ( .A0(n1608), .A1(n287), .B0(n358), .B1(n281), .C0(n1700), 
        .Y(ns[2]) );
  OAI221X1 U1239 ( .A0(n1704), .A1(n280), .B0(n358), .B1(n281), .C0(n282), .Y(
        ns[3]) );
  AND2X2 U1240 ( .A(n1487), .B(n352), .Y(n1400) );
  NAND2X1 U1241 ( .A(ctr6[1]), .B(n1487), .Y(n1401) );
  AND2X2 U1242 ( .A(n1488), .B(n352), .Y(n1402) );
  AND2X2 U1243 ( .A(n1488), .B(ctr6[1]), .Y(n1403) );
  AND2X2 U1244 ( .A(n1692), .B(n1637), .Y(n1406) );
  OAI221X1 U1245 ( .A0(n1565), .A1(n405), .B0(n1568), .B1(n383), .C0(n1521), 
        .Y(N905) );
  OAI221X1 U1246 ( .A0(n1565), .A1(n386), .B0(n1568), .B1(n364), .C0(n1556), 
        .Y(N772) );
  OAI221X1 U1247 ( .A0(n1565), .A1(n400), .B0(n1557), .B1(n378), .C0(n1516), 
        .Y(N900) );
  OAI221X1 U1248 ( .A0(n1565), .A1(n402), .B0(n1568), .B1(n380), .C0(n1518), 
        .Y(N902) );
  OAI221X1 U1249 ( .A0(n1565), .A1(n394), .B0(n1568), .B1(n372), .C0(n1548), 
        .Y(N764) );
  OAI221X1 U1250 ( .A0(n1565), .A1(n393), .B0(n1568), .B1(n371), .C0(n1549), 
        .Y(N765) );
  OAI221X1 U1251 ( .A0(n1565), .A1(n401), .B0(n1557), .B1(n379), .C0(n1517), 
        .Y(N901) );
  OAI221X1 U1252 ( .A0(n1566), .A1(n392), .B0(n1568), .B1(n370), .C0(n1550), 
        .Y(N766) );
  OAI221X1 U1253 ( .A0(n1567), .A1(n397), .B0(n1557), .B1(n375), .C0(n1513), 
        .Y(N897) );
  OAI221X1 U1254 ( .A0(n1565), .A1(n391), .B0(n1568), .B1(n369), .C0(n1551), 
        .Y(N767) );
  OAI221X1 U1255 ( .A0(n1565), .A1(n403), .B0(n1568), .B1(n381), .C0(n1519), 
        .Y(N903) );
  OAI221X1 U1256 ( .A0(n1566), .A1(n390), .B0(n1568), .B1(n368), .C0(n1552), 
        .Y(N768) );
  OAI221X1 U1257 ( .A0(n1567), .A1(n398), .B0(n1557), .B1(n376), .C0(n1514), 
        .Y(N898) );
  OAI221X1 U1258 ( .A0(n1565), .A1(n389), .B0(n1568), .B1(n367), .C0(n1553), 
        .Y(N769) );
  OAI221X1 U1259 ( .A0(n1565), .A1(n404), .B0(n1568), .B1(n382), .C0(n1520), 
        .Y(N904) );
  OAI221X1 U1260 ( .A0(n1566), .A1(n388), .B0(n1568), .B1(n366), .C0(n1554), 
        .Y(N770) );
  OAI221X1 U1261 ( .A0(n1566), .A1(n399), .B0(n1557), .B1(n377), .C0(n1515), 
        .Y(N899) );
  OAI221X1 U1262 ( .A0(n1565), .A1(n387), .B0(n1568), .B1(n365), .C0(n1555), 
        .Y(N771) );
  OAI211X4 U1263 ( .A0(n1566), .A1(n407), .B0(n1523), .C0(n1522), .Y(N370) );
  OAI211X4 U1264 ( .A0(n1567), .A1(n428), .B0(n1490), .C0(n1489), .Y(N512) );
  OAI221X1 U1265 ( .A0(n1565), .A1(n395), .B0(n1568), .B1(n373), .C0(n1547), 
        .Y(N763) );
  OAI221X1 U1266 ( .A0(n1567), .A1(n396), .B0(n1568), .B1(n374), .C0(n1512), 
        .Y(N896) );
  INVX12 U1267 ( .A(n1477), .Y(valid) );
  INVX12 U1268 ( .A(n1479), .Y(is_inside) );
  OAI221X1 U1269 ( .A0(n1565), .A1(n385), .B0(n1568), .B1(n363), .C0(n1546), 
        .Y(N762) );
  OAI221X1 U1270 ( .A0(n1566), .A1(n406), .B0(n1568), .B1(n384), .C0(n1511), 
        .Y(N895) );
  CLKBUFX3 U1271 ( .A(n138), .Y(n1572) );
  CLKINVX1 U1272 ( .A(n1574), .Y(n1693) );
  CLKINVX1 U1273 ( .A(ns[3]), .Y(n1698) );
  CLKBUFX3 U1274 ( .A(n139), .Y(n1574) );
  CLKINVX1 U1275 ( .A(ns[2]), .Y(n1696) );
  NAND3X1 U1276 ( .A(n250), .B(n1681), .C(n1483), .Y(n1481) );
  OAI22XL U1277 ( .A0(n354), .A1(n129), .B0(ctr6[0]), .B1(n125), .Y(n122) );
  NAND4BX1 U1278 ( .AN(n267), .B(n276), .C(n277), .D(n278), .Y(n269) );
  BUFX4 U1279 ( .A(n123), .Y(n1594) );
  BUFX4 U1280 ( .A(n131), .Y(n1592) );
  OAI21XL U1281 ( .A0(n361), .A1(n303), .B0(n304), .Y(n285) );
  NAND2X1 U1282 ( .A(n1634), .B(sort_dicide), .Y(n248) );
  NAND2BX1 U1283 ( .AN(n254), .B(n1483), .Y(n1482) );
  AOI22X1 U1284 ( .A0(N502), .A1(n1635), .B0(n1692), .B1(n332), .Y(n101) );
  AOI22X1 U1285 ( .A0(N360), .A1(n1635), .B0(n1692), .B1(n351), .Y(n120) );
  CLKINVX1 U1286 ( .A(reset), .Y(n1660) );
  BUFX4 U1287 ( .A(n164), .Y(n1590) );
  NOR2X1 U1288 ( .A(n1589), .B(n1634), .Y(n164) );
  CLKINVX1 U1289 ( .A(n1484), .Y(n1598) );
  CLKINVX1 U1290 ( .A(n1484), .Y(n1599) );
  INVX3 U1291 ( .A(n1406), .Y(n1596) );
  CLKINVX1 U1292 ( .A(n1406), .Y(n1597) );
  CLKINVX1 U1293 ( .A(n1484), .Y(n1600) );
  CLKINVX1 U1294 ( .A(n1572), .Y(n1692) );
  NOR2X1 U1295 ( .A(n1692), .B(n1693), .Y(n129) );
  CLKBUFX3 U1296 ( .A(n1684), .Y(n1634) );
  AND2X2 U1297 ( .A(n1693), .B(n1637), .Y(n1484) );
  CLKBUFX3 U1298 ( .A(n1690), .Y(n1607) );
  INVX3 U1299 ( .A(n1485), .Y(n1589) );
  BUFX4 U1300 ( .A(n1685), .Y(n1602) );
  CLKINVX1 U1301 ( .A(n1573), .Y(n1685) );
  INVX3 U1302 ( .A(n1485), .Y(n1588) );
  CLKINVX1 U1303 ( .A(n191), .Y(n1695) );
  CLKBUFX3 U1304 ( .A(n1611), .Y(n1612) );
  CLKBUFX3 U1305 ( .A(n1631), .Y(n1613) );
  CLKBUFX3 U1306 ( .A(n1633), .Y(n1614) );
  CLKBUFX3 U1307 ( .A(n1633), .Y(n1615) );
  CLKBUFX3 U1308 ( .A(n1632), .Y(n1616) );
  CLKBUFX3 U1309 ( .A(n1632), .Y(n1617) );
  CLKBUFX3 U1310 ( .A(n1631), .Y(n1618) );
  CLKBUFX3 U1311 ( .A(n1631), .Y(n1619) );
  CLKBUFX3 U1312 ( .A(n1610), .Y(n1620) );
  CLKBUFX3 U1313 ( .A(n1630), .Y(n1621) );
  CLKBUFX3 U1314 ( .A(n1610), .Y(n1622) );
  CLKBUFX3 U1315 ( .A(n1610), .Y(n1623) );
  CLKBUFX3 U1316 ( .A(n1609), .Y(n1624) );
  CLKBUFX3 U1317 ( .A(n1632), .Y(n1625) );
  CLKBUFX3 U1318 ( .A(n1609), .Y(n1626) );
  CLKBUFX3 U1319 ( .A(n1633), .Y(n1627) );
  CLKBUFX3 U1320 ( .A(n1630), .Y(n1628) );
  CLKBUFX3 U1321 ( .A(n1630), .Y(n1629) );
  CLKBUFX3 U1322 ( .A(n1400), .Y(n1560) );
  CLKBUFX3 U1323 ( .A(n1401), .Y(n1567) );
  CLKBUFX3 U1324 ( .A(n1400), .Y(n1558) );
  CLKBUFX3 U1325 ( .A(n1401), .Y(n1565) );
  CLKBUFX3 U1326 ( .A(n1403), .Y(n1564) );
  CLKBUFX3 U1327 ( .A(n1400), .Y(n1559) );
  CLKBUFX3 U1328 ( .A(n1401), .Y(n1566) );
  CLKBUFX3 U1329 ( .A(n1402), .Y(n1562) );
  CLKBUFX3 U1330 ( .A(n1403), .Y(n1563) );
  CLKBUFX3 U1331 ( .A(n1402), .Y(n1561) );
  AOI2BB1X1 U1332 ( .A0N(n264), .A1N(n1691), .B0(n1693), .Y(n257) );
  NAND3X1 U1333 ( .A(n1571), .B(n1699), .C(n1697), .Y(n138) );
  CLKINVX1 U1334 ( .A(n265), .Y(n1697) );
  OAI211X1 U1335 ( .A0(n1699), .A1(n265), .B0(n264), .C0(n266), .Y(n260) );
  NOR2X1 U1336 ( .A(n1693), .B(n255), .Y(n266) );
  OR3X2 U1337 ( .A(n1696), .B(n1698), .C(n1699), .Y(n1485) );
  BUFX4 U1338 ( .A(n1689), .Y(n1606) );
  CLKINVX1 U1339 ( .A(n1593), .Y(n1689) );
  BUFX4 U1340 ( .A(n1686), .Y(n1603) );
  CLKINVX1 U1341 ( .A(n1591), .Y(n1686) );
  CLKINVX1 U1342 ( .A(n254), .Y(n1684) );
  NOR2X1 U1343 ( .A(n1579), .B(n1577), .Y(n249) );
  CLKBUFX3 U1344 ( .A(n136), .Y(n1635) );
  CLKBUFX3 U1345 ( .A(n53), .Y(n1637) );
  OA21XL U1346 ( .A0(n1571), .A1(n160), .B0(n267), .Y(n264) );
  CLKBUFX3 U1347 ( .A(n136), .Y(n1636) );
  INVX3 U1348 ( .A(n1582), .Y(n1583) );
  CLKINVX1 U1349 ( .A(n197), .Y(n1582) );
  NOR3BXL U1350 ( .AN(n249), .B(n1601), .C(n1683), .Y(n197) );
  CLKINVX1 U1351 ( .A(n280), .Y(n1702) );
  CLKINVX1 U1352 ( .A(n1481), .Y(n1579) );
  CLKINVX1 U1353 ( .A(n1595), .Y(n1690) );
  NOR2X1 U1354 ( .A(n1681), .B(n1699), .Y(n255) );
  NAND2X1 U1355 ( .A(n250), .B(n1696), .Y(n191) );
  BUFX4 U1356 ( .A(n193), .Y(n1573) );
  NAND3X1 U1357 ( .A(n1696), .B(n1698), .C(n1571), .Y(n193) );
  CLKINVX1 U1358 ( .A(n1571), .Y(n1681) );
  CLKINVX1 U1359 ( .A(n1481), .Y(n1578) );
  CLKINVX1 U1360 ( .A(n1481), .Y(n1580) );
  CLKINVX1 U1361 ( .A(n1481), .Y(n1581) );
  CLKBUFX3 U1362 ( .A(n1611), .Y(n1633) );
  CLKBUFX3 U1363 ( .A(n1611), .Y(n1632) );
  CLKBUFX3 U1364 ( .A(n1610), .Y(n1631) );
  CLKBUFX3 U1365 ( .A(n1609), .Y(n1630) );
  AOI21X1 U1366 ( .A0(N512), .A1(n1635), .B0(n137), .Y(n99) );
  OAI22XL U1367 ( .A0(n1572), .A1(n1455), .B0(n1574), .B1(n1680), .Y(n137) );
  AOI21X1 U1368 ( .A0(N370), .A1(n1635), .B0(n158), .Y(n121) );
  OAI22XL U1369 ( .A0(n1572), .A1(n1474), .B0(n1574), .B1(n1670), .Y(n158) );
  AOI21X1 U1370 ( .A0(N503), .A1(n1636), .B0(n140), .Y(n102) );
  OAI22XL U1371 ( .A0(n1572), .A1(n1464), .B0(n1574), .B1(n1671), .Y(n140) );
  AOI21X1 U1372 ( .A0(N504), .A1(n1636), .B0(n141), .Y(n103) );
  OAI22XL U1373 ( .A0(n1572), .A1(n1463), .B0(n1574), .B1(n1672), .Y(n141) );
  AOI21X1 U1374 ( .A0(N505), .A1(n1636), .B0(n142), .Y(n104) );
  OAI22XL U1375 ( .A0(n1572), .A1(n1462), .B0(n1574), .B1(n1673), .Y(n142) );
  AOI21X1 U1376 ( .A0(N506), .A1(n1636), .B0(n143), .Y(n105) );
  OAI22XL U1377 ( .A0(n1572), .A1(n1461), .B0(n1574), .B1(n1674), .Y(n143) );
  AOI21X1 U1378 ( .A0(N507), .A1(n1636), .B0(n144), .Y(n106) );
  OAI22XL U1379 ( .A0(n1572), .A1(n1460), .B0(n1574), .B1(n1675), .Y(n144) );
  AOI21X1 U1380 ( .A0(N508), .A1(n1636), .B0(n145), .Y(n107) );
  OAI22XL U1381 ( .A0(n1572), .A1(n1459), .B0(n1574), .B1(n1676), .Y(n145) );
  AOI21X1 U1382 ( .A0(N509), .A1(n1636), .B0(n146), .Y(n108) );
  OAI22XL U1383 ( .A0(n1572), .A1(n1458), .B0(n1574), .B1(n1677), .Y(n146) );
  AOI21X1 U1384 ( .A0(N510), .A1(n1636), .B0(n147), .Y(n109) );
  OAI22XL U1385 ( .A0(n1572), .A1(n1457), .B0(n1574), .B1(n1678), .Y(n147) );
  AOI21X1 U1386 ( .A0(N511), .A1(n1636), .B0(n148), .Y(n110) );
  OAI22XL U1387 ( .A0(n1572), .A1(n1456), .B0(n1574), .B1(n1679), .Y(n148) );
  AOI21X1 U1388 ( .A0(N369), .A1(n1636), .B0(n149), .Y(n111) );
  OAI22XL U1389 ( .A0(n1572), .A1(n1473), .B0(n1574), .B1(n1669), .Y(n149) );
  AOI21X1 U1390 ( .A0(N368), .A1(n1635), .B0(n150), .Y(n112) );
  OAI22XL U1391 ( .A0(n1572), .A1(n1472), .B0(n1574), .B1(n1668), .Y(n150) );
  AOI21X1 U1392 ( .A0(N367), .A1(n1635), .B0(n151), .Y(n113) );
  OAI22XL U1393 ( .A0(n1572), .A1(n1471), .B0(n1574), .B1(n1667), .Y(n151) );
  AOI21X1 U1394 ( .A0(N366), .A1(n1635), .B0(n152), .Y(n114) );
  OAI22XL U1395 ( .A0(n1572), .A1(n1470), .B0(n1574), .B1(n1666), .Y(n152) );
  AOI21X1 U1396 ( .A0(N365), .A1(n1635), .B0(n153), .Y(n115) );
  OAI22XL U1397 ( .A0(n1572), .A1(n1469), .B0(n1574), .B1(n1665), .Y(n153) );
  AOI21X1 U1398 ( .A0(N364), .A1(n1635), .B0(n154), .Y(n116) );
  OAI22XL U1399 ( .A0(n1572), .A1(n1468), .B0(n1574), .B1(n1664), .Y(n154) );
  AOI21X1 U1400 ( .A0(N363), .A1(n1635), .B0(n155), .Y(n117) );
  OAI22XL U1401 ( .A0(n1572), .A1(n1467), .B0(n1574), .B1(n1663), .Y(n155) );
  AOI21X1 U1402 ( .A0(N362), .A1(n1635), .B0(n156), .Y(n118) );
  OAI22XL U1403 ( .A0(n1572), .A1(n1466), .B0(n1574), .B1(n1662), .Y(n156) );
  AOI21X1 U1404 ( .A0(N361), .A1(n1635), .B0(n157), .Y(n119) );
  OAI22XL U1405 ( .A0(n1572), .A1(n1465), .B0(n1574), .B1(n1661), .Y(n157) );
  CLKBUFX3 U1406 ( .A(n1557), .Y(n1568) );
  INVX3 U1407 ( .A(ns[1]), .Y(n1699) );
  NAND2X1 U1408 ( .A(ns[2]), .B(n1698), .Y(n265) );
  CLKINVX1 U1409 ( .A(n269), .Y(n1691) );
  AOI21X1 U1410 ( .A0(cross[21]), .A1(n1635), .B0(n1692), .Y(n267) );
  BUFX4 U1411 ( .A(n1688), .Y(n1605) );
  CLKINVX1 U1412 ( .A(n1594), .Y(n1688) );
  BUFX4 U1413 ( .A(n1687), .Y(n1604) );
  CLKINVX1 U1414 ( .A(n1592), .Y(n1687) );
  NAND3X1 U1415 ( .A(n1608), .B(n1407), .C(n302), .Y(n304) );
  OA21XL U1416 ( .A0(n257), .A1(ctr6[0]), .B0(n260), .Y(n256) );
  BUFX4 U1417 ( .A(n1542), .Y(n1570) );
  NOR2X1 U1418 ( .A(n1568), .B(n354), .Y(n1542) );
  NOR2X1 U1419 ( .A(n1698), .B(ns[1]), .Y(n250) );
  NAND2BX1 U1420 ( .AN(n133), .B(ctr6[0]), .Y(n159) );
  XOR2X1 U1421 ( .A(n1404), .B(n1608), .Y(n281) );
  OAI211X1 U1422 ( .A0(n268), .A1(n269), .B0(n270), .C0(n1573), .Y(N1028) );
  OAI21XL U1423 ( .A0(n271), .A1(n269), .B0(n1486), .Y(n270) );
  NAND3X1 U1424 ( .A(n1571), .B(ns[2]), .C(n250), .Y(n254) );
  NOR2X1 U1425 ( .A(n96), .B(n97), .Y(n53) );
  CLKBUFX3 U1426 ( .A(n198), .Y(n1586) );
  NOR2X1 U1427 ( .A(n222), .B(n1585), .Y(n198) );
  BUFX4 U1428 ( .A(n100), .Y(n1595) );
  NAND2BX1 U1429 ( .AN(n96), .B(n122), .Y(n100) );
  BUFX4 U1430 ( .A(n134), .Y(n1591) );
  OAI32X1 U1431 ( .A0(n125), .A1(ctr6[0]), .A2(n133), .B0(n129), .B1(n159), 
        .Y(n134) );
  INVX3 U1432 ( .A(n248), .Y(n1683) );
  BUFX4 U1433 ( .A(n127), .Y(n1593) );
  NOR2BX1 U1434 ( .AN(n122), .B(n126), .Y(n127) );
  NAND3X1 U1435 ( .A(n1696), .B(n1698), .C(ns[1]), .Y(n139) );
  OAI21XL U1436 ( .A0(n294), .A1(n1405), .B0(n286), .Y(n291) );
  NAND2X1 U1437 ( .A(n1483), .B(n1405), .Y(n286) );
  NAND2X1 U1438 ( .A(n303), .B(n304), .Y(n289) );
  NAND2X1 U1439 ( .A(n290), .B(n1408), .Y(n280) );
  CLKBUFX3 U1440 ( .A(n1682), .Y(n1601) );
  CLKINVX1 U1441 ( .A(n222), .Y(n1682) );
  CLKBUFX3 U1442 ( .A(ns[0]), .Y(n1571) );
  OAI221XL U1443 ( .A0(n305), .A1(n1405), .B0(n303), .B1(cross[21]), .C0(n306), 
        .Y(ns[0]) );
  AOI32X1 U1444 ( .A0(n1608), .A1(n1405), .A2(n290), .B0(n1705), .B1(n289), 
        .Y(n306) );
  AOI222XL U1445 ( .A0(n1407), .A1(n1404), .B0(n1702), .B1(n294), .C0(n1703), 
        .C1(n1608), .Y(n305) );
  CLKBUFX3 U1446 ( .A(n196), .Y(n1585) );
  NOR2X1 U1447 ( .A(n222), .B(n159), .Y(n196) );
  CLKBUFX3 U1448 ( .A(n226), .Y(n1575) );
  NOR2X1 U1449 ( .A(n248), .B(n159), .Y(n226) );
  CLKINVX1 U1450 ( .A(n293), .Y(n1703) );
  CLKBUFX3 U1451 ( .A(n225), .Y(n1584) );
  NOR2X1 U1452 ( .A(n248), .B(n1575), .Y(n225) );
  INVX3 U1453 ( .A(n1482), .Y(n1577) );
  NOR3X1 U1454 ( .A(n1571), .B(ns[1]), .C(n265), .Y(n136) );
  OAI32X1 U1455 ( .A0(n1681), .A1(n1696), .A2(n1699), .B0(n255), .B1(n1483), 
        .Y(N353) );
  NAND3XL U1456 ( .A(ns[3]), .B(n1696), .C(ns[1]), .Y(n160) );
  INVX3 U1457 ( .A(n1482), .Y(n1576) );
  CLKINVX1 U1458 ( .A(n268), .Y(n1705) );
  CLKBUFX3 U1459 ( .A(n1660), .Y(n1611) );
  CLKBUFX3 U1460 ( .A(n1660), .Y(n1610) );
  CLKBUFX3 U1461 ( .A(n1660), .Y(n1609) );
  OAI22XL U1462 ( .A0(n1607), .A1(n472), .B0(n99), .B1(n1595), .Y(n517) );
  OAI22XL U1463 ( .A0(n1607), .A1(n451), .B0(n121), .B1(n1595), .Y(n538) );
  OAI22XL U1464 ( .A0(n1594), .A1(n450), .B0(n99), .B1(n1605), .Y(n539) );
  OAI22XL U1465 ( .A0(n1594), .A1(n429), .B0(n121), .B1(n1605), .Y(n560) );
  OAI22XL U1466 ( .A0(n1593), .A1(n428), .B0(n99), .B1(n1606), .Y(n561) );
  OAI22XL U1467 ( .A0(n1593), .A1(n407), .B0(n121), .B1(n1606), .Y(n582) );
  OAI22XL U1468 ( .A0(n1592), .A1(n406), .B0(n99), .B1(n1604), .Y(n583) );
  OAI22XL U1469 ( .A0(n1592), .A1(n385), .B0(n121), .B1(n1604), .Y(n604) );
  OAI22XL U1470 ( .A0(n1591), .A1(n384), .B0(n99), .B1(n1603), .Y(n605) );
  OAI22XL U1471 ( .A0(n1591), .A1(n363), .B0(n121), .B1(n1603), .Y(n626) );
  OAI22XL U1472 ( .A0(n1607), .A1(n470), .B0(n102), .B1(n1595), .Y(n519) );
  OAI22XL U1473 ( .A0(n1607), .A1(n469), .B0(n103), .B1(n1595), .Y(n520) );
  OAI22XL U1474 ( .A0(n1607), .A1(n468), .B0(n104), .B1(n1595), .Y(n521) );
  OAI22XL U1475 ( .A0(n1607), .A1(n467), .B0(n105), .B1(n1595), .Y(n522) );
  OAI22XL U1476 ( .A0(n1607), .A1(n466), .B0(n106), .B1(n1595), .Y(n523) );
  OAI22XL U1477 ( .A0(n1607), .A1(n465), .B0(n107), .B1(n1595), .Y(n524) );
  OAI22XL U1478 ( .A0(n1607), .A1(n464), .B0(n108), .B1(n1595), .Y(n525) );
  OAI22XL U1479 ( .A0(n1607), .A1(n463), .B0(n109), .B1(n1595), .Y(n526) );
  OAI22XL U1480 ( .A0(n1607), .A1(n462), .B0(n110), .B1(n1595), .Y(n527) );
  OAI22XL U1481 ( .A0(n1607), .A1(n461), .B0(n111), .B1(n1595), .Y(n528) );
  OAI22XL U1482 ( .A0(n1607), .A1(n460), .B0(n112), .B1(n1595), .Y(n529) );
  OAI22XL U1483 ( .A0(n1690), .A1(n459), .B0(n113), .B1(n1595), .Y(n530) );
  OAI22XL U1484 ( .A0(n1690), .A1(n458), .B0(n114), .B1(n1595), .Y(n531) );
  OAI22XL U1485 ( .A0(n1690), .A1(n457), .B0(n115), .B1(n1595), .Y(n532) );
  OAI22XL U1486 ( .A0(n1690), .A1(n456), .B0(n116), .B1(n1595), .Y(n533) );
  OAI22XL U1487 ( .A0(n1690), .A1(n455), .B0(n117), .B1(n1595), .Y(n534) );
  OAI22XL U1488 ( .A0(n1690), .A1(n454), .B0(n118), .B1(n1595), .Y(n535) );
  OAI22XL U1489 ( .A0(n1607), .A1(n453), .B0(n119), .B1(n1595), .Y(n536) );
  OAI22XL U1490 ( .A0(n1594), .A1(n448), .B0(n102), .B1(n1605), .Y(n541) );
  OAI22XL U1491 ( .A0(n1594), .A1(n447), .B0(n103), .B1(n1605), .Y(n542) );
  OAI22XL U1492 ( .A0(n1594), .A1(n446), .B0(n104), .B1(n1605), .Y(n543) );
  OAI22XL U1493 ( .A0(n1594), .A1(n445), .B0(n105), .B1(n1605), .Y(n544) );
  OAI22XL U1494 ( .A0(n1594), .A1(n444), .B0(n106), .B1(n1605), .Y(n545) );
  OAI22XL U1495 ( .A0(n1594), .A1(n443), .B0(n107), .B1(n1605), .Y(n546) );
  OAI22XL U1496 ( .A0(n1594), .A1(n442), .B0(n108), .B1(n1605), .Y(n547) );
  OAI22XL U1497 ( .A0(n1594), .A1(n441), .B0(n109), .B1(n1605), .Y(n548) );
  OAI22XL U1498 ( .A0(n1594), .A1(n440), .B0(n110), .B1(n1605), .Y(n549) );
  OAI22XL U1499 ( .A0(n1594), .A1(n439), .B0(n111), .B1(n1605), .Y(n550) );
  OAI22XL U1500 ( .A0(n1594), .A1(n438), .B0(n112), .B1(n1605), .Y(n551) );
  OAI22XL U1501 ( .A0(n1594), .A1(n437), .B0(n113), .B1(n1605), .Y(n552) );
  OAI22XL U1502 ( .A0(n1594), .A1(n436), .B0(n114), .B1(n1605), .Y(n553) );
  OAI22XL U1503 ( .A0(n1594), .A1(n435), .B0(n115), .B1(n1605), .Y(n554) );
  OAI22XL U1504 ( .A0(n1594), .A1(n434), .B0(n116), .B1(n1605), .Y(n555) );
  OAI22XL U1505 ( .A0(n1594), .A1(n433), .B0(n117), .B1(n1605), .Y(n556) );
  OAI22XL U1506 ( .A0(n1594), .A1(n432), .B0(n118), .B1(n1605), .Y(n557) );
  OAI22XL U1507 ( .A0(n1594), .A1(n431), .B0(n119), .B1(n1605), .Y(n558) );
  OAI22XL U1508 ( .A0(n1593), .A1(n426), .B0(n102), .B1(n1606), .Y(n563) );
  OAI22XL U1509 ( .A0(n1593), .A1(n425), .B0(n103), .B1(n1606), .Y(n564) );
  OAI22XL U1510 ( .A0(n1593), .A1(n424), .B0(n104), .B1(n1606), .Y(n565) );
  OAI22XL U1511 ( .A0(n1593), .A1(n423), .B0(n105), .B1(n1606), .Y(n566) );
  OAI22XL U1512 ( .A0(n1593), .A1(n422), .B0(n106), .B1(n1606), .Y(n567) );
  OAI22XL U1513 ( .A0(n1593), .A1(n421), .B0(n107), .B1(n1606), .Y(n568) );
  OAI22XL U1514 ( .A0(n1593), .A1(n420), .B0(n108), .B1(n1606), .Y(n569) );
  OAI22XL U1515 ( .A0(n1593), .A1(n419), .B0(n109), .B1(n1606), .Y(n570) );
  OAI22XL U1516 ( .A0(n1593), .A1(n418), .B0(n110), .B1(n1606), .Y(n571) );
  OAI22XL U1517 ( .A0(n1593), .A1(n417), .B0(n111), .B1(n1606), .Y(n572) );
  OAI22XL U1518 ( .A0(n1593), .A1(n416), .B0(n112), .B1(n1606), .Y(n573) );
  OAI22XL U1519 ( .A0(n1593), .A1(n415), .B0(n113), .B1(n1606), .Y(n574) );
  OAI22XL U1520 ( .A0(n1593), .A1(n414), .B0(n114), .B1(n1606), .Y(n575) );
  OAI22XL U1521 ( .A0(n1593), .A1(n413), .B0(n115), .B1(n1606), .Y(n576) );
  OAI22XL U1522 ( .A0(n1593), .A1(n412), .B0(n116), .B1(n1606), .Y(n577) );
  OAI22XL U1523 ( .A0(n1593), .A1(n411), .B0(n117), .B1(n1606), .Y(n578) );
  OAI22XL U1524 ( .A0(n1593), .A1(n410), .B0(n118), .B1(n1606), .Y(n579) );
  OAI22XL U1525 ( .A0(n1593), .A1(n409), .B0(n119), .B1(n1606), .Y(n580) );
  OAI22XL U1526 ( .A0(n1592), .A1(n404), .B0(n102), .B1(n1604), .Y(n585) );
  OAI22XL U1527 ( .A0(n1592), .A1(n403), .B0(n103), .B1(n1604), .Y(n586) );
  OAI22XL U1528 ( .A0(n1592), .A1(n402), .B0(n104), .B1(n1604), .Y(n587) );
  OAI22XL U1529 ( .A0(n1592), .A1(n401), .B0(n105), .B1(n1604), .Y(n588) );
  OAI22XL U1530 ( .A0(n1592), .A1(n400), .B0(n106), .B1(n1604), .Y(n589) );
  OAI22XL U1531 ( .A0(n1592), .A1(n399), .B0(n107), .B1(n1604), .Y(n590) );
  OAI22XL U1532 ( .A0(n1592), .A1(n398), .B0(n108), .B1(n1604), .Y(n591) );
  OAI22XL U1533 ( .A0(n1592), .A1(n397), .B0(n109), .B1(n1604), .Y(n592) );
  OAI22XL U1534 ( .A0(n1592), .A1(n396), .B0(n110), .B1(n1604), .Y(n593) );
  OAI22XL U1535 ( .A0(n1592), .A1(n395), .B0(n111), .B1(n1604), .Y(n594) );
  OAI22XL U1536 ( .A0(n1592), .A1(n394), .B0(n112), .B1(n1604), .Y(n595) );
  OAI22XL U1537 ( .A0(n1592), .A1(n393), .B0(n113), .B1(n1604), .Y(n596) );
  OAI22XL U1538 ( .A0(n1592), .A1(n392), .B0(n114), .B1(n1604), .Y(n597) );
  OAI22XL U1539 ( .A0(n1592), .A1(n391), .B0(n115), .B1(n1604), .Y(n598) );
  OAI22XL U1540 ( .A0(n1592), .A1(n390), .B0(n116), .B1(n1604), .Y(n599) );
  OAI22XL U1541 ( .A0(n1592), .A1(n389), .B0(n117), .B1(n1604), .Y(n600) );
  OAI22XL U1542 ( .A0(n1592), .A1(n388), .B0(n118), .B1(n1604), .Y(n601) );
  OAI22XL U1543 ( .A0(n1592), .A1(n387), .B0(n119), .B1(n1604), .Y(n602) );
  OAI22XL U1544 ( .A0(n1591), .A1(n382), .B0(n102), .B1(n1603), .Y(n607) );
  OAI22XL U1545 ( .A0(n1591), .A1(n381), .B0(n103), .B1(n1603), .Y(n608) );
  OAI22XL U1546 ( .A0(n1591), .A1(n380), .B0(n104), .B1(n1603), .Y(n609) );
  OAI22XL U1547 ( .A0(n1591), .A1(n379), .B0(n105), .B1(n1603), .Y(n610) );
  OAI22XL U1548 ( .A0(n1591), .A1(n378), .B0(n106), .B1(n1603), .Y(n611) );
  OAI22XL U1549 ( .A0(n1591), .A1(n377), .B0(n107), .B1(n1603), .Y(n612) );
  OAI22XL U1550 ( .A0(n1591), .A1(n376), .B0(n108), .B1(n1603), .Y(n613) );
  OAI22XL U1551 ( .A0(n1591), .A1(n375), .B0(n109), .B1(n1603), .Y(n614) );
  OAI22XL U1552 ( .A0(n1591), .A1(n374), .B0(n110), .B1(n1603), .Y(n615) );
  OAI22XL U1553 ( .A0(n1591), .A1(n373), .B0(n111), .B1(n1603), .Y(n616) );
  OAI22XL U1554 ( .A0(n1591), .A1(n372), .B0(n112), .B1(n1603), .Y(n617) );
  OAI22XL U1555 ( .A0(n1591), .A1(n371), .B0(n113), .B1(n1603), .Y(n618) );
  OAI22XL U1556 ( .A0(n1591), .A1(n370), .B0(n114), .B1(n1603), .Y(n619) );
  OAI22XL U1557 ( .A0(n1591), .A1(n369), .B0(n115), .B1(n1603), .Y(n620) );
  OAI22XL U1558 ( .A0(n1591), .A1(n368), .B0(n116), .B1(n1603), .Y(n621) );
  OAI22XL U1559 ( .A0(n1591), .A1(n367), .B0(n117), .B1(n1603), .Y(n622) );
  OAI22XL U1560 ( .A0(n1591), .A1(n366), .B0(n118), .B1(n1603), .Y(n623) );
  OAI22XL U1561 ( .A0(n1591), .A1(n365), .B0(n119), .B1(n1603), .Y(n624) );
  CLKINVX1 U1562 ( .A(X[0]), .Y(n1670) );
  CLKINVX1 U1563 ( .A(X[1]), .Y(n1669) );
  CLKINVX1 U1564 ( .A(X[2]), .Y(n1668) );
  CLKINVX1 U1565 ( .A(X[3]), .Y(n1667) );
  CLKINVX1 U1566 ( .A(X[4]), .Y(n1666) );
  CLKINVX1 U1567 ( .A(X[5]), .Y(n1665) );
  CLKINVX1 U1568 ( .A(X[6]), .Y(n1664) );
  CLKINVX1 U1569 ( .A(X[7]), .Y(n1663) );
  CLKINVX1 U1570 ( .A(X[8]), .Y(n1662) );
  CLKINVX1 U1571 ( .A(X[9]), .Y(n1661) );
  CLKINVX1 U1572 ( .A(Y[0]), .Y(n1680) );
  CLKINVX1 U1573 ( .A(Y[1]), .Y(n1679) );
  CLKINVX1 U1574 ( .A(Y[2]), .Y(n1678) );
  CLKINVX1 U1575 ( .A(Y[3]), .Y(n1677) );
  CLKINVX1 U1576 ( .A(Y[4]), .Y(n1676) );
  CLKINVX1 U1577 ( .A(Y[5]), .Y(n1675) );
  CLKINVX1 U1578 ( .A(Y[6]), .Y(n1674) );
  CLKINVX1 U1579 ( .A(Y[7]), .Y(n1673) );
  CLKINVX1 U1580 ( .A(Y[8]), .Y(n1672) );
  CLKINVX1 U1581 ( .A(Y[9]), .Y(n1671) );
  OAI222XL U1582 ( .A0(n1596), .A1(n1455), .B0(n1598), .B1(n1680), .C0(n1637), 
        .C1(n494), .Y(n495) );
  OAI222XL U1583 ( .A0(n1596), .A1(n1456), .B0(n1599), .B1(n1679), .C0(n1637), 
        .C1(n492), .Y(n497) );
  OAI222XL U1584 ( .A0(n1597), .A1(n1457), .B0(n1600), .B1(n1678), .C0(n1637), 
        .C1(n491), .Y(n498) );
  OAI222XL U1585 ( .A0(n1596), .A1(n1458), .B0(n1600), .B1(n1677), .C0(n1637), 
        .C1(n490), .Y(n499) );
  OAI222XL U1586 ( .A0(n1596), .A1(n1459), .B0(n1598), .B1(n1676), .C0(n1637), 
        .C1(n489), .Y(n500) );
  OAI222XL U1587 ( .A0(n1596), .A1(n1460), .B0(n1598), .B1(n1675), .C0(n1637), 
        .C1(n488), .Y(n501) );
  OAI222XL U1588 ( .A0(n1597), .A1(n1461), .B0(n1599), .B1(n1674), .C0(n1637), 
        .C1(n487), .Y(n502) );
  OAI222XL U1589 ( .A0(n1597), .A1(n1462), .B0(n1600), .B1(n1673), .C0(n1637), 
        .C1(n486), .Y(n503) );
  OAI222XL U1590 ( .A0(n1596), .A1(n1463), .B0(n1599), .B1(n1672), .C0(n1637), 
        .C1(n485), .Y(n504) );
  OAI222XL U1591 ( .A0(n1596), .A1(n1464), .B0(n1598), .B1(n1671), .C0(n1637), 
        .C1(n484), .Y(n505) );
  OAI222XL U1592 ( .A0(n1596), .A1(n1465), .B0(n1599), .B1(n1661), .C0(n1637), 
        .C1(n483), .Y(n506) );
  OAI222XL U1593 ( .A0(n1597), .A1(n1466), .B0(n1600), .B1(n1662), .C0(n1637), 
        .C1(n482), .Y(n507) );
  OAI222XL U1594 ( .A0(n1596), .A1(n1467), .B0(n1600), .B1(n1663), .C0(n1637), 
        .C1(n481), .Y(n508) );
  OAI222XL U1595 ( .A0(n1596), .A1(n1468), .B0(n1598), .B1(n1664), .C0(n1637), 
        .C1(n480), .Y(n509) );
  OAI222XL U1596 ( .A0(n1596), .A1(n1469), .B0(n1598), .B1(n1665), .C0(n53), 
        .C1(n479), .Y(n510) );
  OAI222XL U1597 ( .A0(n1597), .A1(n1470), .B0(n1599), .B1(n1666), .C0(n53), 
        .C1(n478), .Y(n511) );
  OAI222XL U1598 ( .A0(n1597), .A1(n1471), .B0(n1600), .B1(n1667), .C0(n1637), 
        .C1(n477), .Y(n512) );
  OAI222XL U1599 ( .A0(n1596), .A1(n1472), .B0(n1599), .B1(n1668), .C0(n53), 
        .C1(n476), .Y(n513) );
  OAI222XL U1600 ( .A0(n1596), .A1(n1473), .B0(n1598), .B1(n1669), .C0(n53), 
        .C1(n475), .Y(n514) );
  OAI222XL U1601 ( .A0(n1596), .A1(n1474), .B0(n1599), .B1(n1670), .C0(n1637), 
        .C1(n473), .Y(n516) );
  OAI22XL U1602 ( .A0(n1602), .A1(n311), .B0(n1670), .B1(n1573), .Y(N726) );
  OAI22XL U1603 ( .A0(n1602), .A1(n312), .B0(n1669), .B1(n1573), .Y(N727) );
  OAI22XL U1604 ( .A0(n1602), .A1(n313), .B0(n1668), .B1(n1573), .Y(N728) );
  OAI22XL U1605 ( .A0(n1602), .A1(n314), .B0(n1667), .B1(n1573), .Y(N729) );
  OAI22XL U1606 ( .A0(n1602), .A1(n315), .B0(n1666), .B1(n1573), .Y(N730) );
  OAI22XL U1607 ( .A0(n1602), .A1(n316), .B0(n1665), .B1(n1573), .Y(N731) );
  OAI22XL U1608 ( .A0(n1602), .A1(n317), .B0(n1664), .B1(n1573), .Y(N732) );
  OAI22XL U1609 ( .A0(n1602), .A1(n318), .B0(n1663), .B1(n1573), .Y(N733) );
  OAI22XL U1610 ( .A0(n1602), .A1(n319), .B0(n1662), .B1(n1573), .Y(N734) );
  OAI22XL U1611 ( .A0(n1602), .A1(n320), .B0(n1661), .B1(n1573), .Y(N735) );
  OAI22XL U1612 ( .A0(n1602), .A1(n321), .B0(n1680), .B1(n1573), .Y(N737) );
  OAI22XL U1613 ( .A0(n1602), .A1(n322), .B0(n1679), .B1(n1573), .Y(N738) );
  OAI22XL U1614 ( .A0(n1602), .A1(n323), .B0(n1678), .B1(n1573), .Y(N739) );
  OAI22XL U1615 ( .A0(n1602), .A1(n324), .B0(n1677), .B1(n1573), .Y(N740) );
  OAI22XL U1616 ( .A0(n1602), .A1(n325), .B0(n1676), .B1(n1573), .Y(N741) );
  OAI22XL U1617 ( .A0(n1602), .A1(n326), .B0(n1675), .B1(n1573), .Y(N742) );
  OAI22XL U1618 ( .A0(n1602), .A1(n327), .B0(n1674), .B1(n1573), .Y(N743) );
  OAI22XL U1619 ( .A0(n1602), .A1(n328), .B0(n1673), .B1(n1573), .Y(N744) );
  OAI22XL U1620 ( .A0(n1602), .A1(n329), .B0(n1672), .B1(n1573), .Y(N745) );
  OAI22XL U1621 ( .A0(n1602), .A1(n330), .B0(n1671), .B1(n1573), .Y(N746) );
  BUFX4 U1622 ( .A(N880), .Y(n1587) );
  NOR2X1 U1623 ( .A(reset), .B(n125), .Y(N880) );
  CLKINVX1 U1624 ( .A(n186), .Y(n1638) );
  AOI222XL U1625 ( .A0(N659), .A1(n1634), .B0(n1590), .B1(cross[21]), .C0(N703), .C1(n1588), .Y(n186) );
  CLKINVX1 U1626 ( .A(n185), .Y(n1639) );
  AOI222XL U1627 ( .A0(N658), .A1(n1634), .B0(n1590), .B1(cross[20]), .C0(N702), .C1(n1588), .Y(n185) );
  CLKINVX1 U1628 ( .A(n184), .Y(n1640) );
  AOI222XL U1629 ( .A0(N657), .A1(n1684), .B0(n1590), .B1(cross[19]), .C0(N701), .C1(n1589), .Y(n184) );
  CLKINVX1 U1630 ( .A(n183), .Y(n1641) );
  AOI222XL U1631 ( .A0(N656), .A1(n1684), .B0(n1590), .B1(cross[18]), .C0(N700), .C1(n1589), .Y(n183) );
  CLKINVX1 U1632 ( .A(n182), .Y(n1642) );
  AOI222XL U1633 ( .A0(N655), .A1(n1634), .B0(n1590), .B1(cross[17]), .C0(N699), .C1(n1588), .Y(n182) );
  CLKINVX1 U1634 ( .A(n181), .Y(n1643) );
  AOI222XL U1635 ( .A0(N654), .A1(n1684), .B0(n1590), .B1(cross[16]), .C0(N698), .C1(n1588), .Y(n181) );
  CLKINVX1 U1636 ( .A(n180), .Y(n1644) );
  AOI222XL U1637 ( .A0(N653), .A1(n1684), .B0(n1590), .B1(cross[15]), .C0(N697), .C1(n1589), .Y(n180) );
  CLKINVX1 U1638 ( .A(n179), .Y(n1645) );
  AOI222XL U1639 ( .A0(N652), .A1(n1684), .B0(n1590), .B1(cross[14]), .C0(N696), .C1(n1589), .Y(n179) );
  CLKINVX1 U1640 ( .A(n178), .Y(n1646) );
  AOI222XL U1641 ( .A0(N651), .A1(n1634), .B0(n1590), .B1(cross[13]), .C0(N695), .C1(n1588), .Y(n178) );
  CLKINVX1 U1642 ( .A(n177), .Y(n1647) );
  AOI222XL U1643 ( .A0(N650), .A1(n1634), .B0(n1590), .B1(cross[12]), .C0(N694), .C1(n1588), .Y(n177) );
  CLKINVX1 U1644 ( .A(n176), .Y(n1648) );
  AOI222XL U1645 ( .A0(N649), .A1(n1634), .B0(n1590), .B1(cross[11]), .C0(N693), .C1(n1589), .Y(n176) );
  CLKINVX1 U1646 ( .A(n175), .Y(n1649) );
  AOI222XL U1647 ( .A0(N648), .A1(n1634), .B0(n1590), .B1(cross[10]), .C0(N692), .C1(n1589), .Y(n175) );
  CLKINVX1 U1648 ( .A(n174), .Y(n1650) );
  AOI222XL U1649 ( .A0(N647), .A1(n1634), .B0(n1590), .B1(cross[9]), .C0(N691), 
        .C1(n1588), .Y(n174) );
  CLKINVX1 U1650 ( .A(n173), .Y(n1651) );
  AOI222XL U1651 ( .A0(N646), .A1(n1634), .B0(n1590), .B1(cross[8]), .C0(N690), 
        .C1(n1588), .Y(n173) );
  NAND2X1 U1652 ( .A(n208), .B(n209), .Y(N620) );
  AOI222XL U1653 ( .A0(N609), .A1(n1683), .B0(N545), .B1(n1578), .C0(N557), 
        .C1(n1576), .Y(n208) );
  AOI222XL U1654 ( .A0(N569), .A1(n1585), .B0(ABy[6]), .B1(n1583), .C0(N597), 
        .C1(n1586), .Y(n209) );
  NAND2X1 U1655 ( .A(n210), .B(n211), .Y(N619) );
  AOI222XL U1656 ( .A0(N608), .A1(n1683), .B0(N544), .B1(n1579), .C0(N556), 
        .C1(n1576), .Y(n210) );
  AOI222XL U1657 ( .A0(N568), .A1(n1585), .B0(ABy[5]), .B1(n1583), .C0(N596), 
        .C1(n1586), .Y(n211) );
  NAND2X1 U1658 ( .A(n223), .B(n224), .Y(N484) );
  AOI222XL U1659 ( .A0(N433), .A1(n1575), .B0(N421), .B1(n1577), .C0(N473), 
        .C1(n1601), .Y(n223) );
  AOI222XL U1660 ( .A0(N393), .A1(n1578), .B0(ABx[10]), .B1(n1583), .C0(N461), 
        .C1(n1584), .Y(n224) );
  NAND2X1 U1661 ( .A(n228), .B(n229), .Y(N483) );
  AOI222XL U1662 ( .A0(N432), .A1(n1575), .B0(N420), .B1(n1576), .C0(N472), 
        .C1(n1601), .Y(n228) );
  AOI222XL U1663 ( .A0(N392), .A1(n1578), .B0(ABx[9]), .B1(n1583), .C0(N460), 
        .C1(n1584), .Y(n229) );
  CLKINVX1 U1664 ( .A(ctr6[2]), .Y(n1557) );
  NAND2X1 U1665 ( .A(n194), .B(n195), .Y(N624) );
  AOI222XL U1666 ( .A0(N613), .A1(n1683), .B0(N549), .B1(n1580), .C0(N561), 
        .C1(n1576), .Y(n194) );
  AOI222XL U1667 ( .A0(N573), .A1(n1585), .B0(ABy[10]), .B1(n1583), .C0(N601), 
        .C1(n1586), .Y(n195) );
  NAND2X1 U1668 ( .A(n202), .B(n203), .Y(N623) );
  AOI222XL U1669 ( .A0(N612), .A1(n1683), .B0(N548), .B1(n1581), .C0(N560), 
        .C1(n1576), .Y(n202) );
  AOI222XL U1670 ( .A0(N572), .A1(n1585), .B0(ABy[9]), .B1(n1583), .C0(N600), 
        .C1(n1586), .Y(n203) );
  NAND2X1 U1671 ( .A(n204), .B(n205), .Y(N622) );
  AOI222XL U1672 ( .A0(N611), .A1(n1683), .B0(N547), .B1(n1578), .C0(N559), 
        .C1(n1577), .Y(n204) );
  AOI222XL U1673 ( .A0(N571), .A1(n1585), .B0(ABy[8]), .B1(n1583), .C0(N599), 
        .C1(n1586), .Y(n205) );
  NAND2X1 U1674 ( .A(n206), .B(n207), .Y(N621) );
  AOI222XL U1675 ( .A0(N610), .A1(n1683), .B0(N546), .B1(n1580), .C0(N558), 
        .C1(n1577), .Y(n206) );
  AOI222XL U1676 ( .A0(N570), .A1(n1585), .B0(ABy[7]), .B1(n1583), .C0(N598), 
        .C1(n1586), .Y(n207) );
  NAND2X1 U1677 ( .A(n230), .B(n231), .Y(N482) );
  AOI222XL U1678 ( .A0(N431), .A1(n1575), .B0(N419), .B1(n1576), .C0(N471), 
        .C1(n1601), .Y(n230) );
  AOI222XL U1679 ( .A0(N391), .A1(n1579), .B0(ABx[8]), .B1(n1583), .C0(N459), 
        .C1(n1584), .Y(n231) );
  NAND2X1 U1680 ( .A(n232), .B(n233), .Y(N481) );
  AOI222XL U1681 ( .A0(N430), .A1(n1575), .B0(N418), .B1(n1577), .C0(N470), 
        .C1(n1601), .Y(n232) );
  AOI222XL U1682 ( .A0(N390), .A1(n1581), .B0(ABx[7]), .B1(n1583), .C0(N458), 
        .C1(n1584), .Y(n233) );
  NAND2X1 U1683 ( .A(n234), .B(n235), .Y(N480) );
  AOI222XL U1684 ( .A0(N429), .A1(n1575), .B0(N417), .B1(n1577), .C0(N469), 
        .C1(n1601), .Y(n234) );
  AOI222XL U1685 ( .A0(N389), .A1(n1579), .B0(ABx[6]), .B1(n1583), .C0(N457), 
        .C1(n1584), .Y(n235) );
  NAND2X1 U1686 ( .A(n236), .B(n237), .Y(N479) );
  AOI222XL U1687 ( .A0(N428), .A1(n1575), .B0(N416), .B1(n1576), .C0(N468), 
        .C1(n1601), .Y(n236) );
  AOI222XL U1688 ( .A0(N388), .A1(n1580), .B0(ABx[5]), .B1(n1583), .C0(N456), 
        .C1(n1584), .Y(n237) );
  CLKINVX1 U1689 ( .A(n172), .Y(n1652) );
  AOI222XL U1690 ( .A0(N645), .A1(n1634), .B0(n1590), .B1(cross[7]), .C0(N689), 
        .C1(n1589), .Y(n172) );
  CLKINVX1 U1691 ( .A(n171), .Y(n1653) );
  AOI222XL U1692 ( .A0(N644), .A1(n1634), .B0(n1590), .B1(cross[6]), .C0(N688), 
        .C1(n1589), .Y(n171) );
  NAND3BX1 U1693 ( .AN(n302), .B(n1407), .C(n1608), .Y(n297) );
  AOI33X1 U1694 ( .A0(n1702), .A1(n1405), .A2(sort_dicide), .B0(n1703), .B1(
        n1408), .B2(n358), .Y(n298) );
  CLKINVX1 U1695 ( .A(n285), .Y(n1701) );
  CLKINVX1 U1696 ( .A(n286), .Y(n1704) );
  AOI32X1 U1697 ( .A0(n1407), .A1(n1404), .A2(n1608), .B0(n285), .B1(n268), 
        .Y(n282) );
  XOR2X1 U1698 ( .A(n1486), .B(n353), .Y(n276) );
  XOR2X1 U1699 ( .A(n1444), .B(n352), .Y(n278) );
  XOR2X1 U1700 ( .A(n1443), .B(n354), .Y(n277) );
  NAND2X1 U1701 ( .A(n218), .B(n219), .Y(N615) );
  AOI222XL U1702 ( .A0(N604), .A1(n1683), .B0(N540), .B1(n1581), .C0(N552), 
        .C1(n1576), .Y(n218) );
  AOI222XL U1703 ( .A0(N564), .A1(n1585), .B0(ABy[1]), .B1(n1583), .C0(N592), 
        .C1(n1586), .Y(n219) );
  NAND2X1 U1704 ( .A(n242), .B(n243), .Y(N476) );
  AOI222XL U1705 ( .A0(N425), .A1(n1575), .B0(N413), .B1(n1577), .C0(N465), 
        .C1(n1601), .Y(n242) );
  AOI222XL U1706 ( .A0(N385), .A1(n1580), .B0(ABx[2]), .B1(n1583), .C0(N453), 
        .C1(n1584), .Y(n243) );
  OAI32X1 U1707 ( .A0(ctr6[1]), .A1(n354), .A2(n257), .B0(n352), .B1(n256), 
        .Y(N340) );
  OAI221XL U1708 ( .A0(n354), .A1(n260), .B0(n257), .B1(ctr6[0]), .C0(n261), 
        .Y(N339) );
  AOI31XL U1709 ( .A0(ns[1]), .A1(n1681), .A2(n1697), .B0(n1691), .Y(n261) );
  OAI22XL U1710 ( .A0(n1594), .A1(n449), .B0(n101), .B1(n1605), .Y(n540) );
  OAI22XL U1711 ( .A0(n1594), .A1(n430), .B0(n120), .B1(n1605), .Y(n559) );
  OAI22XL U1712 ( .A0(n1592), .A1(n405), .B0(n101), .B1(n1604), .Y(n584) );
  OAI22XL U1713 ( .A0(n1592), .A1(n386), .B0(n120), .B1(n1604), .Y(n603) );
  NOR2X1 U1714 ( .A(n1404), .B(n358), .Y(n302) );
  OR2X1 U1715 ( .A(n1486), .B(n271), .Y(n268) );
  NAND2X1 U1716 ( .A(n309), .B(n310), .Y(n271) );
  NAND2BX1 U1717 ( .AN(n129), .B(n354), .Y(n97) );
  OAI22XL U1718 ( .A0(n353), .A1(n256), .B0(n257), .B1(n258), .Y(N341) );
  OA21XL U1719 ( .A0(n126), .A1(n354), .B0(n133), .Y(n258) );
  OAI32X1 U1720 ( .A0(n125), .A1(n354), .A2(n96), .B0(n97), .B1(n126), .Y(n123) );
  NAND3X1 U1721 ( .A(n302), .B(n1608), .C(n357), .Y(n303) );
  OAI2BB2XL U1722 ( .B0(n271), .B1(n269), .A0N(n273), .A1N(n1444), .Y(N1027)
         );
  OAI22XL U1723 ( .A0(n310), .A1(n269), .B0(n1602), .B1(n1691), .Y(n273) );
  NAND2X1 U1724 ( .A(n220), .B(n221), .Y(N614) );
  AOI222XL U1725 ( .A0(N603), .A1(n1683), .B0(N539), .B1(n1580), .C0(N551), 
        .C1(n1577), .Y(n220) );
  AOI222XL U1726 ( .A0(N563), .A1(n1585), .B0(ABy[0]), .B1(n1583), .C0(N591), 
        .C1(n1586), .Y(n221) );
  NAND2X1 U1727 ( .A(n246), .B(n247), .Y(N474) );
  AOI222XL U1728 ( .A0(N423), .A1(n1575), .B0(N411), .B1(n1576), .C0(N463), 
        .C1(n1601), .Y(n246) );
  AOI222XL U1729 ( .A0(N383), .A1(n1579), .B0(ABx[0]), .B1(n1583), .C0(N451), 
        .C1(n1584), .Y(n247) );
  BUFX4 U1730 ( .A(n1543), .Y(n1569) );
  NOR2X1 U1731 ( .A(n1568), .B(ctr6[0]), .Y(n1543) );
  NAND2X1 U1732 ( .A(n212), .B(n213), .Y(N618) );
  AOI222XL U1733 ( .A0(N607), .A1(n1683), .B0(N543), .B1(n1579), .C0(N555), 
        .C1(n1577), .Y(n212) );
  AOI222XL U1734 ( .A0(N567), .A1(n1585), .B0(ABy[4]), .B1(n1583), .C0(N595), 
        .C1(n1586), .Y(n213) );
  NAND2X1 U1735 ( .A(n214), .B(n215), .Y(N617) );
  AOI222XL U1736 ( .A0(N606), .A1(n1683), .B0(N542), .B1(n1581), .C0(N554), 
        .C1(n1577), .Y(n214) );
  AOI222XL U1737 ( .A0(N566), .A1(n1585), .B0(ABy[3]), .B1(n1583), .C0(N594), 
        .C1(n1586), .Y(n215) );
  NAND2X1 U1738 ( .A(n216), .B(n217), .Y(N616) );
  AOI222XL U1739 ( .A0(N605), .A1(n1683), .B0(N541), .B1(n1580), .C0(N553), 
        .C1(n1576), .Y(n216) );
  AOI222XL U1740 ( .A0(N565), .A1(n1585), .B0(ABy[2]), .B1(n197), .C0(N593), 
        .C1(n1586), .Y(n217) );
  NAND2X1 U1741 ( .A(n238), .B(n239), .Y(N478) );
  AOI222XL U1742 ( .A0(N427), .A1(n1575), .B0(N415), .B1(n1576), .C0(N467), 
        .C1(n1601), .Y(n238) );
  AOI222XL U1743 ( .A0(N387), .A1(n1581), .B0(ABx[4]), .B1(n1583), .C0(N455), 
        .C1(n1584), .Y(n239) );
  NAND2X1 U1744 ( .A(n240), .B(n241), .Y(N477) );
  AOI222XL U1745 ( .A0(N426), .A1(n1575), .B0(N414), .B1(n1577), .C0(N466), 
        .C1(n1601), .Y(n240) );
  AOI222XL U1746 ( .A0(N386), .A1(n1578), .B0(ABx[3]), .B1(n1583), .C0(N454), 
        .C1(n1584), .Y(n241) );
  NAND2X1 U1747 ( .A(n244), .B(n245), .Y(N475) );
  AOI222XL U1748 ( .A0(N424), .A1(n1575), .B0(N412), .B1(n1576), .C0(N464), 
        .C1(n1601), .Y(n244) );
  AOI222XL U1749 ( .A0(N384), .A1(n1578), .B0(ABx[1]), .B1(n1583), .C0(N452), 
        .C1(n1584), .Y(n245) );
  OAI32X1 U1750 ( .A0(n126), .A1(n354), .A2(n125), .B0(n133), .B1(n97), .Y(
        n131) );
  CLKINVX1 U1751 ( .A(n170), .Y(n1654) );
  AOI222XL U1752 ( .A0(N643), .A1(n1634), .B0(n1590), .B1(cross[5]), .C0(N687), 
        .C1(n1588), .Y(n170) );
  CLKINVX1 U1753 ( .A(n169), .Y(n1655) );
  AOI222XL U1754 ( .A0(N642), .A1(n1634), .B0(n1590), .B1(cross[4]), .C0(N686), 
        .C1(n1588), .Y(n169) );
  CLKBUFX3 U1755 ( .A(n359), .Y(n1608) );
  CLKINVX1 U1756 ( .A(n289), .Y(n1700) );
  AOI21X1 U1757 ( .A0(n290), .A1(n291), .B0(n292), .Y(n287) );
  NOR4X1 U1758 ( .A(n352), .B(n353), .C(n293), .D(ctr6[0]), .Y(n292) );
  AOI2BB2X1 U1759 ( .B0(n1571), .B1(n1699), .A0N(ns[3]), .A1N(n1571), .Y(n253)
         );
  CLKINVX1 U1760 ( .A(n166), .Y(n1658) );
  AOI222XL U1761 ( .A0(N639), .A1(n1634), .B0(n1590), .B1(cross[1]), .C0(N683), 
        .C1(n1588), .Y(n166) );
  OAI32X1 U1762 ( .A0(n1691), .A1(n310), .A2(n1602), .B0(n1443), .B1(n269), 
        .Y(N1026) );
  NAND2X1 U1763 ( .A(n1636), .B(n361), .Y(n125) );
  OAI22XL U1764 ( .A0(n1607), .A1(n471), .B0(n101), .B1(n1595), .Y(n518) );
  OAI22XL U1765 ( .A0(n1607), .A1(n452), .B0(n120), .B1(n1595), .Y(n537) );
  OAI22XL U1766 ( .A0(n1593), .A1(n427), .B0(n101), .B1(n1606), .Y(n562) );
  OAI22XL U1767 ( .A0(n1593), .A1(n408), .B0(n120), .B1(n1606), .Y(n581) );
  OAI22XL U1768 ( .A0(n1591), .A1(n383), .B0(n101), .B1(n1603), .Y(n606) );
  OAI22XL U1769 ( .A0(n1591), .A1(n364), .B0(n120), .B1(n1603), .Y(n625) );
  NOR2X1 U1770 ( .A(n1407), .B(n356), .Y(n290) );
  NAND2BX1 U1771 ( .AN(n353), .B(n352), .Y(n133) );
  OAI22XL U1772 ( .A0(n1637), .A1(n493), .B0(n1597), .B1(n1475), .Y(n496) );
  OAI22XL U1773 ( .A0(n1637), .A1(n474), .B0(n1596), .B1(n1476), .Y(n515) );
  NAND2X1 U1774 ( .A(n357), .B(n356), .Y(n293) );
  NAND2BX1 U1775 ( .AN(n362), .B(n159), .Y(n294) );
  CLKINVX1 U1776 ( .A(n168), .Y(n1656) );
  AOI222XL U1777 ( .A0(N641), .A1(n1634), .B0(n1590), .B1(cross[3]), .C0(N685), 
        .C1(n1589), .Y(n168) );
  CLKINVX1 U1778 ( .A(n167), .Y(n1657) );
  AOI222XL U1779 ( .A0(N640), .A1(n1634), .B0(n1590), .B1(cross[2]), .C0(N684), 
        .C1(n1589), .Y(n167) );
  CLKINVX1 U1780 ( .A(n162), .Y(n1659) );
  AOI222XL U1781 ( .A0(N638), .A1(n1634), .B0(n1590), .B1(cross[0]), .C0(N682), 
        .C1(n1588), .Y(n162) );
  OAI32X1 U1782 ( .A0(n160), .A1(n361), .A2(n1571), .B0(n362), .B1(n1694), .Y(
        n628) );
  CLKINVX1 U1783 ( .A(n160), .Y(n1694) );
  NOR2X1 U1784 ( .A(n362), .B(n191), .Y(N1033) );
  NAND2X1 U1785 ( .A(n353), .B(ctr6[1]), .Y(n126) );
  NAND2X1 U1786 ( .A(n353), .B(n352), .Y(n96) );
  NOR2X1 U1787 ( .A(n354), .B(ctr6[2]), .Y(n1487) );
  NOR2X1 U1788 ( .A(ctr6[2]), .B(ctr6[0]), .Y(n1488) );
  AOI22X1 U1789 ( .A0(n1560), .A1(\yg[1][0] ), .B0(n1564), .B1(\yg[2][0] ), 
        .Y(n1490) );
  AOI222XL U1790 ( .A0(\yg[0][0] ), .A1(n1562), .B0(n1409), .B1(n1569), .C0(
        \yg[5][0] ), .C1(n1570), .Y(n1489) );
  AOI22X1 U1791 ( .A0(n1560), .A1(\yg[1][1] ), .B0(n1564), .B1(\yg[2][1] ), 
        .Y(n1492) );
  AOI222XL U1792 ( .A0(\yg[0][1] ), .A1(n1562), .B0(n1410), .B1(n1569), .C0(
        \yg[5][1] ), .C1(n1570), .Y(n1491) );
  OAI211X1 U1793 ( .A0(n1567), .A1(n418), .B0(n1492), .C0(n1491), .Y(N511) );
  AOI22X1 U1794 ( .A0(n1560), .A1(\yg[1][2] ), .B0(n1403), .B1(\yg[2][2] ), 
        .Y(n1494) );
  AOI222XL U1795 ( .A0(\yg[0][2] ), .A1(n1562), .B0(n1411), .B1(n1569), .C0(
        \yg[5][2] ), .C1(n1570), .Y(n1493) );
  OAI211X1 U1796 ( .A0(n1567), .A1(n419), .B0(n1494), .C0(n1493), .Y(N510) );
  AOI22X1 U1797 ( .A0(n1560), .A1(\yg[1][3] ), .B0(n1403), .B1(\yg[2][3] ), 
        .Y(n1496) );
  AOI222XL U1798 ( .A0(\yg[0][3] ), .A1(n1562), .B0(n1419), .B1(n1569), .C0(
        \yg[5][3] ), .C1(n1570), .Y(n1495) );
  OAI211X1 U1799 ( .A0(n1567), .A1(n420), .B0(n1496), .C0(n1495), .Y(N509) );
  AOI22X1 U1800 ( .A0(n1560), .A1(\yg[1][4] ), .B0(n1403), .B1(\yg[2][4] ), 
        .Y(n1498) );
  AOI222XL U1801 ( .A0(\yg[0][4] ), .A1(n1562), .B0(n1420), .B1(n1569), .C0(
        \yg[5][4] ), .C1(n1570), .Y(n1497) );
  OAI211X1 U1802 ( .A0(n1567), .A1(n421), .B0(n1498), .C0(n1497), .Y(N508) );
  AOI22X1 U1803 ( .A0(n1560), .A1(\yg[1][5] ), .B0(n1403), .B1(\yg[2][5] ), 
        .Y(n1500) );
  AOI222XL U1804 ( .A0(\yg[0][5] ), .A1(n1562), .B0(n1427), .B1(n1569), .C0(
        \yg[5][5] ), .C1(n1570), .Y(n1499) );
  OAI211X1 U1805 ( .A0(n1567), .A1(n422), .B0(n1500), .C0(n1499), .Y(N507) );
  AOI22X1 U1806 ( .A0(n1560), .A1(\yg[1][6] ), .B0(n1403), .B1(\yg[2][6] ), 
        .Y(n1502) );
  AOI222XL U1807 ( .A0(\yg[0][6] ), .A1(n1562), .B0(n1428), .B1(n1569), .C0(
        \yg[5][6] ), .C1(n1570), .Y(n1501) );
  OAI211X1 U1808 ( .A0(n1567), .A1(n423), .B0(n1502), .C0(n1501), .Y(N506) );
  AOI22X1 U1809 ( .A0(n1560), .A1(\yg[1][7] ), .B0(n1563), .B1(\yg[2][7] ), 
        .Y(n1504) );
  AOI222XL U1810 ( .A0(\yg[0][7] ), .A1(n1562), .B0(n1435), .B1(n1569), .C0(
        \yg[5][7] ), .C1(n1570), .Y(n1503) );
  OAI211X1 U1811 ( .A0(n1567), .A1(n424), .B0(n1504), .C0(n1503), .Y(N505) );
  AOI22X1 U1812 ( .A0(n1560), .A1(\yg[1][8] ), .B0(n1564), .B1(\yg[2][8] ), 
        .Y(n1506) );
  AOI222XL U1813 ( .A0(\yg[0][8] ), .A1(n1562), .B0(n1436), .B1(n1569), .C0(
        \yg[5][8] ), .C1(n1570), .Y(n1505) );
  OAI211X1 U1814 ( .A0(n1567), .A1(n425), .B0(n1506), .C0(n1505), .Y(N504) );
  AOI22X1 U1815 ( .A0(n1560), .A1(\yg[1][9] ), .B0(n1563), .B1(\yg[2][9] ), 
        .Y(n1508) );
  AOI222XL U1816 ( .A0(\yg[0][9] ), .A1(n1562), .B0(n1445), .B1(n1569), .C0(
        \yg[5][9] ), .C1(n1570), .Y(n1507) );
  OAI211X1 U1817 ( .A0(n1567), .A1(n426), .B0(n1508), .C0(n1507), .Y(N503) );
  AOI22X1 U1818 ( .A0(n1560), .A1(\yg[1][10] ), .B0(n1564), .B1(\yg[2][10] ), 
        .Y(n1510) );
  AOI222XL U1819 ( .A0(\yg[0][10] ), .A1(n1562), .B0(n1446), .B1(n1569), .C0(
        \yg[5][10] ), .C1(n1570), .Y(n1509) );
  OAI211X1 U1820 ( .A0(n1567), .A1(n427), .B0(n1510), .C0(n1509), .Y(N502) );
  AOI222XL U1821 ( .A0(n1417), .A1(n1564), .B0(\yg[1][0] ), .B1(n1402), .C0(
        \yg[2][0] ), .C1(n1559), .Y(n1511) );
  AOI222XL U1822 ( .A0(n1415), .A1(n1564), .B0(\yg[1][1] ), .B1(n1562), .C0(
        \yg[2][1] ), .C1(n1560), .Y(n1512) );
  AOI222XL U1823 ( .A0(n1423), .A1(n1403), .B0(\yg[1][2] ), .B1(n1562), .C0(
        \yg[2][2] ), .C1(n1560), .Y(n1513) );
  AOI222XL U1824 ( .A0(n1424), .A1(n1403), .B0(\yg[1][3] ), .B1(n1562), .C0(
        \yg[2][3] ), .C1(n1560), .Y(n1514) );
  AOI222XL U1825 ( .A0(n1431), .A1(n1403), .B0(\yg[1][4] ), .B1(n1562), .C0(
        \yg[2][4] ), .C1(n1560), .Y(n1515) );
  AOI222XL U1826 ( .A0(n1432), .A1(n1403), .B0(\yg[1][5] ), .B1(n1562), .C0(
        \yg[2][5] ), .C1(n1558), .Y(n1516) );
  AOI222XL U1827 ( .A0(n1439), .A1(n1403), .B0(\yg[1][6] ), .B1(n1561), .C0(
        \yg[2][6] ), .C1(n1558), .Y(n1517) );
  AOI222XL U1828 ( .A0(n1440), .A1(n1563), .B0(\yg[1][7] ), .B1(n1561), .C0(
        \yg[2][7] ), .C1(n1558), .Y(n1518) );
  AOI222XL U1829 ( .A0(n1449), .A1(n1563), .B0(\yg[1][8] ), .B1(n1561), .C0(
        \yg[2][8] ), .C1(n1558), .Y(n1519) );
  AOI222XL U1830 ( .A0(n1450), .A1(n1563), .B0(\yg[1][9] ), .B1(n1561), .C0(
        \yg[2][9] ), .C1(n1558), .Y(n1520) );
  AOI222XL U1831 ( .A0(n1453), .A1(n1563), .B0(\yg[1][10] ), .B1(n1561), .C0(
        \yg[2][10] ), .C1(n1558), .Y(n1521) );
  AOI22X1 U1832 ( .A0(n1559), .A1(\xg[1][0] ), .B0(n1564), .B1(\xg[2][0] ), 
        .Y(n1523) );
  AOI222XL U1833 ( .A0(\xg[0][0] ), .A1(n1562), .B0(n1569), .B1(n1412), .C0(
        n1570), .C1(\xg[5][0] ), .Y(n1522) );
  AOI22X1 U1834 ( .A0(n1559), .A1(\xg[1][1] ), .B0(n1564), .B1(\xg[2][1] ), 
        .Y(n1525) );
  AOI222XL U1835 ( .A0(\xg[0][1] ), .A1(n1562), .B0(n1569), .B1(n1413), .C0(
        n1570), .C1(\xg[5][1] ), .Y(n1524) );
  OAI211X1 U1836 ( .A0(n1566), .A1(n417), .B0(n1525), .C0(n1524), .Y(N369) );
  AOI22X1 U1837 ( .A0(n1559), .A1(\xg[1][2] ), .B0(n1564), .B1(\xg[2][2] ), 
        .Y(n1527) );
  AOI222XL U1838 ( .A0(\xg[0][2] ), .A1(n1562), .B0(n1569), .B1(n1414), .C0(
        n1570), .C1(\xg[5][2] ), .Y(n1526) );
  OAI211X1 U1839 ( .A0(n1566), .A1(n416), .B0(n1527), .C0(n1526), .Y(N368) );
  AOI22X1 U1840 ( .A0(n1559), .A1(\xg[1][3] ), .B0(n1564), .B1(\xg[2][3] ), 
        .Y(n1529) );
  AOI222XL U1841 ( .A0(\xg[0][3] ), .A1(n1402), .B0(n1569), .B1(n1421), .C0(
        n1570), .C1(\xg[5][3] ), .Y(n1528) );
  OAI211X1 U1842 ( .A0(n1566), .A1(n415), .B0(n1529), .C0(n1528), .Y(N367) );
  AOI22X1 U1843 ( .A0(n1560), .A1(\xg[1][4] ), .B0(n1403), .B1(\xg[2][4] ), 
        .Y(n1531) );
  AOI222XL U1844 ( .A0(\xg[0][4] ), .A1(n1562), .B0(n1569), .B1(n1422), .C0(
        n1570), .C1(\xg[5][4] ), .Y(n1530) );
  OAI211X1 U1845 ( .A0(n1567), .A1(n414), .B0(n1531), .C0(n1530), .Y(N366) );
  AOI22X1 U1846 ( .A0(n1559), .A1(\xg[1][5] ), .B0(n1564), .B1(\xg[2][5] ), 
        .Y(n1533) );
  AOI222XL U1847 ( .A0(\xg[0][5] ), .A1(n1402), .B0(n1569), .B1(n1429), .C0(
        n1570), .C1(\xg[5][5] ), .Y(n1532) );
  OAI211X1 U1848 ( .A0(n1566), .A1(n413), .B0(n1533), .C0(n1532), .Y(N365) );
  AOI22X1 U1849 ( .A0(n1559), .A1(\xg[1][6] ), .B0(n1564), .B1(\xg[2][6] ), 
        .Y(n1535) );
  AOI222XL U1850 ( .A0(\xg[0][6] ), .A1(n1402), .B0(n1569), .B1(n1430), .C0(
        n1570), .C1(\xg[5][6] ), .Y(n1534) );
  OAI211X1 U1851 ( .A0(n1566), .A1(n412), .B0(n1535), .C0(n1534), .Y(N364) );
  AOI22X1 U1852 ( .A0(n1559), .A1(\xg[1][7] ), .B0(n1564), .B1(\xg[2][7] ), 
        .Y(n1537) );
  AOI222XL U1853 ( .A0(\xg[0][7] ), .A1(n1402), .B0(n1569), .B1(n1437), .C0(
        n1570), .C1(\xg[5][7] ), .Y(n1536) );
  OAI211X1 U1854 ( .A0(n1566), .A1(n411), .B0(n1537), .C0(n1536), .Y(N363) );
  AOI22X1 U1855 ( .A0(n1559), .A1(\xg[1][8] ), .B0(n1564), .B1(\xg[2][8] ), 
        .Y(n1539) );
  AOI222XL U1856 ( .A0(\xg[0][8] ), .A1(n1402), .B0(n1569), .B1(n1438), .C0(
        n1570), .C1(\xg[5][8] ), .Y(n1538) );
  OAI211X1 U1857 ( .A0(n1566), .A1(n410), .B0(n1539), .C0(n1538), .Y(N362) );
  AOI22X1 U1858 ( .A0(n1559), .A1(\xg[1][9] ), .B0(n1564), .B1(\xg[2][9] ), 
        .Y(n1541) );
  AOI222XL U1859 ( .A0(\xg[0][9] ), .A1(n1402), .B0(n1569), .B1(n1447), .C0(
        n1570), .C1(\xg[5][9] ), .Y(n1540) );
  OAI211X1 U1860 ( .A0(n1566), .A1(n409), .B0(n1541), .C0(n1540), .Y(N361) );
  AOI22X1 U1861 ( .A0(\xg[1][10] ), .A1(n1560), .B0(\xg[2][10] ), .B1(n1564), 
        .Y(n1545) );
  AOI222XL U1862 ( .A0(\xg[0][10] ), .A1(n1562), .B0(n1569), .B1(n1448), .C0(
        n1570), .C1(\xg[5][10] ), .Y(n1544) );
  OAI211X1 U1863 ( .A0(n408), .A1(n1567), .B0(n1545), .C0(n1544), .Y(N360) );
  AOI222XL U1864 ( .A0(n1418), .A1(n1563), .B0(\xg[1][0] ), .B1(n1561), .C0(
        \xg[2][0] ), .C1(n1558), .Y(n1546) );
  AOI222XL U1865 ( .A0(n1416), .A1(n1563), .B0(\xg[1][1] ), .B1(n1561), .C0(
        \xg[2][1] ), .C1(n1558), .Y(n1547) );
  AOI222XL U1866 ( .A0(n1425), .A1(n1563), .B0(\xg[1][2] ), .B1(n1561), .C0(
        \xg[2][2] ), .C1(n1558), .Y(n1548) );
  AOI222XL U1867 ( .A0(n1426), .A1(n1563), .B0(\xg[1][3] ), .B1(n1561), .C0(
        \xg[2][3] ), .C1(n1558), .Y(n1549) );
  AOI222XL U1868 ( .A0(n1433), .A1(n1563), .B0(\xg[1][4] ), .B1(n1402), .C0(
        \xg[2][4] ), .C1(n1559), .Y(n1550) );
  AOI222XL U1869 ( .A0(n1434), .A1(n1563), .B0(\xg[1][5] ), .B1(n1561), .C0(
        \xg[2][5] ), .C1(n1558), .Y(n1551) );
  AOI222XL U1870 ( .A0(n1441), .A1(n1564), .B0(\xg[1][6] ), .B1(n1402), .C0(
        \xg[2][6] ), .C1(n1559), .Y(n1552) );
  AOI222XL U1871 ( .A0(n1442), .A1(n1563), .B0(\xg[1][7] ), .B1(n1561), .C0(
        \xg[2][7] ), .C1(n1558), .Y(n1553) );
  AOI222XL U1872 ( .A0(n1451), .A1(n1564), .B0(\xg[1][8] ), .B1(n1402), .C0(
        \xg[2][8] ), .C1(n1559), .Y(n1554) );
  AOI222XL U1873 ( .A0(n1452), .A1(n1563), .B0(\xg[1][9] ), .B1(n1561), .C0(
        \xg[2][9] ), .C1(n1558), .Y(n1555) );
  AOI222XL U1874 ( .A0(n1454), .A1(n1563), .B0(\xg[1][10] ), .B1(n1561), .C0(
        \xg[2][10] ), .C1(n1558), .Y(n1556) );
endmodule

