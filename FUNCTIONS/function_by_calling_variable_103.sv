module function_by_calling_variable_103;
  int result,a,b;
  initial begin
    a=10;
    b=25;
    result=sum(a,b);
    $display("your's function with variables output is =[%0d]",result);
  end
  function int sum(int a,b);
    return a+b;
  endfunction
endmodule

your's function with variables output is =[35]
           V C S   S i m u l a t i o n   R e p o r t 
