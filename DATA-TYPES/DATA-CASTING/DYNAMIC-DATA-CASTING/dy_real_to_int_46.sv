module dynamic_real_to_int;
  real realdata;
  int intdata;
  initial begin
    realdata=9.245;
    $display("before casting of real=%f",realdata);
    realdata=($cast(intdata,realdata));
    $display("after to casting real into int =%f",intdata);
  end
endmodule


# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: before casting of real=9.245000
# KERNEL: after to casting real into int =9.000000
