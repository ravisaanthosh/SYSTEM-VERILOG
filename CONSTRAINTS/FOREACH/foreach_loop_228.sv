class loop_foreach;
  randc bit[7:0]loop_1[7:0];
  randc bit[7:0]loop_2[7:0];
  constraint c1{foreach(loop_1[i])
    loop_1[i]==i+2 ;
                
                foreach(loop_2[i])
                  loop_2[i]==i*2;
                }
endclass

module tb;
  loop_foreach l1;
  initial begin
    l1=new();
    repeat(10)begin
    foreach(l1.loop_1[i])begin
      l1.randomize();
      $display("loop_1=[%0d] result=%0d  \t loop_2=[%0d] result =%0d ",i,l1.loop_1[i],i,l1.loop_2[i]);
    end
  end
  end
endmodule


Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 06:49 2025
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
loop_1=[7] result=9  	 loop_2=[7] result =14 
loop_1=[6] result=8  	 loop_2=[6] result =12 
loop_1=[5] result=7  	 loop_2=[5] result =10 
loop_1=[4] result=6  	 loop_2=[4] result =8 
loop_1=[3] result=5  	 loop_2=[3] result =6 
loop_1=[2] result=4  	 loop_2=[2] result =4 
loop_1=[1] result=3  	 loop_2=[1] result =2 
loop_1=[0] result=2  	 loop_2=[0] result =0 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Mon Sep 29 06:49:35 2025
