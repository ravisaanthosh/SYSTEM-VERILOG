class basic;
  rand bit data;
  rand reg [1:0]out;
  constraint c1{data==0->out==1;}
endclass

module tb;
  basic b1;
  initial begin
    b1=new();
    repeat(10)begin
      b1.randomize();
      $display("result of data=[%0d],out=[%0d]",b1.data,b1.out);
    end
  end
endmodule

testbench.sv
​
design.sv
class basic;
  rand bit data;
  rand reg [1:0]out;
  constraint c1{data==0->out==1;}
endclass
​
module tb;
  basic b1;
  initial begin
    b1=new();
    repeat(10)begin
      b1.randomize();
      $display("result of data=[%0d],out=[%0d]",b1.data,b1.out);
    end
  end
endmodule
      
      

result of data=[1],out=[2]
result of data=[0],out=[1]
result of data=[1],out=[0]
result of data=[1],out=[1]
result of data=[1],out=[2]
result of data=[0],out=[1]
result of data=[1],out=[0]
result of data=[0],out=[1]
result of data=[1],out=[1]
result of data=[1],out=[2]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Tue Sep 23 09:05:33 2025
