module timing_releationship;
  bit clk;
  bit a,b;
  
   always #2 clk = ~clk;
  
  sequence s1;
    a||b;
  endsequence
  
  property p1;
    @(posedge clk)s1;
  endproperty
  
  assert property (p1);
    initial begin
      $dumpfile("out.vcd");
      $dumpvars;
      clk=0;
      a=0;
      b=0;
      #5; a=1;
      #20; b=1;
      #50;$finish;
    end
    endmodule


    
