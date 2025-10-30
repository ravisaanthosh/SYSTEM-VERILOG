module throughout_;
  bit transmiter;
  bit recevier;
//   bit complete;
  bit clk;
always #5 clk = ~clk;
  initial clk=0;
  
  sequence s1;
     ##1 recevier;
  endsequence
   property p1;
     @(posedge clk) transmiter throughout s1;
  endproperty
  assert property (p1)
    $info("time=[%0t]---->PASS",$time);
    else
      $warning("time=[%0t]---->FAIL",$time);
    
initial begin
      clk = 0;
    transmiter = 0;
    recevier = 0;
//   complete=0;
    
 #10; transmiter=1;
  
  
  #10 recevier = 1; #10 recevier = 0;  
    #10 recevier = 1; #10 recevier = 1; 
//   #10 complete=1;

  #10;
 #100; $finish;
end
    initial begin
  $dumpfile("range.vcd");
  $dumpvars();
end
    endmodule
    
"design.sv", 15: throughout_.unnamed$$_0: started at 5ns failed at 5ns
	Offending 'transmiter'
Warning: "design.sv", 15: throughout_.unnamed$$_0: at time 5 ns
time=[5]---->FAIL
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 25 ns
time=[25]---->PASS
"design.sv", 15: throughout_.unnamed$$_0: started at 25ns failed at 35ns
	Offending 'recevier'
Warning: "design.sv", 15: throughout_.unnamed$$_0: at time 35 ns
time=[35]---->FAIL
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 45 ns
time=[45]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 55 ns
time=[55]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 65 ns
time=[65]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 75 ns
time=[75]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 85 ns
time=[85]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 95 ns
time=[95]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 105 ns
time=[105]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 115 ns
time=[115]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 125 ns
time=[125]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 135 ns
time=[135]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 145 ns
time=[145]---->PASS
Info: "design.sv", 15: throughout_.unnamed$$_0: at time 155 ns
time=[155]---->PASS
$finish called from file "design.sv", line 34.
$finish at simulation time                  160
           V C S   S i m u l a t i o n   R e p o r t 
Time: 160 ns
