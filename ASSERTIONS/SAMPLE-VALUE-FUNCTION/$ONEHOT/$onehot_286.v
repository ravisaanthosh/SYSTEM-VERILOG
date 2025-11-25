module   onehot;
  bit clk;
  bit [3:0]signal_0;
  
  always #2clk=~clk;
  initial clk=1;
  
property p1;
  @(posedge clk)
  $onehot(signal_0);
endproperty
  
  assert property(p1)
    $info("PASS-->Time=[%0t],signal_0=[%0b]",$time,signal_0);
    else
      $warning("FAIL-->Time=[%0t],signal_0=[%0b]",$time,signal_0);
    
initial begin

//test_case-1
  signal_0=1;
  #4;signal_0=4'b0010;
  //test_case-2
  #4;signal_0=4'b1110;
  //test_case-3
  #4;signal_0=4'b1001;
  //test_case-4
  #4;signal_0=4'b0000;
  //test_case-5
  #4;signal_0=4'b1000;
  #20;
$finish;
end
    initial begin
      $dumpfile("iff.vcd");
      $dumpvars;
    end
    endmodule
