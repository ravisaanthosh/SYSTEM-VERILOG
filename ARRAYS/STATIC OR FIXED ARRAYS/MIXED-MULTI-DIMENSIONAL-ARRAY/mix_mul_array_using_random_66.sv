module mix_mul_array_using_random_66;
  reg[2:0][1:0]m_array[1:0][2:0];
  initial begin
    foreach(m_array[a,b,c,d])begin
      m_array[a][b][c][d]=$urandom_range(0,300);
      $display("your's mixed multi dimentional array is[%0d][%0d][%0d][%0d]=%d",a,b,c,d,m_array[a][b][c][d]);
  end
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 12:43 2025
your's mixed multi dimentional array is[1][2][2][1]=0
your's mixed multi dimentional array is[1][2][2][0]=1
your's mixed multi dimentional array is[1][2][1][1]=0
your's mixed multi dimentional array is[1][2][1][0]=0
your's mixed multi dimentional array is[1][2][0][1]=0
your's mixed multi dimentional array is[1][2][0][0]=0
your's mixed multi dimentional array is[1][1][2][1]=1
your's mixed multi dimentional array is[1][1][2][0]=0
your's mixed multi dimentional array is[1][1][1][1]=1
your's mixed multi dimentional array is[1][1][1][0]=0
your's mixed multi dimentional array is[1][1][0][1]=0
your's mixed multi dimentional array is[1][1][0][0]=0
your's mixed multi dimentional array is[1][0][2][1]=1
your's mixed multi dimentional array is[1][0][2][0]=0
your's mixed multi dimentional array is[1][0][1][1]=0
your's mixed multi dimentional array is[1][0][1][0]=0
your's mixed multi dimentional array is[1][0][0][1]=0
your's mixed multi dimentional array is[1][0][0][0]=1
your's mixed multi dimentional array is[0][2][2][1]=0
your's mixed multi dimentional array is[0][2][2][0]=1
your's mixed multi dimentional array is[0][2][1][1]=1
your's mixed multi dimentional array is[0][2][1][0]=1
your's mixed multi dimentional array is[0][2][0][1]=1
your's mixed multi dimentional array is[0][2][0][0]=0
your's mixed multi dimentional array is[0][1][2][1]=1
your's mixed multi dimentional array is[0][1][2][0]=1
your's mixed multi dimentional array is[0][1][1][1]=1
your's mixed multi dimentional array is[0][1][1][0]=0
your's mixed multi dimentional array is[0][1][0][1]=1
your's mixed multi dimentional array is[0][1][0][0]=1
your's mixed multi dimentional array is[0][0][2][1]=1
your's mixed multi dimentional array is[0][0][2][0]=0
your's mixed multi dimentional array is[0][0][1][1]=1
your's mixed multi dimentional array is[0][0][1][0]=1
your's mixed multi dimentional array is[0][0][0][1]=0
your's mixed multi dimentional array is[0][0][0][0]=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Tue Jul 29 12:43:28 2025
