module logic_gates(input a,b,
output ANDo,ORo,NOTo,XORo,XNORo,NANDo,NORo);
assign ANDo=a&b;
assign ORo=a|b;
assign NOTo=~a;
assign XORo=a^b;
assign XNORo=~(a^b);
assign NANDo=~(a&b);
assign NORo=~(a|b);
endmodule