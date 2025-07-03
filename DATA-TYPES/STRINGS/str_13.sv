module str_12;
  string A="DESIGN";
  string B="VERIFICATION";
  initial begin
    if(A!=B)
      $display("A and B are not equal");
    else
      $display("A and B are equal");
  end
endmodule

result
# KERNEL: A and B are not equal
