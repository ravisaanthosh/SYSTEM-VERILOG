//interface
interface andg;
  logic clk;
  logic a;
  logic b;
  logic out;
endinterface


//designcode
module gate (andg g);
  assign g.out=(g.a & g.b);
endmodule

//testbench
module tb;
  andg g();
  gate dut (g);
  
  initial begin
    g.clk=0;
    forever #5 g.clk=~g.clk;
  end
  initial begin
    repeat(8)begin
      g.a=$random; g.b=$random;
      #10;
    
    end
  end
    
  
  always@(posedge g.clk)begin
    repeat(8)begin
      
     assert(g.a==0 & g.b==0)
        $warning("FAIL : a=[%b],b=[%b],out=[%b]",g.a , g.b ,g.out);
    else assert(g.a==1 & g.b==0)
        $warning("FAIL : a=[%b],b=[%b],out=[%b]",g.a , g.b ,g.out);
     
    else assert(g.a==1 & g.b==1)
      $display("----->PASS<----- : a=[%b],b=[%b],out=[%b]",g.a , g.b ,g.out);
      
    else
      $warning("FAIL : a=[%b],b=[%b],out=[%b]",g.a , g.b ,g.out);
    end
  end
  initial begin
    $dumpfile("ANDGATE.vcd");
    $dumpvars;
    #50;$finish;
  end
endmodule




 Inclusivity & Diversity - Visit SolvNetPlus to read the "Synopsys Statement on
            Inclusivity and Diversity" (Refer to article 000036315 at
                        https://solvnetplus.synopsys.com)

Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Top Level Modules:
       tb
TimeScale is 1 ns / 1 ns
Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...

2 modules and 0 UDP read.
recompiling module andg
recompiling module tb
Both modules done.
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .377 seconds to compile + .516 seconds to elab + .237 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 13 07:58 2025
"testbench.sv", 35: tb.unnamed$$_0: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
"testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b1))'
Warning: "testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: at time 5 ns
unnamed$$_0.unnamed$$_1unnamed$$_0FAIL : a=[0],b=[1],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
"testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b1))'
Warning: "testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: at time 5 ns
unnamed$$_0.unnamed$$_1unnamed$$_0FAIL : a=[0],b=[1],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
"testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b1))'
Warning: "testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: at time 5 ns
unnamed$$_0.unnamed$$_1unnamed$$_0FAIL : a=[0],b=[1],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
"testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b1))'
Warning: "testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: at time 5 ns
unnamed$$_0.unnamed$$_1unnamed$$_0FAIL : a=[0],b=[1],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
"testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b1))'
Warning: "testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: at time 5 ns
unnamed$$_0.unnamed$$_1unnamed$$_0FAIL : a=[0],b=[1],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
"testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b1))'
Warning: "testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: at time 5 ns
unnamed$$_0.unnamed$$_1unnamed$$_0FAIL : a=[0],b=[1],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
"testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b1))'
Warning: "testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: at time 5 ns
unnamed$$_0.unnamed$$_1unnamed$$_0FAIL : a=[0],b=[1],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
"testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: started at 5ns failed at 5ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b1))'
Warning: "testbench.sv", 40: tb.unnamed$$_0.unnamed$$_1.unnamed$$_2: at time 5 ns
unnamed$$_0.unnamed$$_1unnamed$$_0FAIL : a=[0],b=[1],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 15ns failed at 15ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 25ns failed at 25ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 35ns failed at 35ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
Warning: "testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: at time 35 ns
unnamed$$_0FAIL : a=[1],b=[0],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 35ns failed at 35ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
Warning: "testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: at time 35 ns
unnamed$$_0FAIL : a=[1],b=[0],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 35ns failed at 35ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
Warning: "testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: at time 35 ns
unnamed$$_0FAIL : a=[1],b=[0],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 35ns failed at 35ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
Warning: "testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: at time 35 ns
unnamed$$_0FAIL : a=[1],b=[0],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 35ns failed at 35ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
Warning: "testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: at time 35 ns
unnamed$$_0FAIL : a=[1],b=[0],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 35ns failed at 35ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
Warning: "testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: at time 35 ns
unnamed$$_0FAIL : a=[1],b=[0],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 35ns failed at 35ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
Warning: "testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: at time 35 ns
unnamed$$_0FAIL : a=[1],b=[0],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 35ns failed at 35ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
Warning: "testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: at time 35 ns
unnamed$$_0FAIL : a=[1],b=[0],out=[0]
"testbench.sv", 35: tb.unnamed$$_0: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
"testbench.sv", 35: tb.unnamed$$_0: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b0) & (tb.g.b == 1'b0))'
"testbench.sv", 37: tb.unnamed$$_0.unnamed$$_1: started at 45ns failed at 45ns
	Offending '((tb.g.a == 1'b1) & (tb.g.b == 1'b0))'
----->PASS<----- : a=[1],b=[1],out=[1]
$finish called from file "testbench.sv", line 50.
$finish at simulation time                   50
           V C S   S i m u l a t i o n   R e p o r t 
Time: 50 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Mon Oct 13 07:58:18 2025
Finding VCD file...
./ANDGATE.vcd
[2025-10-13 11:58:18 UTC] Opening EPWave...
Done
