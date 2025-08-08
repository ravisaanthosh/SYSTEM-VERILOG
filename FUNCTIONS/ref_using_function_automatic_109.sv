module ref_using_function_automatic_109;
  int a,b;
  int out;
  initial begin
    a=10;
    b=20;
    out=divide(a,b);
    $display("your's ref_using_function_automatic output is=[%0d][%0d][%0d]",out,a,b);
  end
  function automatic int divide(ref int a,b);
      a=a+b;
      return b;
    endfunction
endmodule

your's ref_using_function_automatic output is=[20][30][20]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Fri Aug  8 06:43:06 2025
