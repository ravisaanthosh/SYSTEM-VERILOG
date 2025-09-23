class operation;
  randc logic [7:0]var_1;
  randc logic [7:0]var_2;
  randc bit [8:0]result_sum;
  randc bit [8:0]result_sub;
  randc bit [8:0]result_mul;
  randc bit [8:0]result_div;
  
  constraint c1{result_sum==var_1 + var_2;
               result_sub==var_1 - var_2;
               result_mul== var_1 * var_2;
               result_div==var_1 / var_2;}
endclass


module tb;
  operation op;
  initial begin
    op=new();
    repeat(4)begin
      op.randomize();
      $display("sum of var_1=[%0d] var_2=[%0d] result=[%0d]",op.var_1,op.var_2,op.result_sum);
      $display("sub of var_1=[%0d] var_2=[%0d] result=[%0d]",op.var_1,op.var_2,op.result_sub);
      $display("mul of var_1=[%0d] var_2=[%0d] result=[%0d]",op.var_1,op.var_2,op.result_mul);
      $display("div of var_1=[%0d] var_2=[%0d] result=[%0d]",op.var_1,op.var_2,op.result_div);
    end
  end
endmodule

sum of var_1=[173] var_2=[2] result=[175]
sub of var_1=[173] var_2=[2] result=[171]
mul of var_1=[173] var_2=[2] result=[346]
div of var_1=[173] var_2=[2] result=[86]
sum of var_1=[97] var_2=[1] result=[98]
sub of var_1=[97] var_2=[1] result=[96]
mul of var_1=[97] var_2=[1] result=[97]
div of var_1=[97] var_2=[1] result=[97]
sum of var_1=[225] var_2=[3] result=[228]
sub of var_1=[225] var_2=[3] result=[222]
mul of var_1=[225] var_2=[3] result=[163]
div of var_1=[225] var_2=[3] result=[75]
sum of var_1=[205] var_2=[4] result=[209]
sub of var_1=[205] var_2=[4] result=[201]
mul of var_1=[205] var_2=[4] result=[308]
div of var_1=[205] var_2=[4] result=[51]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Tue Sep 23 03:28:18 2025
