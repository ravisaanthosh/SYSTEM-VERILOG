module range_repetition_non_consecutive;
  bit transmiter;
  bit recevier;
  bit clk;
always #5 clk = ~clk;
  initial clk=0;
  
  property p1;
    @(posedge clk) transmiter |-> ##1 (recevier)[=2:5];
  endproperty
  
  assert property (p1)
    $info("time=[%0t]---->PASS",$time);
    else
      $warning("time=[%0t]---->FAIL",$time);
    
initial begin
      clk = 0;
    transmiter = 0;
    recevier = 0;
    
 #10; transmiter=1;
  #10;transmiter=0;
   #10; transmiter=1;
  
  
  #10 recevier = 1; #10 recevier = 0;  
    #10 recevier = 1; #10 recevier = 0;  
    #10 recevier = 1; #10 recevier = 1;  
    #10 recevier = 1; #10 recevier = 0;  
    #10 recevier = 1; #10 recevier = 1; 

  #10;
  $finish;
end
    initial begin
  $dumpfile("range.vcd");
  $dumpvars();
end
    endmodule
    time=[65]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 65 ns
time=[65]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 85 ns
time=[85]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 85 ns
time=[85]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 95 ns
time=[95]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 95 ns
time=[95]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 105 ns
time=[105]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 125 ns
time=[125]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 135 ns
time=[135]---->PASS
Info: "design.sv", 12: range_repetition_non_consecutive.unnamed$$_0: at time 135 ns
time=[135]---->PASS
$finish called from file "design.sv", line 34.
$finish at simulation time                  140
           V C S   S i m u l a t i o n   R e p o r t 


    
