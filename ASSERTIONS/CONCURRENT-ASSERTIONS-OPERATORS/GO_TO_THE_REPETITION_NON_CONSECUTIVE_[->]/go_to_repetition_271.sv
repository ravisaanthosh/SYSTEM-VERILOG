module go_to_the_repetition_non_consecutive;
  bit transmiter;
  bit recevier;
  bit complete;
  bit clk;
always #5 clk = ~clk;
  initial clk=0;
  
  property p1;
    @(posedge clk) transmiter |-> ##2 recevier[->2] ##1 complete;
  endproperty
  
  assert property (p1)
    $info("time=[%0t]---->PASS",$time);
    else
      $warning("time=[%0t]---->FAIL",$time);
    
initial begin
      clk = 0;
    transmiter = 0;
    recevier = 0;
  complete=0;
    
 #10; transmiter=1;
  
  
  #10 recevier = 1; #10 recevier = 0;  
    #10 recevier = 1; #10 recevier = 1; 
  #10 complete=1;

  #10;
 #100; $finish;
end
    initial begin
  $dumpfile("range.vcd");
  $dumpvars();
end
    endmodule

    Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Top Level Modules:
       range_repetition_non_consecutive
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module range_repetition_non_consecutive
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .457 seconds to compile + .460 seconds to elab + .440 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 30 01:36 2025
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 65 ns
time=[65]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 65 ns
time=[65]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 75 ns
time=[75]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 85 ns
time=[85]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 95 ns
time=[95]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 105 ns
time=[105]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 115 ns
time=[115]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 125 ns
time=[125]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 135 ns
time=[135]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 145 ns
time=[145]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 155 ns
time=[155]---->PASS
Info: "design.sv", 13: range_repetition_non_consecutive.unnamed$$_0: at time 165 ns
time=[165]---->PASS
$finish called from file "design.sv", line 32.
$finish at simulation time                  170
           V C S   S i m u l a t i o n   R e p o r t 
Time: 170 ns
CPU Time:      0.490 seconds;       Data structure size:   0.0Mb
Thu Oct 30 01:36:44 2025
Finding VCD file...
./range.vcd
