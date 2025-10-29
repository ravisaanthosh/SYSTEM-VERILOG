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
    @(posedge clk) status |=> (a ##2 b);
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


    1 module and 0 UDP read.
recompiling module overlaping_implication
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _332_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .450 seconds to compile + .436 seconds to elab + .410 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 29 02:10 2025
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 35ns failed at 45ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 45 ns
[45],FAIL
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 45 ns
[45] PASS
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 45ns failed at 55ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 55 ns
[55],FAIL
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 55 ns
[55] PASS
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 75ns failed at 85ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 85 ns
[85],FAIL
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 55ns failed at 85ns
	Offending 'b'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 85 ns
[85],FAIL
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 85ns failed at 95ns
	Offending 'a'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 95 ns
[95],FAIL
"testbench.sv", 25: overlaping_implication.unnamed$$_1: started at 65ns failed at 95ns
	Offending 'b'
Info: "testbench.sv", 25: overlaping_implication.unnamed$$_1: at time 95 ns
[95],FAIL
$finish called from file "testbench.sv", line 18.
$finish at simulation time                  100
           V C S   S i m u l a t i o n   R e p o r t 
Time: 100 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Wed Oct 29 02:10:26 2025
Finding VCD file...
./file.vcd
