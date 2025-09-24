class showroom;
  randc bit [7:0]brand_1;
  randc reg [7:0]brand_2;
  randc logic [7:0]brand_3;
  
  constraint c1{brand_1 inside {[7:14]};
                brand_2 inside{[15:21]};
                brand_3 inside {[22:30]};}
endclass


module tb;
  showroom s1;
  initial begin
    s1=new();
    repeat(7)begin
       s1.randomize();
       $display("price range between brand_1=[%0d] \t price range between brand_2=[%0d] \t price range between brand_3=[%0d]",s1.brand_1,s1.brand_2,s1.brand_3);
     
    end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 24 08:33 2025
price range between brand_1=[9] 	 price range between brand_2=[21] 	 price range between brand_3=[22]
price range between brand_1=[10] 	 price range between brand_2=[16] 	 price range between brand_3=[30]
price range between brand_1=[13] 	 price range between brand_2=[20] 	 price range between brand_3=[25]
price range between brand_1=[11] 	 price range between brand_2=[17] 	 price range between brand_3=[24]
price range between brand_1=[14] 	 price range between brand_2=[18] 	 price range between brand_3=[28]
price range between brand_1=[12] 	 price range between brand_2=[15] 	 price range between brand_3=[29]
price range between brand_1=[8] 	 price range between brand_2=[19] 	 price range between brand_3=[23]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.590 seconds;       Data structure size:   0.0Mb
Wed Sep 24 08:33:58 2025
