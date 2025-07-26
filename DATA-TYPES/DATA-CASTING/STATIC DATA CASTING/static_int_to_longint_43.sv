module static_casting_int_to_long_int;
  int int_data;
  longint longint_data;
  initial begin
    int_data=8'b1100_zzxx;
    $display("default size of int_data=%b",$size(int_data));
    $display("before casting of int_data=%b",int_data);
    int_data=longint'(int_data);
    $display("after casting int_data to longint_data=%b",int_data);
  end
endmodule

# KERNEL: default size of int_data=00000000000000000000000000100000
# KERNEL: before casting of int_data=00000000000000000000000011000000
# KERNEL: after casting int_data to longint_data=00000000000000000000000011000000
