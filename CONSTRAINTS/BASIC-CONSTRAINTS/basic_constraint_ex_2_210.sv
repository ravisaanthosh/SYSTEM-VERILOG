class former;
  rand logic [4:0]green_chillies;
  randc reg [7:0]red_chillies;
  rand int green_plus_5;
  randc int red_minus_5;
  
   constraint c_1 {green_plus_5==green_chillies  +5; 
 					red_minus_5==red_chillies -5;}
  function preview();
    $display("green chillies original=[%0d] , +5  =[%0d]",green_chillies,green_plus_5);
  endfunction
  function preview_1();
    $display("red_chillies original=[%0d], -5 =[%0d] ",red_chillies,red_minus_5);
  endfunction
  
 
  
endclass


module tb;
  former f1;
  initial begin
    f1=new();
    repeat(5)begin
      f1.randomize();
       f1.preview();
    end
    
    repeat(5)begin
      f1.randomize();
       f1.preview_1();
    end

  end
endmodule


green chillies original=[15] , +5  =[20]
green chillies original=[22] , +5  =[27]
green chillies original=[3] , +5  =[8]
green chillies original=[16] , +5  =[21]
green chillies original=[12] , +5  =[17]
red_chillies original=[102], -5 =[97] 
red_chillies original=[185], -5 =[180] 
red_chillies original=[6], -5 =[1] 
red_chillies original=[127], -5 =[122] 
red_chillies original=[238], -5 =[233] 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Tue Sep 23 02:12:35 2025
