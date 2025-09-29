class elseif;
  randc bit [7:0]score;
  randc enum{beginner,intermediate,experience}candidates;
  
  constraint c1 {if(candidates==beginner)
    score inside {[10:30]};
                 else if(candidates==intermediate)
                   score inside {[30:60]};
                else
                  score inside{[60:100]};}
endclass


module tb;
  elseif h1;
  initial begin
    h1=new();
    repeat(15)begin
      h1.randomize();
      $display("------->>>type of candidates=[%0s] \n --------------->>>score of candidates=[%0d]",h1.candidates.name(),h1.score);
    end
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 02:32 2025
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[57]
------->>>type of candidates=[experience] 
 --------------->>>score of candidates=[62]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[17]
------->>>type of candidates=[experience] 
 --------------->>>score of candidates=[91]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[35]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[23]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[55]
------->>>type of candidates=[experience] 
 --------------->>>score of candidates=[94]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[25]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[27]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[30]
------->>>type of candidates=[experience] 
 --------------->>>score of candidates=[89]
------->>>type of candidates=[intermediate] 
 --------------->>>score of candidates=[38]
------->>>type of candidates=[beginner] 
 --------------->>>score of candidates=[28]
------->>>type of candidates=[experience] 
 --------------->>>score of candidates=[95]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Mon Sep 29 02:32:08 2025
Done
