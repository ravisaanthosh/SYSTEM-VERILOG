class array;
  rand logic print[1:0][2:0];
endclass


module tb;
  array a1;
  initial begin
    a1=new();
    for(int i=0;i<=8;i++)begin
      $display("value of 2DIMENTIONAL PACKED ARRAY=[%0p]INDEX=[%0d]",a1.print,i);
      a1.randomize();
    end
    
  end
endmodule

value of 2DIMENTIONAL PACKED ARRAY=['{'{'hx, 'hx, 'hx}, '{'hx, 'hx, 'hx}} ]INDEX=[0]
value of 2DIMENTIONAL PACKED ARRAY=['{'{'h1, 'h0, 'h1}, '{'h1, 'h0, 'h0}} ]INDEX=[1]
value of 2DIMENTIONAL PACKED ARRAY=['{'{'h1, 'h0, 'h0}, '{'h0, 'h1, 'h1}} ]INDEX=[2]
value of 2DIMENTIONAL PACKED ARRAY=['{'{'h0, 'h0, 'h1}, '{'h0, 'h0, 'h0}} ]INDEX=[3]
value of 2DIMENTIONAL PACKED ARRAY=['{'{'h1, 'h0, 'h1}, '{'h1, 'h0, 'h0}} ]INDEX=[4]
value of 2DIMENTIONAL PACKED ARRAY=['{'{'h0, 'h0, 'h0}, '{'h0, 'h1, 'h1}} ]INDEX=[5]
value of 2DIMENTIONAL PACKED ARRAY=['{'{'h1, 'h0, 'h0}, '{'h1, 'h1, 'h1}} ]INDEX=[6]
value of 2DIMENTIONAL PACKED ARRAY=['{'{'h0, 'h0, 'h1}, '{'h1, 'h1, 'h1}} ]INDEX=[7]
value of 2DIMENTIONAL PACKED ARRAY=['{'{'h1, 'h0, 'h1}, '{'h0, 'h0, 'h0}} ]INDEX=[8]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Mon Sep 22 09:56:23 2025
