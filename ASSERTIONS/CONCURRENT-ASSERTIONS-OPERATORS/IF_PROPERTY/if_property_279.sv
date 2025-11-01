module if_else_property;
  bit clk;
  bit transport;
  bit bus;
  bit train;
  
always #2 clk=~clk;
  initial clk=1;
  
sequence s1;
  (transport throughout  ( bus & train));
endsequence
  sequence s2;
    (transport throughout  ( bus | train));
endsequence
  
  property p1;
    @(posedge clk)
    (if(transport)
      s1
      else
        s2);
    
  endproperty
  
  assert property (p1)
    $info("PASS--> if_operator found at=[%0t]",$time);
    else
      $warning("FAIL--> no operator not  found at=[%0t]",$time);
    
    initial begin
      
// testcase=1
      #4 transport=1;
      #4 bus=1;
      #4 train=1;
      
      // testcase=2
      #4 transport=0;
      #4 bus=1;
      #4 train=0;
      
        // testcase=3
      #4 transport=0;
      #4 bus=1;
      #4 train=0;
      
  // testcase=4
      #4 transport=0;
      #4 bus=0;
      #4 train=1;

//testcase=5
       #4 transport=0;
      #4 bus=1;
      #4 train=1;
      
      //testcase=6
       #4 transport=1;
      #4 bus=1;
      #4 train=1;

#10;
      $finish;
    end
      initial begin
        $dumpfile("out.vcd");
        $dumpvars;
      end
    endmodule
CPU time: .415 seconds to compile + .409 seconds to elab + .349 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov  1 04:46 2025
"design.sv", 26: if_else_property.unnamed$$_0: started at 0ns failed at 0ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 0 ns
FAIL--> no operator not  found at=[0]
"design.sv", 26: if_else_property.unnamed$$_0: started at 4ns failed at 4ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 4 ns
FAIL--> no operator not  found at=[4]
"design.sv", 26: if_else_property.unnamed$$_0: started at 8ns failed at 8ns
	Offending '(bus & train)'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 8 ns
FAIL--> no operator not  found at=[8]
"design.sv", 26: if_else_property.unnamed$$_0: started at 12ns failed at 12ns
	Offending '(bus & train)'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 12 ns
FAIL--> no operator not  found at=[12]
Info: "design.sv", 26: if_else_property.unnamed$$_0: at time 16 ns
PASS--> if_operator found at=[16]
"design.sv", 26: if_else_property.unnamed$$_0: started at 20ns failed at 20ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 20 ns
FAIL--> no operator not  found at=[20]
"design.sv", 26: if_else_property.unnamed$$_0: started at 24ns failed at 24ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 24 ns
FAIL--> no operator not  found at=[24]
"design.sv", 26: if_else_property.unnamed$$_0: started at 28ns failed at 28ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 28 ns
FAIL--> no operator not  found at=[28]
"design.sv", 26: if_else_property.unnamed$$_0: started at 32ns failed at 32ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 32 ns
FAIL--> no operator not  found at=[32]
"design.sv", 26: if_else_property.unnamed$$_0: started at 36ns failed at 36ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 36 ns
FAIL--> no operator not  found at=[36]
"design.sv", 26: if_else_property.unnamed$$_0: started at 40ns failed at 40ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 40 ns
FAIL--> no operator not  found at=[40]
"design.sv", 26: if_else_property.unnamed$$_0: started at 44ns failed at 44ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 44 ns
FAIL--> no operator not  found at=[44]
"design.sv", 26: if_else_property.unnamed$$_0: started at 48ns failed at 48ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 48 ns
FAIL--> no operator not  found at=[48]
"design.sv", 26: if_else_property.unnamed$$_0: started at 52ns failed at 52ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 52 ns
FAIL--> no operator not  found at=[52]
"design.sv", 26: if_else_property.unnamed$$_0: started at 56ns failed at 56ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 56 ns
FAIL--> no operator not  found at=[56]
"design.sv", 26: if_else_property.unnamed$$_0: started at 60ns failed at 60ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 60 ns
FAIL--> no operator not  found at=[60]
"design.sv", 26: if_else_property.unnamed$$_0: started at 64ns failed at 64ns
	Offending 'transport'
Warning: "design.sv", 26: if_else_property.unnamed$$_0: at time 64 ns
FAIL--> no operator not  found at=[64]
Info: "design.sv", 26: if_else_property.unnamed$$_0: at time 68 ns
PASS--> if_operator found at=[68]
Info: "design.sv", 26: if_else_property.unnamed$$_0: at time 72 ns
PASS--> if_operator found at=[72]
Info: "design.sv", 26: if_else_property.unnamed$$_0: at time 76 ns
PASS--> if_operator found at=[76]
Info: "design.sv", 26: if_else_property.unnamed$$_0: at time 80 ns
PASS--> if_operator found at=[80]
$finish called from file "design.sv", line 64.
$finish at simulation time                   82
           V C S   S i m u l a t i o n   R e p o r t 
Time: 82 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Sat Nov  1 04:46:36 2025
Finding VCD file...
