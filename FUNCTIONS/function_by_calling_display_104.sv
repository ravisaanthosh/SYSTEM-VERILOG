module function_by_calling_display_104;
  initial begin
    $display("your's function by calling display output is=[%0d]",sum(10,55));
  end
  function int sum(int var1,var2);
    return var1+var2;
  endfunction
endmodule

your's function by calling display output is=[65]
           V C S   S i m u l a t i o n   R e p o r t 
