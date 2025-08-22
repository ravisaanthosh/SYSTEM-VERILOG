class factory;
  bit [30:0]model_1=150000;
  reg [30:0]model_2=250000;
  function void company();
    $display("parent_class-->>value of model_1=[%0d] model_2=[%0d]",model_1,model_2);
  endfunction
endclass


class plant extends factory;
  logic [30:0]model_1=100000;
  bit [30:0]model_2=30000000;
  function void company();
    $display("child_class:-->>value of model_1=[%0d] model_2[=%0d]",model_1,model_2);
  endfunction
endclass


module tb;
  plant line;
  factory fc;
  initial begin
    line=new();
    fc=line;
    fc.company();
    line.company();
    
  end
endmodule



Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 22 05:21 2025
parent_class-->>value of model_1=[150000] model_2=[250000]
child_class:-->>value of model_1=[100000] model_2[=30000000]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Fri Aug 22 05:21:09 2025
