module overlaping_implication;
  bit clk,status,a,b;
  always #5 clk=~clk;
  initial begin
    clk=0;
  status=0;
 	a=0; b=0;
    #10 status=1;
    #10 a=1;
    #10 b=1;
    #10 a=0;
    #10 b=1;
    #10 a=1;
    #10 b=0;
    #10 a=0;
    #10 b=0;
    #10;
    $finish;
  end
  
  property p1;
    @(posedge clk) status |-> (a ##2 b);
  endproperty
  
  assert property (p1)
    $info("[%0t] PASS",$time);
    else
     $info("[%0t],FAIL",$time);
    
    initial begin
      $dumpfile("file.vcd");
      $dumpvars;
    end
    endmodule


    Parsing design file 'testbench.sv'
Top Level Modules:
       overlaping_implication
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 15ns failed at 15ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 15 ns
[15],FAIL
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 45ns failed at 45ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 45 ns
[45],FAIL
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 45 ns
[45] PASS
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 55ns failed at 55ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 55 ns
[55],FAIL
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 55 ns
[55] PASS
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 85ns failed at 85ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 85 ns
[85],FAIL
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 65ns failed at 85ns
	Offending 'b'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 85 ns
[85],FAIL
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 95ns failed at 95ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 95 ns
[95],FAIL
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 75ns failed at 95ns
	Offending 'b'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 95 ns
[95],FAIL
$finish called from file "testbench.sv", line 18.
$finish at simulation time                  100
           V C S   S i m u l a t i o n   R e p o r t 
Time: 100 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Wed Oct 29 02:01:38 2025
Finding VCD file...
./file.vcd
