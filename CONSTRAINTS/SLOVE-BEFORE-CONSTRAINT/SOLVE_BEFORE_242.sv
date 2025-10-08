class slove_before;
  rand bit[3:0]a;
  rand bit [11:0]b;
  constraint c1{solve a before b ;
                if(a>8)
                {b inside {[100:110]}};}
endclass


module tb;
  slove_before sb;
  initial begin
    sb=new();
    repeat(20)begin
      sb.randomize();
      $display("a=[%0d],b=[%0d]",sb.a,sb.b);
    end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 02:13 2025
a=[13],b=[108]
a=[6],b=[1371]
a=[1],b=[352]
a=[2],b=[1222]
a=[4],b=[1408]
a=[6],b=[3653]
a=[8],b=[624]
a=[12],b=[105]
a=[2],b=[751]
a=[13],b=[108]
a=[15],b=[110]
a=[4],b=[1885]
a=[12],b=[108]
a=[13],b=[106]
a=[10],b=[103]
a=[2],b=[1767]
a=[10],b=[110]
a=[2],b=[3038]
a=[9],b=[109]
a=[2],b=[2763]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Wed Oct  8 02:13:25 2025
Done
