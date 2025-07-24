module data_casting_integer_to_int;
  integer integer_data;
  int int_data;
  initial begin
    integer_data=8'b101z_x1z1;
    $display("default size of integer_data=%d",$size(integer_data));
    $display("before integer_data=%b",integer_data);
    int_data=int'(integer_data);
    $display("after converting integer_data to int=%b",int_data);
    end
endmodule

# KERNEL: default size of integer_data=         32
# KERNEL: before integer_data=000000000000000000000000101zx1z1
# KERNEL: after converting integer_data to int=00000000000000000000000010100101
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
