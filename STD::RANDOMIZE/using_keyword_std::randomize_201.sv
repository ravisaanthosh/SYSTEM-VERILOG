module std_randomize_201;
  bit[4:0]water;
  initial begin
    repeat(5)begin
      std::randomize(water);
      $display("std::randomize value =[%0d]",water);
    end
  end
endmodule

std::randomize value =[14]
std::randomize value =[22]
std::randomize value =[7]
std::randomize value =[13]
std::randomize value =[5]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Mon Sep 22 07:35:47 2025
