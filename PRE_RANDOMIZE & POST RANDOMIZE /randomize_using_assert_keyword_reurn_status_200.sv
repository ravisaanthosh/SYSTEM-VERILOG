class engine;
  randc bit [4:0]model;
endclass


class engine_2;
  randc bit [7:0]model[4];
  function void pre_randomize();
    engine e1;
    e1=new();
    foreach(model[i])begin
      e1.randomize();
      model[i]=e1.model;
      $display("value of both data main_file=[%0d],index=[%0d],copy_file=[%0d]",e1.model,i,model[i]);
    end
  endfunction
endclass


module tb;
engine_2 e2;
initial begin
  e2=new();
  assert(e2.randomize())
  else
    $display("FAIL");
end
endmodule


value of both data main_file=[20],index=[0],copy_file=[20]
value of both data main_file=[10],index=[1],copy_file=[10]
value of both data main_file=[3],index=[2],copy_file=[3]
value of both data main_file=[1],index=[3],copy_file=[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Mon Sep 22 06:37:46 2025
