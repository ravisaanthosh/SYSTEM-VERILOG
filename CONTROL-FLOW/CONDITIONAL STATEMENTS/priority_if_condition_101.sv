module priority_if_condition_101;
  bit[7:0]a,b;
  initial begin
    a=10;
    b=10;
    priority if(a==b)
      $display("your's priority if condition was true=[%0d]",a);
    else if(a<=b)
      $display("your's else if condition was true=[%0d]",a,b);
    else
      $display("none of the above");
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  7 00:06 2025
your's priority if condition was true=[10]
           V C S   S i m u l a t i o n   R e p o r t 
