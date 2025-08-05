module loop_while_90;
  integer i;
  initial begin
    i=0;
    while(i<=6)begin
      $display("your's while_loops_output is=%0d",i);
    i++;
  end
  end
endmodule
