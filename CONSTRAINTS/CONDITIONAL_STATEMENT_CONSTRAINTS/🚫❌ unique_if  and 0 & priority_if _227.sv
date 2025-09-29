// unique if is illegal inside constraints

// In SystemVerilog constraints, you should use plain if … else if … else.

// unique if is a procedural statement, only valid in procedural blocks (like always_comb), not in constraints.


class elseif;
  randc bit [7:0]score;
  randc enum{beginner,intermediate,experience}candidates;
  
  constraint c1 {priority if(candidates==beginner) ---------->>>> //unique if or unique0 or priority if 
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
