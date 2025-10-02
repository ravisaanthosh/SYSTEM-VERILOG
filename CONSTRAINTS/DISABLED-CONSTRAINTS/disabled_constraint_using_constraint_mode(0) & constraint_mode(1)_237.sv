class disable_constraint;
  rand bit [7:0]mode_1;
  rand bit[7:0]mode_2;
  constraint c1 {mode_1 inside {10,25,50,75,100};}
  constraint c2 {mode_2 inside {[101:199]};}
endclass


module tb;
  disable_constraint m1,m2;
  initial begin
    m1=new();
    m2=new();
    repeat(5)begin
      m1.randomize();
      m2.randomize();
      $display("mode_1=[%0d]",m1.mode_1);
      $display("mode_2=[%0d]",m2.mode_2);
       m1.c1.constraint_mode(0);
      $display("disabled using constraint_c1 mode_1 ={%0d}",m1.mode_1);
      
    m1.c1.constraint_mode(1);
      $display("enabled using constraint_c1 mode_1={%0d}",m1.mode_1);
    
    m2.c2.constraint_mode(0);
      $display("disabled using constraint_c2 mode_1={%0d}",m2.mode_1);
    m2.c2.constraint_mode(1);
      $display("enabled using constraint_c2 mode_1={%0d}",m2.mode_2);
    end
   
  end
endmodule


CPU time: .431 seconds to compile + .423 seconds to elab + .453 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  2 12:23 2025
mode_1=[10]
mode_2=[184]
disabled using constraint_c1 mode_1 ={10}
enabled using constraint_c1 mode_1={10}
disabled using constraint_c2 mode_1={10}
enabled using constraint_c2 mode_1={184}
mode_1=[100]
mode_2=[198]
disabled using constraint_c1 mode_1 ={100}
enabled using constraint_c1 mode_1={100}
disabled using constraint_c2 mode_1={25}
enabled using constraint_c2 mode_1={198}
mode_1=[10]
mode_2=[188]
disabled using constraint_c1 mode_1 ={10}
enabled using constraint_c1 mode_1={10}
disabled using constraint_c2 mode_1={75}
enabled using constraint_c2 mode_1={188}
mode_1=[50]
mode_2=[134]
disabled using constraint_c1 mode_1 ={50}
enabled using constraint_c1 mode_1={50}
disabled using constraint_c2 mode_1={100}
enabled using constraint_c2 mode_1={134}
mode_1=[25]
mode_2=[121]
disabled using constraint_c1 mode_1 ={25}
enabled using constraint_c1 mode_1={25}
disabled using constraint_c2 mode_1={75}
enabled using constraint_c2 mode_1={121}
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Thu Oct  2 12:23:07 2025
