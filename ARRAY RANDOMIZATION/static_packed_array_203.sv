class h20;
  rand bit [7:0]cool_drinks;
  randc bit unsigned  [7:0]hot_drinks;
  task preview();
    $display("array_randomization of unpacked array of RAND=[%0p] \n array_randomization of unpacked array of RANDC=[%0p]",cool_drinks,hot_drinks);
  endtask
endclass

module tb;
  h20 water;
  initial begin
    water=new();
    water.randomize();
    water.preview;
  end
endmodule


array_randomization of unpacked array of RAND=[185] 
 array_randomization of unpacked array of RANDC=[161]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Mon Sep 22 08:58:13 2025
Done
