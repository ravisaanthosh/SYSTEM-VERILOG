class samp;
  bit[3:0]a;
endclass
module class_exp;
  samp tr1,tr2;
  initial begin
    tr1=new();//in single memory allocation both are stored in single address location and both are stored same value to!!
   // tr2=new();//with dual memory allocation
    tr2.a=1;
    tr2=tr1;
    $display("a=%b",tr1.a);
    $display("tr2.a=%b",tr2.a);
    
    tr2.a=2;
    $display("tr1.a=%b",tr1.a);
    $display("tr2.a=%b",tr2.a);
  end
endmodule
    
