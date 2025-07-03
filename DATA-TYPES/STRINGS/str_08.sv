module str_8;
  string A="fffac123";
  initial begin
    $display("your expected output for str_8 is A=%h",A.atohex);
  end
endmodule

result
# KERNEL: your expected output for str_8 is A=fffac123
