module str_14;
  string A=("DESIGN VERIFICATION");
  initial begin
    for(int i=0; i<18;i++)
      $display("A%s",A[i]);
  end
endmodule

result
# KERNEL: D
# KERNEL: E
# KERNEL: S
# KERNEL: I
# KERNEL: G
# KERNEL: N
# KERNEL: A  //space
# KERNEL: V
# KERNEL: E
# KERNEL: R
# KERNEL: I
# KERNEL: F
# KERNEL: I
# KERNEL: C
# KERNEL: A
# KERNEL: T
# KERNEL: I
# KERNEL: O
# KERNEL: N
