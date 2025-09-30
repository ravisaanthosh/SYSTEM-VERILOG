class weighted_distribution;
  rand bit[7:0]seq_1;
  rand bit[7:0]seq_2;
  constraint c1{seq_1 inside {10,20,[50:100]};
                seq_1 dist {10:=50,20:=10,[50:100]:=40};}
  constraint c2{seq_2  inside {30,50,[50:100]};
    seq_2 dist {30:=25,50:=50,[50:100]:=20};}
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


CPU time: .351 seconds to compile + .358 seconds to elab + .374 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 01:16 2025
seq_1=[62],seq_2=[30]
seq_1=[90],seq_2=[56]
seq_1=[66],seq_2=[54]
seq_1=[74],seq_2=[66]
seq_1=[58],seq_2=[73]
seq_1=[10],seq_2=[77]
seq_1=[52],seq_2=[54]
seq_1=[10],seq_2=[89]
seq_1=[82],seq_2=[95]
seq_1=[62],seq_2=[30]
seq_1=[99],seq_2=[57]
seq_1=[58],seq_2=[63]
seq_1=[63],seq_2=[89]
seq_1=[61],seq_2=[99]
seq_1=[92],seq_2=[81]
seq_1=[90],seq_2=[76]
seq_1=[94],seq_2=[53]
seq_1=[83],seq_2=[74]
seq_1=[55],seq_2=[79]
seq_1=[89],seq_2=[95]
seq_1=[100],seq_2=[70]
seq_1=[53],seq_2=[85]
seq_1=[72],seq_2=[58]
seq_1=[52],seq_2=[78]
seq_1=[84],seq_2=[99]
seq_1=[95],seq_2=[92]
seq_1=[84],seq_2=[65]
seq_1=[91],seq_2=[50]
seq_1=[94],seq_2=[50]
seq_1=[81],seq_2=[82]
seq_1=[70],seq_2=[93]
seq_1=[68],seq_2=[59]
seq_1=[80],seq_2=[79]
seq_1=[52],seq_2=[50]
seq_1=[70],seq_2=[73]
seq_1=[71],seq_2=[93]
seq_1=[93],seq_2=[50]
seq_1=[92],seq_2=[65]
seq_1=[70],seq_2=[64]
seq_1=[52],seq_2=[75]
seq_1=[100],seq_2=[82]
seq_1=[10],seq_2=[93]
seq_1=[94],seq_2=[100]
seq_1=[69],seq_2=[50]
seq_1=[99],seq_2=[86]
seq_1=[61],seq_2=[57]
seq_1=[96],seq_2=[56]
seq_1=[85],seq_2=[56]
seq_1=[79],seq_2=[63]
seq_1=[52],seq_2=[52]
seq_1=[76],seq_2=[96]
seq_1=[79],seq_2=[50]
seq_1=[81],seq_2=[30]
seq_1=[90],seq_2=[83]
seq_1=[70],seq_2=[50]
seq_1=[59],seq_2=[72]
seq_1=[77],seq_2=[52]
seq_1=[59],seq_2=[83]
seq_1=[59],seq_2=[30]
seq_1=[65],seq_2=[85]
seq_1=[99],seq_2=[52]
seq_1=[64],seq_2=[67]
seq_1=[69],seq_2=[85]
seq_1=[65],seq_2=[96]
seq_1=[20],seq_2=[65]
seq_1=[84],seq_2=[97]
seq_1=[50],seq_2=[50]
seq_1=[54],seq_2=[63]
seq_1=[76],seq_2=[50]
seq_1=[80],seq_2=[91]
seq_1=[59],seq_2=[94]
seq_1=[90],seq_2=[55]
seq_1=[65],seq_2=[85]
seq_1=[73],seq_2=[55]
seq_1=[79],seq_2=[88]
seq_1=[64],seq_2=[92]
seq_1=[63],seq_2=[100]
seq_1=[61],seq_2=[70]
seq_1=[76],seq_2=[93]
seq_1=[98],seq_2=[72]
seq_1=[63],seq_2=[81]
seq_1=[98],seq_2=[30]
seq_1=[95],seq_2=[58]
seq_1=[79],seq_2=[66]
seq_1=[79],seq_2=[30]
seq_1=[50],seq_2=[50]
seq_1=[61],seq_2=[73]
seq_1=[77],seq_2=[51]
seq_1=[99],seq_2=[68]
seq_1=[67],seq_2=[85]
seq_1=[74],seq_2=[64]
seq_1=[10],seq_2=[50]
seq_1=[94],seq_2=[83]
seq_1=[53],seq_2=[84]
seq_1=[88],seq_2=[92]
seq_1=[73],seq_2=[57]
seq_1=[97],seq_2=[78]
seq_1=[62],seq_2=[57]
seq_1=[97],seq_2=[53]
seq_1=[10],seq_2=[90]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
