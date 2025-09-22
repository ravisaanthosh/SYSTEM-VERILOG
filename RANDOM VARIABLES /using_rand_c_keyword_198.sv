class number;
  randc logic [2:0] count;
  function preview();
    $display("-------********--------");
  endfunction
endclass


module tb;
  number no;
  int i;
  initial begin
    no=new();
    for(i=0; i<=9; i++)begin
      no.randomize();
      $display("no of cycles=%0d \n no of random count =%0d",i,no.count);
      no.preview();
    end
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 03:27 2025
no of cycles=0 
 no of random count =7
-------********--------
no of cycles=1 
 no of random count =2
-------********--------
no of cycles=2 
 no of random count =1
-------********--------
no of cycles=3 
 no of random count =5
-------********--------
no of cycles=4 
 no of random count =6
-------********--------
no of cycles=5 
 no of random count =0
-------********--------
no of cycles=6 
 no of random count =3
-------********--------
no of cycles=7 
 no of random count =4
-------********--------
no of cycles=8 
 no of random count =2
-------********--------
no of cycles=9 
 no of random count =0
-------********--------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Mon Sep 22 03:27:27 2025
