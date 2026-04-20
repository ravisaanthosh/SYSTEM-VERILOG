these feature supports module blocks only

class repetition_transition_bins;
  rand bit [2:0]a;
  rand bit [2:0]b;
  constraint c1{a inside{[0:3]};}
  constraint c2 {b inside{[3:6]};}
 
  covergroup crg;
    e1:coverpoint a bins value_1 =(1[*2:5]);
    e2:coverpoint b bins value_2 =(4[*3]);
  endgroup
  
    function new();
    crg=new();
  endfunction
  


endclass

module tb;
  repetition_transition_bins ob;
  
  initial begin
    ob=new();
    repeat(205)begin
      ob.randomize();
      ob.crg.sample();
      $display("type of bin=[%0d],=[%0d],overall=[%0f]",ob.a,ob.b,ob.crg.get_coverage());
    end
  end
endmodule

tool not support this feature

“Range of repetition bins specify that a value must repeat consecutively for at least m and at most n cycles.”
