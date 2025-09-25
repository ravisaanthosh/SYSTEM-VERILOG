`define START_BIT 10 //here semicolon are not valid here dont use here 
`define STOP_BIT 20

class protocol;
  randc bit [4:0]uart;
  constraint c1 {uart inside {[`START_BIT : `STOP_BIT]};}
endclass


module tb;
  protocol p1;
  initial begin
    p1=new();
    repeat(20)begin
      p1.randomize();
      $display("random values of start_bit and stop_bit=[%0d]",p1.uart);
    end
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 25 06:59 2025
random values of start_bit and stop_bit=[13]
random values of start_bit and stop_bit=[14]
random values of start_bit and stop_bit=[18]
random values of start_bit and stop_bit=[19]
random values of start_bit and stop_bit=[17]
random values of start_bit and stop_bit=[20]
random values of start_bit and stop_bit=[12]
random values of start_bit and stop_bit=[16]
random values of start_bit and stop_bit=[15]
random values of start_bit and stop_bit=[10]
random values of start_bit and stop_bit=[11]
random values of start_bit and stop_bit=[12]
random values of start_bit and stop_bit=[20]
random values of start_bit and stop_bit=[18]
random values of start_bit and stop_bit=[11]
random values of start_bit and stop_bit=[19]
random values of start_bit and stop_bit=[13]
random values of start_bit and stop_bit=[15]
random values of start_bit and stop_bit=[16]
random values of start_bit and stop_bit=[10]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Thu Sep 25 06:59:00 2025

