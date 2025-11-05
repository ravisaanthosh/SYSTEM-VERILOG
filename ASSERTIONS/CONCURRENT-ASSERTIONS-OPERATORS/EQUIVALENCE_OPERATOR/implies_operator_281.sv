module equivalance;
  bit clk;
  bit signal_0;
  bit signal_1;
  
  always #2clk=~clk;
  initial clk=0;
  
property p1;
  @(posedge clk)
  (signal_0 implies signal_1);
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
  #4;signal_0=0;
  #4;signal_1=1;

//test_case-3
  
  #4;signal_0=1;
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


    Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 2 ns
PASS-->Time=[2],signal_0=[0],signal_1=[0]
Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 6 ns
PASS-->Time=[6],signal_0=[0],signal_1=[0]
Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 10 ns
PASS-->Time=[10],signal_0=[0],signal_1=[0]
Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 14 ns
PASS-->Time=[14],signal_0=[0],signal_1=[0]
Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 18 ns
PASS-->Time=[18],signal_0=[0],signal_1=[1]
Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 22 ns
PASS-->Time=[22],signal_0=[1],signal_1=[1]
Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 26 ns
PASS-->Time=[26],signal_0=[1],signal_1=[1]
Info: "testbench.sv", 14: equivalance.unnamed$$_0: at time 30 ns
PASS-->Time=[30],signal_0=[1],signal_1=[1]
"testbench.sv", 14: equivalance.unnamed$$_0: started at 34ns failed at 34ns
Warning: "testbench.sv", 14: equivalance.unnamed$$_0: at time 34 ns
FAIL-->Time=[34],signal_0=[1],signal_1=[0]
"testbench.sv", 14: equivalance.unnamed$$_0: started at 38ns failed at 38ns
Warning: "testbench.sv", 14: equivalance.unnamed$$_0: at time 38 ns
FAIL-->Time=[38],signal_0=[1],signal_1=[0]
"testbench.sv", 14: equivalance.unnamed$$_0: started at 42ns failed at 42ns
Warning: "testbench.sv", 14: equivalance.unnamed$$_0: at time 42 ns
FAIL-->Time=[42],signal_0=[1],signal_1=[0]
"testbench.sv", 14: equivalance.unnamed$$_0: started at 46ns failed at 46ns
Warning: "testbench.sv", 14: equivalance.unnamed$$_0: at time 46 ns
FAIL-->Time=[46],signal_0=[1],signal_1=[0]
"testbench.sv", 14: equivalance.unnamed$$_0: started at 50ns failed at 50ns
Warning: "testbench.sv", 14: equivalance.unnamed$$_0: at time 50 ns
FAIL-->Time=[50],signal_0=[1],signal_1=[0]
$finish called from file "testbench.sv", line 39.
$finish at simulation time                   52
           V C S   S i m u l a t i o n   R e p o r t 
Time: 52 ns
CPU Time:      0.330 seconds;       Data structure size:   0.0Mb
Wed Nov  5 04:52:37 2025
Finding VCD file...
  
