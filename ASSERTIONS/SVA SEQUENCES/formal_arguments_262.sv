module formal_arguments;
  bit clk;
  bit  A,B,C,D;
  always #2 clk=~clk;
  
  sequence s1(X,Y);
    X&&Y;
  endsequence
  
  sequence s2(bit X,bit Y);
    X&&Y;
  endsequence
  
  property p1(A,B);
    @(posedge clk)
    A|-> s1 (A,B);
  endproperty
  
  property p2(bit C,bit D);
    @(posedge clk)
    C|->s2(C,D);
  endproperty
  
  assert property (p1(A,B))
    $info("A&B => PASS");
    else
      $error("A&B =>FAIL");
    
    assert property (p2(C,D))
      $info("C&D => PASS");
    else
      $error("C&D =>FAIL");
      initial begin
        A=0;B=0;C=0;D=0;
        #5 A=0; 
        #5 B=0;
        
     	#5 A=1; 
        #5 B=1;
        
        #5 A=1; 
        #5 B=0;
        
        #5 C=0; 
        #5 D=1;
        
        #5 C=1; 
        #5 D=0;
        
        #5 C=1; 
        #5 D=1;
#20;
        $finish;
      end
      initial begin
        $dumpfile("fa.vcd");
        $dumpvars;
      end
      endmodule






      Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Top Level Modules:
       formal_arguments
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module formal_arguments
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .395 seconds to compile + .323 seconds to elab + .334 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 28 04:08 2025
"design.sv", 24: formal_arguments.unnamed$$_0: started at 18ns failed at 18ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 18 ns
A&B =>FAIL
Info: "design.sv", 24: formal_arguments.unnamed$$_0: at time 22 ns
A&B => PASS
Info: "design.sv", 24: formal_arguments.unnamed$$_0: at time 26 ns
A&B => PASS
Info: "design.sv", 24: formal_arguments.unnamed$$_0: at time 30 ns
A&B => PASS
"design.sv", 24: formal_arguments.unnamed$$_0: started at 34ns failed at 34ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 34 ns
A&B =>FAIL
"design.sv", 24: formal_arguments.unnamed$$_0: started at 38ns failed at 38ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 38 ns
A&B =>FAIL
"design.sv", 24: formal_arguments.unnamed$$_0: started at 42ns failed at 42ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 42 ns
A&B =>FAIL
"design.sv", 24: formal_arguments.unnamed$$_0: started at 46ns failed at 46ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 46 ns
A&B =>FAIL
Info: "design.sv", 29: formal_arguments.unnamed$$_1: at time 46 ns
C&D => PASS
"design.sv", 24: formal_arguments.unnamed$$_0: started at 50ns failed at 50ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 50 ns
A&B =>FAIL
Info: "design.sv", 29: formal_arguments.unnamed$$_1: at time 50 ns
C&D => PASS
"design.sv", 24: formal_arguments.unnamed$$_0: started at 54ns failed at 54ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 54 ns
A&B =>FAIL
"design.sv", 29: formal_arguments.unnamed$$_1: started at 54ns failed at 54ns
	Offending '(C && D)'
Error: "design.sv", 29: formal_arguments.unnamed$$_1: at time 54 ns
C&D =>FAIL
"design.sv", 24: formal_arguments.unnamed$$_0: started at 58ns failed at 58ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 58 ns
A&B =>FAIL
"design.sv", 29: formal_arguments.unnamed$$_1: started at 58ns failed at 58ns
	Offending '(C && D)'
Error: "design.sv", 29: formal_arguments.unnamed$$_1: at time 58 ns
C&D =>FAIL
"design.sv", 24: formal_arguments.unnamed$$_0: started at 62ns failed at 62ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 62 ns
A&B =>FAIL
Info: "design.sv", 29: formal_arguments.unnamed$$_1: at time 62 ns
C&D => PASS
"design.sv", 24: formal_arguments.unnamed$$_0: started at 66ns failed at 66ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 66 ns
A&B =>FAIL
Info: "design.sv", 29: formal_arguments.unnamed$$_1: at time 66 ns
C&D => PASS
"design.sv", 24: formal_arguments.unnamed$$_0: started at 70ns failed at 70ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 70 ns
A&B =>FAIL
Info: "design.sv", 29: formal_arguments.unnamed$$_1: at time 70 ns
C&D => PASS
"design.sv", 24: formal_arguments.unnamed$$_0: started at 74ns failed at 74ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 74 ns
A&B =>FAIL
Info: "design.sv", 29: formal_arguments.unnamed$$_1: at time 74 ns
C&D => PASS
"design.sv", 24: formal_arguments.unnamed$$_0: started at 78ns failed at 78ns
	Offending '(A && B)'
Error: "design.sv", 24: formal_arguments.unnamed$$_0: at time 78 ns
A&B =>FAIL
Info: "design.sv", 29: formal_arguments.unnamed$$_1: at time 78 ns
C&D => PASS
$finish called from file "design.sv", line 53.
$finish at simulation time                   80
           V C S   S i m u l a t i o n   R e p o r t 
Time: 80 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Tue Oct 28 04:08:29 2025
Finding VCD file...
./fa.vcd
