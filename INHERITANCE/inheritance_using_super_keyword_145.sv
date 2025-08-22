//super keyword success but inside operations are some logical error fix soon as possible...................
class comparator;
  bit [10:0] a;
  logic [10:0] b;
  reg [10:0] c;

  function void comparing(bit x, bit y, bit z);//here i will use bit its store 0 or 1 thats a issues fixed below code
    if (x > z)
      $display("a greater than b",x>z);
    else
      $display("false statement");

    if (x > y)
      $display("a greater than c");
    else
      $display("false statement");

    if (x &&y)
      $display("a equal to c");
    else
      $display("false statement");

    if (x + z)
      $display("your's sum of a and c = [%0d]", x+z);
    else
      $display("false statement");

    if (x - z)
      $display("your's sub of a and c = [%0d]", x-z);
    else
      $display("false statement");

    if (x * z)
      $display("your's mul of a and c = [%0d]", x*z);
    else
      $display("false statement");
  endfunction
endclass


class operator extends comparator;
  bit [10:0] d;

  function void comparing(int x, int y, int z);
    super.comparing(x, y, z);
    if (y != 0)
      $display("your's div of x and y = [%0d]", x / y);
    else
      $display("division by zero not allowed");
  endfunction
endclass


module tb;
  operator op;
  initial begin
    op = new();
    op.comparing(70, 20, 100);
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 22 08:29 2025
false statement
false statement
false statement
false statement
false statement
false statement
your's div of x and y = [3]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Fri Aug 22 08:29:48 2025
Done

...............................fixed code.............................

class comparator;
  bit [10:0] a;
  logic [10:0] b;
  reg [10:0] c;

  function void comparing(int x, int y, int z);
    if (x > z)
      $display("a greater than b");
    else
      $display("false statement");

    if (x > y)
      $display("a greater than c");
    else
      $display("false statement");

    if (x &&y)
      $display("a equal to c");
    else
      $display("false statement");

    if (x + z)
      $display("your's sum of a and c = [%0d]", x+z);
    else
      $display("false statement");

    if (x - z)
      $display("your's sub of a and c = [%0d]", x-z);
    else
      $display("false statement");

    if (x * z)
      $display("your's mul of a and c = [%0d]", x*z);
    else
      $display("false statement");
  endfunction
endclass


class operator extends comparator;
  logic [10:0] d;

  function void comparing(int x, int y, int z);
    super.comparing(x, y, z);
    if (y != 0)
      $display("your's div of x and y = [%0d]", x / y);
    else
      $display("division by zero not allowed");
  endfunction
endclass


module tb;
  operator op;
  initial begin
    op = new();
    op.comparing(70, 20, 100);
  end
endmodule


false statement
a greater than c
a equal to c
your's sum of a and c = [170]
your's sub of a and c = [-30]
your's mul of a and c = [7000]
your's div of x and y = [3]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Fri Aug 22 08:45:40 2025
Done
