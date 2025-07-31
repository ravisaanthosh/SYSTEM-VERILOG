module array_manupulation_reduction_method_73;
  longint in[9];
  initial begin
    in='{1,2,3,4,5,6,7,8,9};
    $display("your's array reduction method using sum =[%0d]",in.sum());
    $display("your's array reduction method using product =[%0d]",in.product());
    $display("your's array reduction method using and =[%0d]",in.and());
    $display("your's array reduction method using or =[%0d]",in.or());
    $display("your's array reduction method using xor =[%0d]",in.xor());
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 01:17 2025
your's array reduction method using sum =[45]
your's array reduction method using product =[362880]
your's array reduction method using and =[0]
your's array reduction method using or =[15]
your's array reduction method using xor =[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Thu Jul 31 01:17:47 2025
