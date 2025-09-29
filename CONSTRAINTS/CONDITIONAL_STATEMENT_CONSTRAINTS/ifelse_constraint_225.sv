class ifelse;
  randc bit [7:0]score;
  rand enum{beginner,intermediate}candidates;
  
  constraint c1 {if(candidates==beginner)
    score inside {[10:30]};
                else
                  score inside{[30:60]};}
endclass


module tb;
  ifelse h1;
  initial begin
    h1=new();
    repeat(15)begin
      h1.randomize();
      $display("------->>>type of candidates=[%0s] \n --------------->>>score of candidates=[%0d]",h1.candidates.name(),h1.score);
    end
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 02:25 2025
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[27]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[30]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[29]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[34]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[55]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[58]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[51]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[60]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[37]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[22]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[10]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[50]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[48]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[21]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[56]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Mon Sep 29 02:25:12 2025
Done
