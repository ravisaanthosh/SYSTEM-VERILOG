module unique_if_conditional_99;
  bit[7:0]x,y,z;
  initial begin
    x=4;
    y=5;
    z=6;
    unique if(x==4)
      $display("your's unique_if conditional output is =[%0d]",x);
    else if(x>y)
      $display("your's unique_if conditional output is =[%0d]",y);
    else if(y<x)
      $display("your's unique_if conditional output is =[%0d]",z);
  end
endmodule

# KERNEL: your's unique_if conditional output is =[4]
