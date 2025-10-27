module multiple_sequences_261;
  bit clk;
  bit a,b;
  
   always #2 clk = ~clk;
  
  sequence s1;
    a||b;
  endsequence
  
  sequence s2;
    a##3b;
  endsequence
  
  property p1;
    @(posedge clk) s1 |-> s2;
  endproperty
  
  assert property (p1)
    $info("PASS");
    else
      $error("FAIL");
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


    	Offending 'b'
Error: "design.sv", 19: logical_releationship.unnamed$$_0: at time 18 ns
FAIL
"design.sv", 19: logical_releationship.unnamed$$_0: started at 10ns failed at 22ns
	Offending 'b'
Error: "design.sv", 19: logical_releationship.unnamed$$_0: at time 22 ns
FAIL
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 26 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 30 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 34 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 38 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 42 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 46 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 50 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 54 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 58 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 62 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 66 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 70 ns
PASS
Info: "design.sv", 19: logical_releationship.unnamed$$_0: at time 74 ns
PASS
$finish called from file "design.sv", line 31.
$finish at simulation time                   75
           V C S   S i m u l a t i o n   R e p o r t 
Time: 75 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Mon Oct 27 09:13:00 2025
Finding VCD file...
./out.vcd
