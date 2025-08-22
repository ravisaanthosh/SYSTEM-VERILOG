class android;
  bit[10:0]facebook;
  logic [10:0]instagram;
  function void application();
    $display("parent_class:--->>> current value of facebook=[%0d],instagram=[%0d]",facebook,instagram);
  endfunction
endclass


class iphone;
  bit[10:0]facebook;
  logic[10:0]instagram;
  function void application();
    $display("child_class:--->>> current value of facebook=[%0d],instagram=[%0d]",facebook,instagram);
  endfunction
  
endclass


module tb;
  android version_10;
  iphone version_12;
  initial begin
    version_10=new();
    version_12=new();
   //parent class handle 
    version_10.facebook=10;
    version_10.instagram=20;
    //child class handle
    version_12.facebook=100;
    version_12.instagram=200;
    
    version_10.application();
    version_12.application();
  end
endmodule



parent_class:--->>> current value of facebook=[10],instagram=[20]
child_class:--->>> current value of facebook=[100],instagram=[200]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Fri Aug 22 06:03:17 2025
