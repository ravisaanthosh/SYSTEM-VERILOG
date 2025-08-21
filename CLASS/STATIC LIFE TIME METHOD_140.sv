class market;
  static int fruits;
  int vegtables;
  function static int shop();
    fruits++;
    vegtables++;
  endfunction
endclass

module tb;
  market from_former[20];
  initial begin
    foreach(from_former[i])begin
      from_former[i]=new();
      from_former[i].shop();
      $display("no of total opened shop=[%0d] \t no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[%0d] \t no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[%0d]",i,from_former[i].fruits,from_former[i].vegtables);
    end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 21 02:14 2025
no of total opened shop=[0] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[1] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[1] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[2] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[2] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[3] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[3] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[4] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[4] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[5] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[5] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[6] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[6] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[7] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[7] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[8] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[8] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[9] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[9] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[10] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[10] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[11] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[11] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[12] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[12] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[13] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[13] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[14] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[14] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[15] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[15] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[16] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[16] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[17] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[17] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[18] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[18] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[19] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
no of total opened shop=[19] 	 no of fruits(using_STATIC LIFE TIME METHOD AND STATIC VARIABLE) purchase=[20] 	 no of vegtables purchase(WITHOUT STATIC VARIABLE USING STATIC LIFE TIME METHOD) =[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Thu Aug 21 02:14:55 2025
    
