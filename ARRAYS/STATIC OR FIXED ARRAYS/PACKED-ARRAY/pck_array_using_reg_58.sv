module pck_array_using_reg_58;
  reg[4:0]def;
  initial begin
    def=5'b10010;
    $display("your's finial def packed array=[%0d]",def);
  end
endmodule

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: your's finial def packed array=[18]
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
