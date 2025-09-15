virtual class digital;
  string signal_1;
  string signal_2;
  
  virtual function preview();
    $display("parent : value of digital=%0s,=%0s",signal_1,signal_2);
  endfunction
endclass

class analog extends digital;
  string signal_1;
  string signal_2;
  
  function preview();
    $display("base:value of analog =%0s,=%0s",signal_1,signal_2);
  endfunction
endclass


module tb;
  digital d1;
  analog a1;
  initial begin
    
    a1=new();
    d1=a1;
    a1.signal_1="PASS_1";
    a1.signal_2="PASS_2";
    
    a1.preview();
  end
endmodule


    base:value of analog =PASS_1,=PASS_2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Mon Sep 15 01:23:29 2025
