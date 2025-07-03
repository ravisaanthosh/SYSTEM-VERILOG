module str_05;
  string A=("DESIGN_ENGINEER");
  initial begin
    $display("your's expected output for str_05 is A=%s",A.getc(2));
  end
endmodule

result
 KERNEL: your's expected output for str_05 is A=S
