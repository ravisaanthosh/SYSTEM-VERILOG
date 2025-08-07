module function_with_values_102;
  int result;
  initial begin
    result=sum(10,20);
    $display("your's function with values output is =[%0d]",result);
  end
  
  function int sum(int var1,var2);
    return var1+var2;
  endfunction
endmodule


your's function with values output is =[30]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Thu Aug  7 02:07:07 2025
