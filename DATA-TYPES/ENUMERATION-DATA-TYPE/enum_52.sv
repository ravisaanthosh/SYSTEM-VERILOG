module enumeration_type_1;
  enum{RAVI,LAKSHMI,SANTHOSH,VIGNESH}family_enum;
  initial begin
    family_enum=SANTHOSH;
    $display("one of your family person=%d",family_enum);
  end
endmodule

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: one of your family person=          2
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
