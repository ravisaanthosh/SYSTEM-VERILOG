module function_using_void_110;
  int a,b;
  initial begin
    a=20;
    b=10;
    compare(a,b);
  end
  function void compare (int a,b);
    if(a>b)
      $display("a is grater than b=[%0d][%0d]",a,b);
    else if (a<b)
      $display("a is less than b=[%0d][%0d]",a,b);
    else
      $display("a is equal to b=[%0d][%0d]",a,b);
  endfunction
endmodule

a is grater than b=[20][10]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Fri Aug  8 07:04:11 2025
      
