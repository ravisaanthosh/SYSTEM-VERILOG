module range_go_to_the_repetition_non_consecutive;
  bit transmiter;
  bit recevier;
  bit complete;
  bit clk;
always #5 clk = ~clk;
  initial clk=0;
  
  property p1;
    @(posedge clk) transmiter |-> ##2 recevier[->2:5] ##1 complete;
  endproperty
  
  assert property (p1)
    $info("time=[%0t]---->PASS",$time);
    else
      $warning("time=[%0t]---->FAIL",$time);
    
initial begin
      clk = 0;
    transmiter = 0;
    recevier = 0;
  complete=0;
    
 #10; transmiter=1;
  
  
  #10 recevier = 1; #10 recevier = 0;  
    #10 recevier = 1; #10 recevier = 1; 
  #10 complete=1;

  #10;
 #100; $finish;
end
    initial begin
  $dumpfile("range.vcd");
  $dumpvars();
end
    endmodule

    Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 30 01:46 2025
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 65 ns
time=[65]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 65 ns
time=[65]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 75 ns
time=[75]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 85 ns
time=[85]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 95 ns
time=[95]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 105 ns
time=[105]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 115 ns
time=[115]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 125 ns
time=[125]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 135 ns
time=[135]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 145 ns
time=[145]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 155 ns
time=[155]---->PASS
Info: "design.sv", 13: go_to_the_repetition_non_consecutive.unnamed$$_0: at time 165 ns
time=[165]---->PASS
$finish called from file "design.sv", line 32.
$finish at simulation time                  170
           V C S   S i m u l a t i o n   R e p o r t 
