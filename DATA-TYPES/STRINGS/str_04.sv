module str_04;
  string A=("DESIGN_ENGINNER");
  initial begin
    $display("your's out str_04 on A=%s",A.putc(5,"d"));
  end
endmodule

result
EDA complier's tool error for put.c keyword
ERROR VCP7292 "String method putc is not a function." 

  EXPECTED OUTPUT 
   "DESIGd_ENGINNER"

update code 
  module str_04;
    string A=("DESIGN_ENGINNER");
  initial begin
    A.putc(5,"d");
    $display("your's out str_04 on A=%s",A);
  end
endmodule
  result
# KERNEL: your's out str_04 on A=DESIGd_ENGINNER
