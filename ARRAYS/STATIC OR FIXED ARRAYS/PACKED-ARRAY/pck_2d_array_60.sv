module pck_2d_array60;
  bit[7:0][6:0]pck_2d;
  initial begin
    pck_2d=56'b11110_1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
    foreach(pck_2d[i])begin
    foreach(pck_2d[i][j])begin
      $display("your's tow dimentional packed array is=[%0d][%0d]",i,pck_2d[i][j]);
    end
  end
  end
endmodule

# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4664 kB (elbread=427 elab2=4103 kernel=134 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: your's tow dimentional packed array is=[7][1]
# KERNEL: your's tow dimentional packed array is=[7][1]
# KERNEL: your's tow dimentional packed array is=[7][1]
# KERNEL: your's tow dimentional packed array is=[7][1]
# KERNEL: your's tow dimentional packed array is=[7][1]
# KERNEL: your's tow dimentional packed array is=[7][1]
# KERNEL: your's tow dimentional packed array is=[7][1]
# KERNEL: your's tow dimentional packed array is=[6][1]
# KERNEL: your's tow dimentional packed array is=[6][1]
# KERNEL: your's tow dimentional packed array is=[6][1]
# KERNEL: your's tow dimentional packed array is=[6][1]
# KERNEL: your's tow dimentional packed array is=[6][1]
# KERNEL: your's tow dimentional packed array is=[6][1]
# KERNEL: your's tow dimentional packed array is=[6][1]
# KERNEL: your's tow dimentional packed array is=[5][1]
# KERNEL: your's tow dimentional packed array is=[5][1]
# KERNEL: your's tow dimentional packed array is=[5][1]
# KERNEL: your's tow dimentional packed array is=[5][1]
# KERNEL: your's tow dimentional packed array is=[5][1]
# KERNEL: your's tow dimentional packed array is=[5][1]
# KERNEL: your's tow dimentional packed array is=[5][1]
# KERNEL: your's tow dimentional packed array is=[4][1]
# KERNEL: your's tow dimentional packed array is=[4][1]
# KERNEL: your's tow dimentional packed array is=[4][1]
# KERNEL: your's tow dimentional packed array is=[4][1]
# KERNEL: your's tow dimentional packed array is=[4][1]
# KERNEL: your's tow dimentional packed array is=[4][1]
# KERNEL: your's tow dimentional packed array is=[4][1]
# KERNEL: your's tow dimentional packed array is=[3][1]
# KERNEL: your's tow dimentional packed array is=[3][1]
# KERNEL: your's tow dimentional packed array is=[3][1]
# KERNEL: your's tow dimentional packed array is=[3][1]
# KERNEL: your's tow dimentional packed array is=[3][1]
# KERNEL: your's tow dimentional packed array is=[3][1]
# KERNEL: your's tow dimentional packed array is=[3][1]
# KERNEL: your's tow dimentional packed array is=[2][1]
# KERNEL: your's tow dimentional packed array is=[2][1]
# KERNEL: your's tow dimentional packed array is=[2][1]
# KERNEL: your's tow dimentional packed array is=[2][1]
# KERNEL: your's tow dimentional packed array is=[2][1]
# KERNEL: your's tow dimentional packed array is=[2][1]
# KERNEL: your's tow dimentional packed array is=[2][1]
# KERNEL: your's tow dimentional packed array is=[1][1]
# KERNEL: your's tow dimentional packed array is=[1][1]
# KERNEL: your's tow dimentional packed array is=[1][1]
# KERNEL: your's tow dimentional packed array is=[1][1]
# KERNEL: your's tow dimentional packed array is=[1][1]
# KERNEL: your's tow dimentional packed array is=[1][1]
# KERNEL: your's tow dimentional packed array is=[1][1]
# KERNEL: your's tow dimentional packed array is=[0][1]
# KERNEL: your's tow dimentional packed array is=[0][1]
# KERNEL: your's tow dimentional packed array is=[0][1]
# KERNEL: your's tow dimentional packed array is=[0][1]
# KERNEL: your's tow dimentional packed array is=[0][1]
# KERNEL: your's tow dimentional packed array is=[0][1]
# KERNEL: your's tow dimentional packed array is=[0][1]
