module str_12;
  string A="DESIGN";
  string B="DESIGN;
  initial begin
    if(A==B)
      $display("A and B are equal");
      else
        $display("Aand B are not equal");
  end
endmodule

result
# KERNEL: A and B are equal
