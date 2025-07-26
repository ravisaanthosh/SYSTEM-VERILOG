module static_real_to_int;
  real realdata;
  int intdata;
  initial begin
    realdata=9.24;
    $display("before casting of real=%f",realdata);
    intdata=int'(realdata);
    $display("after to casting real into int =%f",intdata);
  end
endmodule

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: before casting of real=9.240000
# KERNEL: after to casting real into int =9.000000
