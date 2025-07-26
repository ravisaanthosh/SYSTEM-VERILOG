module static_real_to_time;
  real realdata;
  time timedata;
  initial begin
    realdata=9.2134;
    $display("before casting real data=%f",realdata);
    timedata=time'(realdata);
    $display("after casting real into time=%b ",timedata);
  end
endmodule


# Allocation: Simulator allocated 4664 kB (elbread=427 elab2=4103 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: before casting real data=9.213400
# KERNEL: after casting real into time=0000000000000000000000000000000000000000000000000000000000001001 
