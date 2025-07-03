module str_11;
  string A="DESIGN";
  initial begin
    $display("your expected output for A is =%s",A.substr(2,3));
  end
endmodule

result
# KERNEL: your expected output for A is =SI
