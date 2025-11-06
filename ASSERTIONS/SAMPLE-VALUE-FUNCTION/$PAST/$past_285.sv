module past;
  bit clk;
  bit signal_0;
//   bit signal_1;
  
  always #2clk=~clk;
  initial clk=1;
  
property p1;
  @(posedge clk)
  $past(signal_0);
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
  signal_0=0;
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
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov  5 20:29 2025
"testbench.sv", 14: rose.unnamed$$_0: started at 0ns failed at 0ns
	Offending '$past(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 0 ns
FAIL-->Time=[0],signal_0=[0]
"testbench.sv", 14: rose.unnamed$$_0: started at 4ns failed at 4ns
	Offending '$past(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 4 ns
FAIL-->Time=[4],signal_0=[1]
"testbench.sv", 14: rose.unnamed$$_0: started at 8ns failed at 8ns
	Offending '$past(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 8 ns
FAIL-->Time=[8],signal_0=[0]
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 12 ns
PASS-->Time=[12],signal_0=[1]
"testbench.sv", 14: rose.unnamed$$_0: started at 16ns failed at 16ns
	Offending '$past(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 16 ns
FAIL-->Time=[16],signal_0=[1]
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 20 ns
PASS-->Time=[20],signal_0=[0]
Info: "testbench.sv", 14: rose.unnamed$$_0: at time 24 ns
PASS-->Time=[24],signal_0=[0]
"testbench.sv", 14: rose.unnamed$$_0: started at 28ns failed at 28ns
	Offending '$past(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 28 ns
FAIL-->Time=[28],signal_0=[0]
"testbench.sv", 14: rose.unnamed$$_0: started at 32ns failed at 32ns
	Offending '$past(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 32 ns
FAIL-->Time=[32],signal_0=[0]
"testbench.sv", 14: rose.unnamed$$_0: started at 36ns failed at 36ns
	Offending '$past(signal_0)'
Warning: "testbench.sv", 14: rose.unnamed$$_0: at time 36 ns
FAIL-->Time=[36],signal_0=[0]
$finish called from file "testbench.sv", line 31.
$finish at simulation time
