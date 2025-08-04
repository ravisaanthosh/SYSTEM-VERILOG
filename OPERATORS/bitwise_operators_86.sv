module bitwise_operators_86;
  reg[2:0]a,b,c,x;
  initial begin
    a=3'b111;
    b=3'b010;
    c=3'b111;
    x=a&c;
    $display("your's bitwise operator for AND gate output is=[%0d]",x);
    x=a|b;
    $display("your's bitwise operator for OR gate output is=[%0d]",x);
    x=~(a&c);
    $display("your's bitwise operator for NAND gate output is=[%0d]",x);
    x=~(a|c);
    $display("your's bitwise operator for NOR gate output is=[%0d]",x);
    x=a^b;
    $display("your's bitwise operator for X-OR gate output is=[%0d]",x);
    x=~a^c;
    $display("your's bitwise operator for X-NOR gate output is=[%0d]",x);
     x=~a;
    $display("your's bitwise operator for NOT gate output is=[%0d]",x);
  end
endmodule

your's bitwise operator for AND gate output is=[7]
your's bitwise operator for OR gate output is=[7]
your's bitwise operator for NAND gate output is=[0]
your's bitwise operator for NOR gate output is=[0]
your's bitwise operator for X-OR gate output is=[5]
your's bitwise operator for X-NOR gate output is=[7]
your's bitwise operator for NOT gate output is=[0]
           V C S   S i m u l a t i o n   R e p o r t
