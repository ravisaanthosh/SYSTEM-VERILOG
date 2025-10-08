class bidirectional_constraint;
  rand bit [5:0]sum;
  rand bit [3:0]a;
  rand bit [3:0]b;
  constraint c1{sum==a+b;}
  constraint c2{a>8;}
  constraint c3{b<7;}
                
endclass

module tb;
  bidirectional_constraint bc;
  initial begin
    bc=new();
    repeat(10)begin
      bc.randomize();
      $display("value of a =[%0d] \n value of b =[%0d] \n TOTAL--------> sum of a and b =[%0d]",bc.a,bc.b,bc.sum);
    end
  end
endmodule

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 00:20 2025
value of a =[12] 
 value of b =[6] 
 TOTAL--------> sum of a and b =[18]
value of a =[12] 
 value of b =[1] 
 TOTAL--------> sum of a and b =[13]
value of a =[14] 
 value of b =[3] 
 TOTAL--------> sum of a and b =[17]
value of a =[9] 
 value of b =[3] 
 TOTAL--------> sum of a and b =[12]
value of a =[10] 
 value of b =[0] 
 TOTAL--------> sum of a and b =[10]
value of a =[12] 
 value of b =[3] 
 TOTAL--------> sum of a and b =[15]
value of a =[9] 
 value of b =[2] 
 TOTAL--------> sum of a and b =[11]
value of a =[11] 
 value of b =[0] 
 TOTAL--------> sum of a and b =[11]
value of a =[9] 
 value of b =[3] 
 TOTAL--------> sum of a and b =[12]
value of a =[12] 
 value of b =[6] 
 TOTAL--------> sum of a and b =[18]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Wed Oct  8 00:20:38 2025
