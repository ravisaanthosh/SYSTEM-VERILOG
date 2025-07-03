module str_10;
  string A="VERIFICATION";
  string B="verification";
  initial begin
    $display("your's expected output for compare A and B str_10 is =%d",A.icompare(B)); //case insensitive
  end
endmodule

result 
KERNEL: your's expected output for compare A and B str_10 is = 0
