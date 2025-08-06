module unique0_if_conditional_100;
  bit[7:0]x,y,z;
  initial begin
    x=4;
    y=5;
    z=6;
    unique0 if(x==4)
      $display("your's unique_if conditional output is =[%0d]",x);
    else if(y==5)
      $display("your's unique_if conditional output is =[%0d]",y);
    else if(y<x)
      $display("your's unique_if conditional output is =[%0d]",z);
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 06:57 2025
your's unique_if conditional output is =[4]

Warning-[RT-MTOCMU0IF] More than one condition match in statement
design.sv, 7
  Unique0 if statement inside unique_if_conditional_99 matches more than one 
  condition at time 0ns.
