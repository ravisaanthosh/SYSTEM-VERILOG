module str_09;
  string A="DESIGN";
  string B="DESIG";
  initial begin
    $display("your's expected output for compare A and B is %d",A.compare(B));
  end
endmodule

result
# KERNEL: your's expected output for compare A and B is   = 1
