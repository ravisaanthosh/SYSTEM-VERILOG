module within_operator;
  bit clk;
  bit transport;
  bit bus;
  bit train;
  
always #2 clk=~clk;
  initial clk=1;
  
sequence s1;
  (transport throughout  (bus within train));
endsequence
  
  
  property p1;
    @(posedge clk)
    first_match (s1);
  endproperty
  
  assert property (p1)
    $info("PASS--> first match found at=[%0t]",$time);
    else
      $warning("FAIL--> no first match found at=[%0t]",$time);
    
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


    recompiling module and_operator
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .432 seconds to compile + .445 seconds to elab + .361 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 31 02:59 2025
"design.sv", 20: and_operator.unnamed$$_0: started at 0ns failed at 0ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 0 ns
FAIL--> no first match found at=[0]
"design.sv", 20: and_operator.unnamed$$_0: started at 4ns failed at 4ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 4 ns
FAIL--> no first match found at=[4]
"design.sv", 20: and_operator.unnamed$$_0: started at 8ns failed at 8ns
	Offending 'bus'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 8 ns
FAIL--> no first match found at=[8]
"design.sv", 20: and_operator.unnamed$$_0: started at 12ns failed at 12ns
	Offending 'bus'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 12 ns
FAIL--> no first match found at=[12]
"design.sv", 20: and_operator.unnamed$$_0: started at 16ns failed at 16ns
	Offending 'bus'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 16 ns
FAIL--> no first match found at=[16]
"design.sv", 20: and_operator.unnamed$$_0: started at 20ns failed at 20ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 20 ns
FAIL--> no first match found at=[20]
"design.sv", 20: and_operator.unnamed$$_0: started at 24ns failed at 24ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 24 ns
FAIL--> no first match found at=[24]
"design.sv", 20: and_operator.unnamed$$_0: started at 28ns failed at 28ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 28 ns
FAIL--> no first match found at=[28]
"design.sv", 20: and_operator.unnamed$$_0: started at 32ns failed at 32ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 32 ns
FAIL--> no first match found at=[32]
"design.sv", 20: and_operator.unnamed$$_0: started at 36ns failed at 36ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 36 ns
FAIL--> no first match found at=[36]
"design.sv", 20: and_operator.unnamed$$_0: started at 40ns failed at 40ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 40 ns
FAIL--> no first match found at=[40]
"design.sv", 20: and_operator.unnamed$$_0: started at 44ns failed at 44ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 44 ns
FAIL--> no first match found at=[44]
"design.sv", 20: and_operator.unnamed$$_0: started at 48ns failed at 48ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 48 ns
FAIL--> no first match found at=[48]
"design.sv", 20: and_operator.unnamed$$_0: started at 52ns failed at 52ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 52 ns
FAIL--> no first match found at=[52]
"design.sv", 20: and_operator.unnamed$$_0: started at 56ns failed at 56ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 56 ns
FAIL--> no first match found at=[56]
"design.sv", 20: and_operator.unnamed$$_0: started at 60ns failed at 60ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 60 ns
FAIL--> no first match found at=[60]
"design.sv", 20: and_operator.unnamed$$_0: started at 64ns failed at 64ns
	Offending 'transport'
Warning: "design.sv", 20: and_operator.unnamed$$_0: at time 64 ns
FAIL--> no first match found at=[64]
Info: "design.sv", 20: and_operator.unnamed$$_0: at time 68 ns
PASS--> first match found at=[68]
Info: "design.sv", 20: and_operator.unnamed$$_0: at time 72 ns
PASS--> first match found at=[72]
Info: "design.sv", 20: and_operator.unnamed$$_0: at time 76 ns
PASS--> first match found at=[76]
Info: "design.sv", 20: and_operator.unnamed$$_0: at time 80 ns
PASS--> first match found at=[80]
$finish called from file "design.sv", line 58.
$finish at simulation time                   82
           V C S   S i m u l a t i o n   R e p o r t 
Time: 82 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Fri Oct 31 02:59:52 2025
Finding VCD file...
./out.vcd
