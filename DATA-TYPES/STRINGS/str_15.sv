module str_15;
  string A="DESIGN";
  string B="VERIFICATION";
  initial begin
    if(A>B)
      $display("A is greater than B");
      else
        $display("A is not greater than B");
  end
endmodule

result
# KERNEL: A is not greater than B
