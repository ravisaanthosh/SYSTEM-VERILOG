module short_int_to_int_to_longhint;
  shortint short_int_data;
  int int_data;
  longint long_int_data;
  initial begin
    short_int_data=8'b1111_xxzz;
    $display("original size of short_int_data=%b",$size(short_int_data));
    $display("converting_before size of short_int_data=%b",short_int_data);
    short_int_data=($cast(int_data,short_int_data));
    $display("after casting shortint to int data=%b",int_data);
    short_int_data=($cast(long_int_data,int_data));
    $display("after casting shortint to long int data=%b",long_int_data);
  end
endmodule

# KERNEL: original size of short_int_data=00000000000000000000000000010000
# KERNEL: converting_before size of short_int_data=0000000011110000
# KERNEL: after casting shortint to int data=00000000000000000000000011110000
# KERNEL: after casting shortint to long int data=0000000000000000000000000000000000000000000000000000000011110000
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
