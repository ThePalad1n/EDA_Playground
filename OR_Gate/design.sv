module orgate(A,B,O);
  input A, B;
  output O;
  wire P;
  
  nor G1(P,A,B);
  not G2(O, P);
  
endmodule