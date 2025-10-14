interface full_adder;
  logic clk;
  logic a;
  logic b;
  logic cin;
  logic sum;
  logic cout;
endinterface


module fa(full_adder f);
  assign f.sum=(f.a^f.b^f.cin);
  assign f.cout=(f.a & f.b & | f.cin & f.b | f.a & f.cin );
endmodule


module tb;
  full_adder f();
  fa dut (f);
  initial begin
    f.clk=0;
    forever #5 f.clk=~f.clk;
  end
  
  initial begin
//     repeat (8)begin
      f.a=$random;
      f.b=$random;
      f.cin=$random;
      #10;
      f.a=$random;
      f.b=$random;
      f.cin=$random;
#10;
      f.a=$random;
      f.b=$random;
      f.cin=$random;

#10;
     f.a=$random;
      f.b=$random;
      f.cin=$random;


//     end
  end
  
  sequence seq;
    @(posedge f.clk) (f.a==1 && f.b===1 && f.cin==1);
  endsequence
  
  
  property ppt;
    seq;
  endproperty
  
  
  
  assert property (ppt)
    $display("------>ASSERTION<----->PASS (<*_*>)A=[%0b],B=[%0b],CIN=[%0b],SUM=[%0b],COUT=[%0b]<--------PASS (<*_*>)",f.a,f.b,f.cin,f.sum,f.cout);
    else
      $error("------>ASSERTION<---->FAIL (<X_X>)A=[%0b],B=[%0b],CIN=[%0b],SUM=[%0b],COUT=[%0b]<--------FAIL (<X_X>)",f.a,f.b,f.cin,f.sum,f.cout);
    
    initial begin
      $dumpfile("fulladder.vcd");
      $dumpvars;
     #50; $finish;
    end
    endmodule






    
Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Top Level Modules:
       tb
TimeScale is 1 ns / 1 ns
Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...

2 modules and 0 UDP read.
recompiling module full_adder
recompiling module tb
Both modules done.
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .440 seconds to compile + .584 seconds to elab + .279 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 14 02:31 2025
"design.sv", 59: tb.unnamed$$_2: started at 5ns failed at 5ns
	Offending '(((tb.f.a == 1) && (tb.f.b === 1)) && (tb.f.cin == 1))'
Error: "design.sv", 59: tb.unnamed$$_2: at time 5 ns
------>ASSERTION<---->FAIL (<X_X>)A=[0],B=[1],CIN=[1],SUM=[0],COUT=[0]<--------FAIL (<X_X>)
  ------>ASSERTION<----->PASS (<*_*>)A=[1],B=[1],CIN=[1],SUM=[1],COUT=[1]<--------PASS (<*_*>)
"design.sv", 59: tb.unnamed$$_2: started at 25ns failed at 25ns
	Offending '(((tb.f.a == 1) && (tb.f.b === 1)) && (tb.f.cin == 1))'
Error: "design.sv", 59: tb.unnamed$$_2: at time 25 ns
------>ASSERTION<---->FAIL (<X_X>)A=[1],B=[0],CIN=[1],SUM=[0],COUT=[1]<--------FAIL (<X_X>)
"design.sv", 59: tb.unnamed$$_2: started at 35ns failed at 35ns
	Offending '(((tb.f.a == 1) && (tb.f.b === 1)) && (tb.f.cin == 1))'
Error: "design.sv", 59: tb.unnamed$$_2: at time 35 ns
------>ASSERTION<---->FAIL (<X_X>)A=[1],B=[0],CIN=[1],SUM=[0],COUT=[1]<--------FAIL (<X_X>)
"design.sv", 59: tb.unnamed$$_2: started at 45ns failed at 45ns
	Offending '(((tb.f.a == 1) && (tb.f.b === 1)) && (tb.f.cin == 1))'
Error: "design.sv", 59: tb.unnamed$$_2: at time 45 ns
------>ASSERTION<---->FAIL (<X_X>)A=[1],B=[0],CIN=[1],SUM=[0],COUT=[1]<--------FAIL (<X_X>)
$finish called from file "design.sv", line 67.
$finish at simulation time                   50
           V C S   S i m u l a t i o n   R e p o r t 
Time: 50 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Tue Oct 14 02:31:51 2025
Finding VCD file...
./fulladder.vcd
[2025-10-14 06:31:51 UTC] Opening EPWave...
Done
