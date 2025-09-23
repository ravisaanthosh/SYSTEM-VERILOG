class earth;
  rand bit [4:0]plant;
  randc logic [4:0]human;
  
  constraint c_1 {plant <=5;
                  human >=10;}
endclass


module tb;
  earth e1;
  initial begin
    e1=new();
    repeat(16)begin
      e1.randomize();
      $display("using constraint keyword for plant=[%0d] \n using constraint keyword for human =[%0d]",e1.plant,e1.human);
    end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 01:24 2025
using constraint keyword for plant=[2] 
 using constraint keyword for human =[31]
using constraint keyword for plant=[5] 
 using constraint keyword for human =[15]
using constraint keyword for plant=[2] 
 using constraint keyword for human =[30]
using constraint keyword for plant=[4] 
 using constraint keyword for human =[17]
using constraint keyword for plant=[4] 
 using constraint keyword for human =[19]
using constraint keyword for plant=[5] 
 using constraint keyword for human =[23]
using constraint keyword for plant=[3] 
 using constraint keyword for human =[28]
using constraint keyword for plant=[5] 
 using constraint keyword for human =[11]
using constraint keyword for plant=[4] 
 using constraint keyword for human =[20]
using constraint keyword for plant=[0] 
 using constraint keyword for human =[29]
using constraint keyword for plant=[1] 
 using constraint keyword for human =[27]
using constraint keyword for plant=[4] 
 using constraint keyword for human =[14]
using constraint keyword for plant=[3] 
 using constraint keyword for human =[10]
using constraint keyword for plant=[1] 
 using constraint keyword for human =[24]
using constraint keyword for plant=[5] 
 using constraint keyword for human =[16]
using constraint keyword for plant=[4] 
 using constraint keyword for human =[12]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Tue Sep 23 01:24:28 2025
