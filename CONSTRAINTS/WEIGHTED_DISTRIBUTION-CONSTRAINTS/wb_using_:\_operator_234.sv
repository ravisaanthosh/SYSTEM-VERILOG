class weighted_distribution;
  rand bit[7:0]seq_1;
  rand bit[7:0]seq_2;
  constraint c1{seq_1 inside {10,20,[50:100]};
                seq_1 dist {10:/50,20:/10,[50:100]:/40};}  //10/50=0.2 , 20/10=2  ,50/40=1.25
  constraint c2{seq_2  inside {30,50,[50:100]};
                seq_2 dist {30:/25,50:/50,[50:100]:/20};}  //30/25=1.2 . 50/50=1,  50/20=2.5
endclass

module tb;
  weighted_distribution wd;
  initial begin
    wd=new();
    repeat(100)begin
      wd.randomize();
      $display("seq_1=[%0d],seq_2=[%0d]",wd.seq_1,wd.seq_2);
    end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 01:34 2025
seq_1=[62],seq_2=[30]
seq_1=[20],seq_2=[30]
seq_1=[66],seq_2=[30]
seq_1=[20],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[10],seq_2=[89]
seq_1=[20],seq_2=[50]
seq_1=[62],seq_2=[30]
seq_1=[99],seq_2=[30]
seq_1=[10],seq_2=[63]
seq_1=[10],seq_2=[89]
seq_1=[61],seq_2=[50]
seq_1=[20],seq_2=[50]
seq_1=[20],seq_2=[76]
seq_1=[10],seq_2=[30]
seq_1=[10],seq_2=[50]
seq_1=[55],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[100],seq_2=[50]
seq_1=[53],seq_2=[50]
seq_1=[72],seq_2=[30]
seq_1=[10],seq_2=[50]
seq_1=[84],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[91],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[81],seq_2=[50]
seq_1=[70],seq_2=[50]
seq_1=[20],seq_2=[30]
seq_1=[10],seq_2=[79]
seq_1=[52],seq_2=[50]
seq_1=[20],seq_2=[50]
seq_1=[71],seq_2=[50]
seq_1=[20],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[20],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[99],seq_2=[50]
seq_1=[61],seq_2=[57]
seq_1=[10],seq_2=[30]
seq_1=[20],seq_2=[30]
seq_1=[79],seq_2=[30]
seq_1=[52],seq_2=[30]
seq_1=[76],seq_2=[50]
seq_1=[79],seq_2=[30]
seq_1=[20],seq_2=[30]
seq_1=[20],seq_2=[30]
seq_1=[70],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[77],seq_2=[30]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[10],seq_2=[85]
seq_1=[10],seq_2=[30]
seq_1=[64],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[20],seq_2=[65]
seq_1=[10],seq_2=[50]
seq_1=[50],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[10],seq_2=[50]
seq_1=[20],seq_2=[91]
seq_1=[59],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[10],seq_2=[50]
seq_1=[73],seq_2=[30]
seq_1=[79],seq_2=[88]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[100]
seq_1=[10],seq_2=[50]
seq_1=[20],seq_2=[50]
seq_1=[20],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[10],seq_2=[58]
seq_1=[79],seq_2=[50]
seq_1=[20],seq_2=[30]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[77],seq_2=[30]
seq_1=[20],seq_2=[50]
seq_1=[67],seq_2=[30]
seq_1=[74],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[20],seq_2=[50]
seq_1=[53],seq_2=[50]
seq_1=[10],seq_2=[50]
seq_1=[73],seq_2=[57]
seq_1=[10],seq_2=[50]
seq_1=[10],seq_2=[30]
seq_1=[20],seq_2=[30]
seq_1=[10],seq_2=[90]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Tue Sep 30 01:34:23 2025
Done
