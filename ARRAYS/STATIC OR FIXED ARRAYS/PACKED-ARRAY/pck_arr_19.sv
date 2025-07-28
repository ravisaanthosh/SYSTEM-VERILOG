module pck_array;
  bit[4:0]pqrs;
  initial begin
    pqrs=5'b111_z1;
    foreach(pqrs[i])begin
      $display("your's pqrs packed array is=[%0d]",i,pqrs[i]);
    end
  end
    endmodule


# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: your's pqrs packed array is=[4]1
# KERNEL: your's pqrs packed array is=[3]1
# KERNEL: your's pqrs packed array is=[2]1
# KERNEL: your's pqrs packed array is=[1]0
# KERNEL: your's pqrs packed array is=[0]1
