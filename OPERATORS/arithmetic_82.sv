module arirthmetic_operator82;
  longint a;
  longint b;
  longint out;
  initial begin
    a=10;
    b=2;
    
    out=a+b;
    $display("your's arithmetic_operator's addition operator=[%0d]",out);
     out=a-b;
    $display("your's arithmetic_operator's subtraction operator=[%0d]",out);
      out=a*b;
    $display("your's arithmetic_operator's multipilication operator=[%0d]",out);
      out=a/b;
    $display("your's arithmetic_operator's divisional operator=[%0d]",out);
      out=a%b;
    $display("your's arithmetic_operator's percentage operator=[%0d]",out);
      out=a**b;
    $display("your's arithmetic_operator's power operator=[%0d]",out);
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  1 05:00 2025
your's arithmetic_operator's addition operator=[12]
your's arithmetic_operator's subtraction operator=[8]
your's arithmetic_operator's multipilication operator=[20]
your's arithmetic_operator's divisional operator=[5]
your's arithmetic_operator's percentage operator=[0]
your's arithmetic_operator's power operator=[100]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Fri Aug  1 05:00:38 2025
