class array;
  rand reg [1:0][2:0][3:0]print;
endclass


module tb;
  array a1;
  initial begin
    a1=new();
    for(int i=0;i<=8;i++)begin
      $display("value of 2DIMENTIONAL PACKED ARRAY=[%0b]INDEX=[%0d]",a1.print,i);
      a1.randomize();
    end
    
  end
endmodule


value of 2DIMENTIONAL PACKED ARRAY=[xxxxxxxxxxxxxxxxxxxxxxxx]INDEX=[0]
value of 2DIMENTIONAL PACKED ARRAY=[110101101011110111001]INDEX=[1]
value of 2DIMENTIONAL PACKED ARRAY=[101000001001100001011011]INDEX=[2]
value of 2DIMENTIONAL PACKED ARRAY=[101011011000001100111010]INDEX=[3]
value of 2DIMENTIONAL PACKED ARRAY=[101101001101110000000111]INDEX=[4]
value of 2DIMENTIONAL PACKED ARRAY=[100101011100101111100000]INDEX=[5]
value of 2DIMENTIONAL PACKED ARRAY=[1101101001100111010011]INDEX=[6]
value of 2DIMENTIONAL PACKED ARRAY=[11111001100100000101010]INDEX=[7]
value of 2DIMENTIONAL PACKED ARRAY=[111110110010111111110011]INDEX=[8]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Mon Sep 22 09:49:02 2025
Done
