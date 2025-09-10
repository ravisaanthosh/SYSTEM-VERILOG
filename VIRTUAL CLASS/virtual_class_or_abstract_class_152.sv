virtual class nokia;//here without virtual keyword its perform overriding function please clarify what is purpose of virtual keyword>>>>>>>>>>>>>>>>>>>>>>>??????
  string nokia_c1;
  string nokia_c2;
  virtual function preview();//use virtual for overriding otherwise its not perform overriding function?
    $display("BASE_CLASS your's nokia brand is =%0s,=%0s",nokia_c1,nokia_c2);
  endfunction
endclass

class samsung extends nokia;
  string nokia_c1;
  string nokia_c2;
  function preview();
    $display("CHILD_CLASS your's samsung brand from extends nokia",nokia_c1,nokia_c2);
  endfunction
endclass


module tb;
  nokia n1;
  samsung s1;
  initial begin
    s1=new();
    n1=s1;
    s1.nokia_c1="HIT_MODEL";
    s1.nokia_c2="FLOP_MODEL";
    s1.preview();
    
    n1.nokia_c1="TRAGET_COMPLETED";
    n1.nokia_c2="TARGET_NOT_COMPLETED";
    n1.preview();
    
  end
endmodule


CHILD_CLASS your's samsung brand from extends nokiaHIT_MODELFLOP_MODEL
CHILD_CLASS your's samsung brand from extends nokiaHIT_MODELFLOP_MODEL
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.540 seconds;       Data structure size:   0.0Mb
Wed Sep 10 03:26:48 2025
Done
