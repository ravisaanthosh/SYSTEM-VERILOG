class transport;
  rand bit [2:0]bus;
  randc bit [2:0]van;
  
  function void pre_randomize();
    $display("no of bus in pre_randomize bus=%0d,van=%0d",bus,van);
  endfunction
  
  function void post_randomize();
    $display("no of bus in post_randomize bus=%0d,van=%0d",bus,van);
  endfunction
endclass


module tb;
  transport t1;
  initial begin
    t1=new();
    repeat(2)begin
    t1.randomize();
    end
    
    $display("enable mode 0 -------disable--------");
    t1.bus=5;
    t1.rand_mode(0);
    t1.randomize();
    
    $display("enable mode 1 ------- enable--------");
    t1.van=5;
    t1.rand_mode(1);
    t1.randomize();
  end
endmodule
    
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 04:27 2025
no of bus in pre_randomize bus=0,van=0
no of bus in post_randomize bus=1,van=5
no of bus in pre_randomize bus=1,van=5
no of bus in post_randomize bus=3,van=2
enable mode 0 -------disable--------
no of bus in pre_randomize bus=5,van=2
no of bus in post_randomize bus=5,van=2
enable mode 1 ------- enable--------
no of bus in pre_randomize bus=5,van=5
no of bus in post_randomize bus=2,van=6
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.590 seconds;       Data structure size:   0.0Mb
Mon Sep 22 04:27:27 2025
