class simp;
  int a; 
  bit b;
 function user_fun(a_v,b_v);
    a=a_v;
    b=b_v;
    $display("a=%b,b=%b",a,b);
  endfunction
endclass

module class_ex;
  simp tr1,tr2;
  initial begin
    tr1=new();
    tr1.user_fun(5,0);
    tr2.user_fun(1,0);
    $display("a=%b,b=%b",tr1.a,tr2.b);
  end
endmodule
