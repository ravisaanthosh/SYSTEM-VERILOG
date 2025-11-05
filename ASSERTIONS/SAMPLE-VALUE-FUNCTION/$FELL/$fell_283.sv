module fell;
  bit clk;
  bit signal_0;
  bit signal_1;
  
  always #2clk=~clk;
  initial clk=0;
  
property p1;
  @(posedge clk)
  $fell(signal_0)|-> signal_1;
endproperty
  
  assert property(p1)
    $info("PASS-->Time=[%0t],signal_0=[%0d],signal_1=[%0d]",$time,signal_0,signal_1);
    else
      $warning("FAIL-->Time=[%0t],signal_0=[%0d],signal_1=[%0d]",$time,signal_0,signal_1);
    
initial begin
//         clk=0;
//   signal_0=0;
//   signal_1=0;
//test_case-1
  
#4; signal_0=0;
#4; signal_0=1;
#4; signal_1=1;
  #4; signal_0=0;
  #4; signal_1=1;
  #4; signal_1=0;
  #4; signal_1=1;
  #4; signal_1=0;
  #20;
$finish;
end
    initial begin
      $dumpfile("iff.vcd");
      $dumpvars;
    end
    endmodule


    PASS-->Time=[18],signal_0=[0],signal_1=[1]
