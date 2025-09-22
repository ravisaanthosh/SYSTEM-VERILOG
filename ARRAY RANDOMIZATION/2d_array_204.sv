class array;
  rand reg [1:0][2:0]print;
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

value of 2DIMENTIONAL PACKED ARRAY=[xxxxxx]INDEX=[0]
value of 2DIMENTIONAL PACKED ARRAY=[111001]INDEX=[1]
value of 2DIMENTIONAL PACKED ARRAY=[11011]INDEX=[2]
value of 2DIMENTIONAL PACKED ARRAY=[111010]INDEX=[3]
value of 2DIMENTIONAL PACKED ARRAY=[111]INDEX=[4]
value of 2DIMENTIONAL PACKED ARRAY=[100000]INDEX=[5]
value of 2DIMENTIONAL PACKED ARRAY=[10011]INDEX=[6]
value of 2DIMENTIONAL PACKED ARRAY=[101010]INDEX=[7]
value of 2DIMENTIONAL PACKED ARRAY=[110011]INDEX=[8]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Mon Sep 22 09:44:16 2025
Done
