class randmoziation;
  rand  int unsigned name_1;
  randc byte  name_2;
  function void preview();
    $display("no of rand---->=%0p,\n no of randc------>=%0p",name_1,name_2);
  endfunction
endclass


module tb;
  randmoziation r1;
  initial begin
    repeat(5)begin
    r1=new();
    r1.randomize();
    r1.preview();
    end
  end
endmodule


no of rand---->=3910850489,
 no of randc------>=33
no of rand---->=2735842055,
 no of randc------>=-49
no of rand---->=3692850027,
 no of randc------>=118
no of rand---->=3398323798,
 no of randc------>=-12
no of rand---->=3449045833,
 no of randc------>=123
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Mon Sep 22 02:46:58 2025
