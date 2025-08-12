module blocking_116;
  int g_n=10;
  int l_n=5;
  initial begin
    $display("swaping without reg");
    g_n<=l_n;
    l_n<=g_n;
   // $display("your's swapping greater than =[%0d] lessthan =[%0d]",g_n,l_n);
    $monitor("your's swapping greater than =[%0d] lessthan =[%0d]",g_n,l_n);
  end
endmodule

swaping without reg
your's swapping greater than =[5] lessthan =[5]
           V C S   S i m u l a t i o n   R e p o r t 
    
