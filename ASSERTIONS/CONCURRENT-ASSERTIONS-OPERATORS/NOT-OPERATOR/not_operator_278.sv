module not_operator;
  bit clk;
  bit transport;
  bit bus;
  bit train;
  
always #2 clk=~clk;
  initial clk=1;
  
sequence s1;
  (transport throughout  !( bus && train));
endsequence
  
  
  property p1;
    @(posedge clk)
    first_match (s1);
  endproperty
  
  assert property (p1)
    $info("PASS--> not operator found at=[%0t]",$time);
    else
      $warning("FAIL--> no operator not  found at=[%0t]",$time);
    
    initial begin
      
// testcase=1
      #4 transport=1;
      #4 bus=0;
      #4 train=0;
      
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
1 module and 0 UDP read.
recompiling module not_operator
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .466 seconds to compile + .418 seconds to elab + .410 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 31 08:47 2025
"design.sv", 20: not_operator.unnamed$$_0: started at 0ns failed at 0ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 0 ns
FAIL--> no operator not  found at=[0]
"design.sv", 20: not_operator.unnamed$$_0: started at 4ns failed at 4ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 4 ns
FAIL--> no operator not  found at=[4]
Info: "design.sv", 20: not_operator.unnamed$$_0: at time 8 ns
PASS--> not operator found at=[8]
Info: "design.sv", 20: not_operator.unnamed$$_0: at time 12 ns
PASS--> not operator found at=[12]
Info: "design.sv", 20: not_operator.unnamed$$_0: at time 16 ns
PASS--> not operator found at=[16]
"design.sv", 20: not_operator.unnamed$$_0: started at 20ns failed at 20ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 20 ns
FAIL--> no operator not  found at=[20]
"design.sv", 20: not_operator.unnamed$$_0: started at 24ns failed at 24ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 24 ns
FAIL--> no operator not  found at=[24]
"design.sv", 20: not_operator.unnamed$$_0: started at 28ns failed at 28ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 28 ns
FAIL--> no operator not  found at=[28]
"design.sv", 20: not_operator.unnamed$$_0: started at 32ns failed at 32ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 32 ns
FAIL--> no operator not  found at=[32]
"design.sv", 20: not_operator.unnamed$$_0: started at 36ns failed at 36ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 36 ns
FAIL--> no operator not  found at=[36]
"design.sv", 20: not_operator.unnamed$$_0: started at 40ns failed at 40ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 40 ns
FAIL--> no operator not  found at=[40]
"design.sv", 20: not_operator.unnamed$$_0: started at 44ns failed at 44ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 44 ns
FAIL--> no operator not  found at=[44]
"design.sv", 20: not_operator.unnamed$$_0: started at 48ns failed at 48ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 48 ns
FAIL--> no operator not  found at=[48]
"design.sv", 20: not_operator.unnamed$$_0: started at 52ns failed at 52ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 52 ns
FAIL--> no operator not  found at=[52]
"design.sv", 20: not_operator.unnamed$$_0: started at 56ns failed at 56ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 56 ns
FAIL--> no operator not  found at=[56]
"design.sv", 20: not_operator.unnamed$$_0: started at 60ns failed at 60ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 60 ns
FAIL--> no operator not  found at=[60]
"design.sv", 20: not_operator.unnamed$$_0: started at 64ns failed at 64ns
	Offending 'transport'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 64 ns
FAIL--> no operator not  found at=[64]
"design.sv", 20: not_operator.unnamed$$_0: started at 68ns failed at 68ns
	Offending '(!(bus && train))'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 68 ns
FAIL--> no operator not  found at=[68]
"design.sv", 20: not_operator.unnamed$$_0: started at 72ns failed at 72ns
	Offending '(!(bus && train))'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 72 ns
FAIL--> no operator not  found at=[72]
"design.sv", 20: not_operator.unnamed$$_0: started at 76ns failed at 76ns
	Offending '(!(bus && train))'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 76 ns
FAIL--> no operator not  found at=[76]
"design.sv", 20: not_operator.unnamed$$_0: started at 80ns failed at 80ns
	Offending '(!(bus && train))'
Warning: "design.sv", 20: not_operator.unnamed$$_0: at time 80 ns
FAIL--> no operator not  found at=[80]
$finish called from file "design.sv", line 58.
$finish at simulation time                   82
