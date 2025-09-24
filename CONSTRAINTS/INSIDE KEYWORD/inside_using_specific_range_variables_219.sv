 class market;
   randc bit[7:0]apple; //CAUTION:not supported directly in unpacked array 
   rand bit [7:0]orange;
   rand bit [7:0]grapes;
   
   constraint c1{apple inside {40,50,60};
                 orange inside {70,80,90};
                 grapes inside{10,20,30};}
 endclass


module tb;
  market m1;
  initial begin
    m1=new();
    repeat(16)begin
      m1.randomize();
      $display("price of apple =[%0p] price of orange =[%0p] price of grapes =[%0p]",m1.apple,m1.orange,m1.grapes);
    end
  end
endmodule


price of apple =[50] price of orange =[80] price of grapes =[20]
price of apple =[60] price of orange =[90] price of grapes =[30]
price of apple =[40] price of orange =[90] price of grapes =[10]
price of apple =[60] price of orange =[90] price of grapes =[10]
price of apple =[50] price of orange =[80] price of grapes =[30]
price of apple =[40] price of orange =[80] price of grapes =[30]
price of apple =[50] price of orange =[80] price of grapes =[20]
price of apple =[60] price of orange =[90] price of grapes =[30]
price of apple =[40] price of orange =[90] price of grapes =[20]
price of apple =[40] price of orange =[90] price of grapes =[10]
price of apple =[50] price of orange =[70] price of grapes =[20]
price of apple =[60] price of orange =[80] price of grapes =[30]
price of apple =[50] price of orange =[80] price of grapes =[30]
price of apple =[40] price of orange =[80] price of grapes =[20]
price of apple =[60] price of orange =[80] price of grapes =[30]
price of apple =[60] price of orange =[80] price of grapes =[20]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.350 seconds;       Data structure size:   0.0Mb
Wed Sep 24 07:23:24 2025
Done
