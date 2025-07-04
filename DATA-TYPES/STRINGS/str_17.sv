module str_17;
  string A="DESIGN ";
  string B="AND ";
  string C="VERFICATION ";
  string D="ENGINEER ";
  initial begin
    $display({5{A}},B,C,D);end
              endmodule

result
# KERNEL: DESIGN DESIGN DESIGN DESIGN DESIGN AND VERFICATION ENGINEER
