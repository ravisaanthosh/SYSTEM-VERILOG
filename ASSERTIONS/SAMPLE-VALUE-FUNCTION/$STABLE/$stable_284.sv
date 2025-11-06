module rose;
  bit clk;
  bit signal_0;
//   bit signal_1;
  
  always #2clk=~clk;
  initial clk=0;
  
property p1;
  @(posedge clk)
  $stable(signal_0);
endproperty
  
  assert property(p1)
    $info("PASS-->Time=[%0t],signal_0=[%0d]",$time,signal_0);
    else
      $warning("FAIL-->Time=[%0t],signal_0=[%0d]",$time,signal_0);
    
initial begin
//         clk=0;
//   signal_0=0;
//   signal_1=0;
//test_case-1
  
  #4;signal_0=1;
  #4;signal_0=0;
  #4;signal_0=1;
  #4;signal_0=1;
  #4;signal_0=0;
  #20;
$finish;
end
    initial begin
      $dumpfile("iff.vcd");
      $dumpvars;
    end
    endmodule
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 2 ns
PASS-->Time=[2],signal_0=[0]
"testbench.sv", 14: rose.unnamed$$_0: started at 6ns failed at 6ns
	Offending '$stable(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 6 ns
FAIL-->Time=[6],signal_0=[1]
"testbench.sv", 14: rose.unnamed$$_0: started at 10ns failed at 10ns
	Offending '$stable(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 10 ns
FAIL-->Time=[10],signal_0=[0]
"testbench.sv", 14: rose.unnamed$$_0: started at 14ns failed at 14ns
	Offending '$stable(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 14 ns
FAIL-->Time=[14],signal_0=[1]
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 18 ns
PASS-->Time=[18],signal_0=[1]
"testbench.sv", 14: rose.unnamed$$_0: started at 22ns failed at 22ns
	Offending '$stable(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 22 ns
FAIL-->Time=[22],signal_0=[0]
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 26 ns
PASS-->Time=[26],signal_0=[0]
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 30 ns
PASS-->Time=[30],signal_0=[0]
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 34 ns
PASS-->Time=[34],signal_0=[0]
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 38 ns
PASS-->Time=[38],signal_0=[0]
$finish called from file "testbench.sv", line 31.
$finish at simulation time                   40
           V C S   S i m u l a t i o n   R e p o r t 
