class h20;
  rand byte cool_drinks[7:0];
  randc byte unsigned  hot_drinks[7:0];
  function preview();
    $display("array_randomization of unpacked array of RAND=[%0p] \n array_randomization of unpacked array of RANDC=[%0p]",cool_drinks,hot_drinks);
  endfunction
endclass

module tb;
  h20 water;
  initial begin
    water=new();
    water.randomize();
    water.preview;

  end
endmodule

   array_randomization of unpacked array of RAND=['{-71, 108, -89, -93, -100, 52, 57, -125} ] 
 array_randomization of unpacked array of RANDC=['{'h72, 'hfc, 'hf1, 'h87, 'hea, 'hfc, 'h24, 'hff} ]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Mon Sep 22 08:53:10 2025
Done
