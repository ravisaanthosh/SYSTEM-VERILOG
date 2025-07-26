module static_logic_to_byte;
  logic logic_data;
  byte byte_data;
  initial begin
    logic_data=1'b1;
    $display("before casting logic_data=%b",logic_data);
    byte_data=byte'(logic_data);
    $display("after casting logic_data into bye_data=%b",byte_data);
  end
endmodule

# KERNEL: before casting logic_data=1
# KERNEL: after casting logic_data into bye_data=00000001
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
