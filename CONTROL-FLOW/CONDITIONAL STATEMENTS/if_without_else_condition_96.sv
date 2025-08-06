module if_without_else_condition_96;
  bit[4:0]a;
  initial begin
    a=10;
    if(a==10)begin
      $display("your's if_without_else_condition is true=[%0d]",a);
    end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  6 03:03 2025
your's if_without_else_condition is true=[10]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Wed Aug  6 03:03:12 202
