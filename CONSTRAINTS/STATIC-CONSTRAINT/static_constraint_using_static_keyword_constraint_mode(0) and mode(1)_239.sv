class static_constraint;
  rand bit[7:0]check_1;
  rand bit[7:0]check_2;
  
  static constraint c1 {check_1 inside{10,20,60};}
  static constraint c2 {check_2 inside{70,80,90};}
endclass


module tb;
  static_constraint s0,s1,s2,s3;
  initial begin
    s0=new();
    s1=new();
    s2=new();
    s3=new();
    
    
    repeat(5)begin
      s0.randomize();
      s1.randomize();
      s2.randomize();
      s3.randomize();
      $display("enable_c1");
      $display("s0,randomize()=[%0d],s1,randomize()=[%0d],s2,randomize()=[%0d],s3,randomize()=[%0d]",s0.check_1,s1.check_1,s2.check_1,s3.check_1);
      $display("enable_c2");
     $display("s0,randomize()=[%0d],s1,randomize()=[%0d],s2,randomize()=[%0d],s3,randomize()=[%0d]",s0.check_2,s1.check_2,s2.check_2,s3.check_2);
      
      s0.c1.constraint_mode(0);
      $display("disable for check_1 and check_2");
        $display("s0,randomize()=[%0d],s1,randomize()=[%0d],s2,randomize()=[%0d],s3,randomize()=[%0d]",s0.check_1,s1.check_1,s2.check_1,s3.check_1);
         $display("s0,randomize()=[%0d],s1,randomize()=[%0d],s2,randomize()=[%0d],s3,randomize()=[%0d]",s0.check_2,s1.check_2,s2.check_2,s3.check_2);
      s0.c2.constraint_mode(0);
      $display("disable for check_1 and check_2");
        $display("s0,randomize()=[%0d],s1,randomize()=[%0d],s2,randomize()=[%0d],s3,randomize()=[%0d]",s0.check_1,s1.check_1,s2.check_1,s3.check_1);
         $display("s0,randomize()=[%0d],s1,randomize()=[%0d],s2,randomize()=[%0d],s3,randomize()=[%0d]",s0.check_2,s1.check_2,s2.check_2,s3.check_2);
    end
  end
endmodule




Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Top Level Modules:
       tb
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module tb
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib -L/apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _331_archive_1.so   SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o            -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/U-2023.03-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .382 seconds to compile + .382 seconds to elab + .382 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  2 13:20 2025
enable_c1
s0,randomize()=[60],s1,randomize()=[20],s2,randomize()=[20],s3,randomize()=[10]
enable_c2
s0,randomize()=[80],s1,randomize()=[80],s2,randomize()=[80],s3,randomize()=[70]
disable for check_1 and check_2
s0,randomize()=[60],s1,randomize()=[20],s2,randomize()=[20],s3,randomize()=[10]
s0,randomize()=[80],s1,randomize()=[80],s2,randomize()=[80],s3,randomize()=[70]
disable for check_1 and check_2
s0,randomize()=[60],s1,randomize()=[20],s2,randomize()=[20],s3,randomize()=[10]
s0,randomize()=[80],s1,randomize()=[80],s2,randomize()=[80],s3,randomize()=[70]
enable_c1
s0,randomize()=[225],s1,randomize()=[148],s2,randomize()=[17],s3,randomize()=[165]
enable_c2
s0,randomize()=[63],s1,randomize()=[72],s2,randomize()=[216],s3,randomize()=[168]
disable for check_1 and check_2
s0,randomize()=[225],s1,randomize()=[148],s2,randomize()=[17],s3,randomize()=[165]
s0,randomize()=[63],s1,randomize()=[72],s2,randomize()=[216],s3,randomize()=[168]
disable for check_1 and check_2
s0,randomize()=[225],s1,randomize()=[148],s2,randomize()=[17],s3,randomize()=[165]
s0,randomize()=[63],s1,randomize()=[72],s2,randomize()=[216],s3,randomize()=[168]
enable_c1
s0,randomize()=[96],s1,randomize()=[38],s2,randomize()=[223],s3,randomize()=[147]
enable_c2
s0,randomize()=[129],s1,randomize()=[249],s2,randomize()=[175],s3,randomize()=[82]
disable for check_1 and check_2
s0,randomize()=[96],s1,randomize()=[38],s2,randomize()=[223],s3,randomize()=[147]
s0,randomize()=[129],s1,randomize()=[249],s2,randomize()=[175],s3,randomize()=[82]
disable for check_1 and check_2
s0,randomize()=[96],s1,randomize()=[38],s2,randomize()=[223],s3,randomize()=[147]
s0,randomize()=[129],s1,randomize()=[249],s2,randomize()=[175],s3,randomize()=[82]
enable_c1
s0,randomize()=[204],s1,randomize()=[105],s2,randomize()=[59],s3,randomize()=[164]
enable_c2
s0,randomize()=[169],s1,randomize()=[23],s2,randomize()=[0],s3,randomize()=[97]
disable for check_1 and check_2
s0,randomize()=[204],s1,randomize()=[105],s2,randomize()=[59],s3,randomize()=[164]
s0,randomize()=[169],s1,randomize()=[23],s2,randomize()=[0],s3,randomize()=[97]
disable for check_1 and check_2
s0,randomize()=[204],s1,randomize()=[105],s2,randomize()=[59],s3,randomize()=[164]
s0,randomize()=[169],s1,randomize()=[23],s2,randomize()=[0],s3,randomize()=[97]
enable_c1
s0,randomize()=[201],s1,randomize()=[204],s2,randomize()=[115],s3,randomize()=[241]
enable_c2
s0,randomize()=[103],s1,randomize()=[17],s2,randomize()=[150],s3,randomize()=[55]
disable for check_1 and check_2
s0,randomize()=[201],s1,randomize()=[204],s2,randomize()=[115],s3,randomize()=[241]
s0,randomize()=[103],s1,randomize()=[17],s2,randomize()=[150],s3,randomize()=[55]
disable for check_1 and check_2
s0,randomize()=[201],s1,randomize()=[204],s2,randomize()=[115],s3,randomize()=[241]
s0,randomize()=[103],s1,randomize()=[17],s2,randomize()=[150],s3,randomize()=[55]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Thu Oct  2 13:20:59 2025
