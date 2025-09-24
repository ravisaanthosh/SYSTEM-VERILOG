class chitti_cr1;
  randc bit [7:0]name_1;
  randc bit [7:0]name_2;
  constraint c1{name_1 >100;
               name_2  <99;}
endclass

class chitti_cr2 extends chitti_cr1;
  randc bit [7:0]name_1;
  randc bit [7:0]name_2;
  constraint c1 {name_1 >9;
                name_2 <10;}
endclass


module tb;
  chitti_cr1 r1;
  chitti_cr2 r2;
  initial begin
    r1=new();
    r2=new();
    repeat(5)begin
      r1.randomize();
      $display("PARENT:chitti_cr1=[%0d],chitti_cr1=[%0d]",r1.name_1,r1.name_2);
    end
     repeat(5)begin
      r2.randomize();
       $display("CHILD:chitti_cr2=[%0d],chitti_cr2=[%0d]",r2.name_1,r2.name_2);
    end
  end
endmodule



Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 24 02:14 2025
PARENT:chitti_cr1=[153],chitti_cr1=[95]
PARENT:chitti_cr1=[160],chitti_cr1=[80]
PARENT:chitti_cr1=[157],chitti_cr1=[78]
PARENT:chitti_cr1=[171],chitti_cr1=[7]
PARENT:chitti_cr1=[239],chitti_cr1=[18]
CHILD:chitti_cr2=[127],chitti_cr2=[1]
CHILD:chitti_cr2=[250],chitti_cr2=[9]
CHILD:chitti_cr2=[111],chitti_cr2=[7]
CHILD:chitti_cr2=[28],chitti_cr2=[0]
CHILD:chitti_cr2=[137],chitti_cr2=[2]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Wed Sep 24 02:14:54 2025
Done
