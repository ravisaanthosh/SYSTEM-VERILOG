class factory;
  static bit [7:0]hyundai_verna;
  bit [7:0]hyundai_i20;
  function bit company();
    hyundai_verna++;
    hyundai_i20++;
  endfunction
endclass
  
  module tb;
    factory plant[10];//handle
    initial begin
      foreach(plant[i])begin
        plant[i]=new();
       plant[i].company();
        $display("class using handle=[%0d]\t no of hyundai_verna using STATIC key word =[%0d]\t no of hyundai_i20 without NON-STATIC keyword=[%0d]",i,plant[i].hyundai_verna,plant[i].hyundai_i20);
      end
    end
  endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 20 03:18 2025
class using handle=[0]	 no of hyundai_verna using STATIC key word =[1]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[1]	 no of hyundai_verna using STATIC key word =[2]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[2]	 no of hyundai_verna using STATIC key word =[3]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[3]	 no of hyundai_verna using STATIC key word =[4]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[4]	 no of hyundai_verna using STATIC key word =[5]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[5]	 no of hyundai_verna using STATIC key word =[6]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[6]	 no of hyundai_verna using STATIC key word =[7]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[7]	 no of hyundai_verna using STATIC key word =[8]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[8]	 no of hyundai_verna using STATIC key word =[9]	 no of hyundai_i20 without NON-STATIC keyword=[1]
class using handle=[9]	 no of hyundai_verna using STATIC key word =[10] no of hyundai_i20 without NON-STATIC keyword=[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Wed Aug 20 03:18:31 2025
