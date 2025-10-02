class disable_rand_mode;
  rand bit [7:0]mode_1;
  rand bit[7:0]mode_2;
  constraint c1 {mode_1 inside {10,25,50,75,100};}
  constraint c2 {mode_2 inside {[101:199]};}
endclass


module tb;
  disable_rand_mode r1,r2;
  initial begin
    r1=new();
    r2=new();
    repeat(5)begin
      r1.randomize();
      r2.randomize();
      $display("mode_1=[%0d]",r1.mode_1);
      $display("mode_2=[%0d]",r2.mode_2);
       r1.rand_mode(0);
      $display("disabled using rand mode_0_r1 ={%0d}",r1.mode_1);
      
    r1.rand_mode(1);
      $display("enabled using rand mode_1_r1={%0d}",r1.mode_1);
    
    r2.rand_mode(0);
      $display("disabled using rand mode_0_r2={%0d}",r2.mode_1);
    r2.rand_mode(1);
      $display("enabled using rand mode_1_r2={%0d}",r2.mode_2);
    end
   
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  2 12:33 2025
mode_1=[10]
mode_2=[184]
disabled using rand mode_0_r1 ={10}
enabled using rand mode_1_r1={10}
disabled using rand mode_0_r2={10}
enabled using rand mode_1_r2={184}
mode_1=[100]
mode_2=[198]
disabled using rand mode_0_r1 ={100}
enabled using rand mode_1_r1={100}
disabled using rand mode_0_r2={25}
enabled using rand mode_1_r2={198}
mode_1=[10]
mode_2=[188]
disabled using rand mode_0_r1 ={10}
enabled using rand mode_1_r1={10}
disabled using rand mode_0_r2={75}
enabled using rand mode_1_r2={188}
mode_1=[50]
mode_2=[134]
disabled using rand mode_0_r1 ={50}
enabled using rand mode_1_r1={50}
disabled using rand mode_0_r2={100}
enabled using rand mode_1_r2={134}
mode_1=[25]
mode_2=[121]
disabled using rand mode_0_r1 ={25}
enabled using rand mode_1_r1={25}
disabled using rand mode_0_r2={75}
enabled using rand mode_1_r2={121}
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Thu Oct  2 12:33:41 2025
