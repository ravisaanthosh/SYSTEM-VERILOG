module function_using_automatic_107;
  int result;
  initial begin
    result=factorial(5);
    $display("your's function_using_automatic =[%0d]",result);
  end
  function automatic int factorial(int n);
    if(n<=1)
      return 1;
    else
      return n*factorial(n-1);
  endfunction
endmodule

your's function_using_automatic =[120]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Fri Aug  8 02:29:28 2025
Done
