module reduction_operator_88;
  logic [3:0]a;
  reg out;
  initial begin
    a=4'b1101;
    out=&a;
    $display("your's reduction operators results for and is=[%0d]",out);
     out=~&a;
    $display("your's reduction operators results for nand is=[%0d]",out);
     out=|a;
    $display("your's reduction operators results for or is=[%0d]",out);
     out=~|a;
    $display("your's reduction operators results for nor is=[%0d]",out);
     out=^a;
    $display("your's reduction operators results for xor is=[%0d]",out);
     out=~^a;
    $display("your's reduction operators results for xnor is=[%0d]",out);
  end
endmodule


your's reduction operators results for and is=[0]
your's reduction operators results for nand is=[1]
your's reduction operators results for or is=[1]
your's reduction operators results for nor is=[0]
your's reduction operators results for xor is=[1]
your's reduction operators results for xnor is=[0]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Mon Aug  4 09:05:18 2025
