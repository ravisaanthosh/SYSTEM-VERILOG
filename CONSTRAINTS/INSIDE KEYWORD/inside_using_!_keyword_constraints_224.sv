class rain;
  randc bit [7:0]water;
  rand bit[6:0]lake;
  randc bit[5:0]river;
  constraint c1 {! (water inside{[50:60]});
                 !(lake inside {[70:80]});
                 !(river inside {[90:100]});}
endclass


module tb;
  rain r1;
  initial begin
    r1=new();
    repeat(5)begin
      r1.randomize();
      $display("water=[%0d],lake=[%0d],river=[%0d]",r1.water,r1.lake,r1.river);
    end
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 04:43 2025
water=[235],lake=[44],river=[4]
water=[71],lake=[92],river=[52]
water=[162],lake=[20],river=[18]
water=[170],lake=[3],river=[17]
water=[222],lake=[109],river=[42]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Fri Sep 26 04:43:18 2025
