module rose;
  bit clk;
  bit signal_0;
  bit signal_1;
  
  always #2clk=~clk;
  initial clk=0;
  
property p1;
  @(posedge clk)
  $rose(signal_0)|-> ##2signal_1;
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
  
  #4;signal_0=0;
  #4;signal_1=0;
  //test_case-2
  #4;signal_0=1;
  #4;signal_1=1;

//test_case-3
  
  #4;signal_0=0;
  #4;signal_1=1;
  //test_case-4
  #4;signal_0=1;
  #4;signal_1=0;
  #20;
$finish;
end
    initial begin
      $dumpfile("iff.vcd");
      $dumpvars;
    end
    endmodule

    Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 22 ns
PASS-->Time=[22],signal_0=[0],signal_1=[1]
"testbench.sv", 14: equivalance.unnamed$$_0: started at 30ns failed at 38ns
	Offending 'signal_1'
Warning: "testbench.sv", 14: equivalance.unnamed$$_0: at time 38 ns
FAIL-->Time=[38],signal_0=[1],signal_1=[0]
$finish called from file "testbench.sv", line
