module dynamic_bit_to_byte;
  bit bit_data;
  byte byte_data;
  initial begin
    bit_data=1'b1;
    $display("before casting bit_data=%b",bit_data);
    byte_data=($cast(byte_data,bit_data));
    $display("after casting  bit_data into byte_data =%b",byte_data);
  end
endmodule

# KERNEL: before casting bit_data=1
# KERNEL: after casting  bit_data into byte_data =00000001
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
