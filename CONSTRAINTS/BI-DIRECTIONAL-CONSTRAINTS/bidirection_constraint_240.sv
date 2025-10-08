class bidirectional;
  rand bit [14:0]total;
  rand reg [7:0]value_1;
  rand logic [7:0]value_2;
  //   constraint c1{total==value_1 + 10;}     If your intention is to test bidirectional constraint behavior, keep one constraint active at a time, like this:
//   constraint c2{total==value_1 - value_2;}
  constraint c3{total==value_1 * value_2;}
//   constraint c4{total==value_1 / value_2;}
//   constraint c5{total==value_1 % value_2;}
endclass


module tb;
  bidirectional bi;
  initial begin
    bi=new();
    repeat(10)begin
      bi.randomize();
      $display("operation_1=[%0d] \n operation_2=[%0d]  \n------>TOTAL=[%0d]",bi.value_1,bi.value_2,bi.total);
    end
  end
endmodule


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 00:45 2025
operation_1=[228] 
 operation_2=[53]  
------>TOTAL=[12084]
operation_1=[61] 
 operation_2=[16]  
------>TOTAL=[976]
operation_1=[142] 
 operation_2=[157]  
------>TOTAL=[22294]
operation_1=[195] 
 operation_2=[27]  
------>TOTAL=[5265]
operation_1=[56] 
 operation_2=[204]  
------>TOTAL=[11424]
operation_1=[33] 
 operation_2=[109]  
------>TOTAL=[3597]
operation_1=[241] 
 operation_2=[207]  
------>TOTAL=[17119]
operation_1=[60] 
 operation_2=[248]  
------>TOTAL=[14880]
operation_1=[155] 
 operation_2=[37]  
------>TOTAL=[5735]
operation_1=[190] 
 operation_2=[70]  
------>TOTAL=[13300]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.800 seconds;       Data structure size:   0.0Mb
Wed Oct  8 00:45:51 2025
Done
