module function_by_using_positional_105;
  int result;
  initial begin
    result=sum(.var1(100),.var2(200));
    $display("your's function_by_using_positional output is=[%0d]",result);
  end
  function int sum(int var1,var2);
    return var1+var2;
  endfunction
endmodule

your's function_by_using_positional output is=[300]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Thu Aug  7 02:44:58 2025
