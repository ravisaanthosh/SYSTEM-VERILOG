class simp;
  int a; 
  bit b;
  function new(a_v,b_v);
    a=a_v;
    b=b_v;
    $display("a=%b,b=%b",a,b);
  endfunction
  
  function user_fun(a_v,b_v);
    a=a_v;
    b=b_v;
    $display("a=%b,b=%b",a,b);
  endfunction
endclass

module class_ex;
  simp tr;
  initial begin
    tr=new(1,0);
    tr.user_fun(1,0);
    //$display("a=%b,b=%b",tr.a,tr.b);
  end
endmodule
