class unique_keyword;
  rand bit[7:0]position_1;
  rand bit[7:0]position_2;
  constraint c1 {unique {position_1,position_2};}
endclass

module tb;
  unique_keyword u1;
  initial begin
    u1=new();
    repeat(10)begin
      u1.randomize();
      $display("position_1=[%0d],position_2=[%0d]",u1.position_1,u1.position_2);
    end
  end
endmodule


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 08:22 2025
position_1=[203],position_2=[104]
position_1=[57],position_2=[171]
position_1=[160],position_2=[48]
position_1=[104],position_2=[152]
position_1=[2],position_2=[88]
position_1=[45],position_2=[228]
position_1=[68],position_2=[14]
position_1=[77],position_2=[106]
position_1=[112],position_2=[187]
position_1=[139],position_2=[120]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Mon Sep 29 08:22:30 2025
Done
