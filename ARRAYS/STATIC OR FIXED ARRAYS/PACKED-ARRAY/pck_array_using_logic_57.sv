module pck_array_using_logic_wire_reg_57;
  logic[8:0]abc;
  initial begin
    abc=9'b1111_11101;
    foreach(abc[i])begin
      $display("your's finial abc packed array=[%0d]",i,abc[i]);
      end
    end
    endmodule

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: your's finial abc packed array=[8]1
# KERNEL: your's finial abc packed array=[7]1
# KERNEL: your's finial abc packed array=[6]1
# KERNEL: your's finial abc packed array=[5]1
# KERNEL: your's finial abc packed array=[4]1
# KERNEL: your's finial abc packed array=[3]1
# KERNEL: your's finial abc packed array=[2]1
# KERNEL: your's finial abc packed array=[1]0
# KERNEL: your's finial abc packed array=[0]1

