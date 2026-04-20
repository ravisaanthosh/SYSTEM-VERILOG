class set_of_transition_bins;
  rand bit [2:0]a;
  rand bit [2:0]b;
  constraint c1{a inside{[0:3]};}
  constraint c2 {b inside{[3:6]};}
 
  covergroup crg;
    e1:coverpoint a{bins value_1 =(0,1=>2,3);} 
    e2:coverpoint b{bins value_2 =(3,4=>5,6);}
  endgroup
  
    function new();
    crg=new();
  endfunction
  


endclass

module tb;
  set_of_transition_bins ob;
  
  initial begin
    ob=new();
    repeat(25)begin
      ob.randomize();
      ob.crg.sample();
      $display("type of bin=[%0d],=[%0d],overall=[%0f]",ob.a,ob.b,ob.crg.get_coverage());
    end
  end
endmodule

run -all;
# KERNEL: type of bin=[3],=[6],overall=[0.000000]
# KERNEL: type of bin=[2],=[5],overall=[0.000000]
# KERNEL: type of bin=[1],=[5],overall=[0.000000]
# KERNEL: type of bin=[0],=[3],overall=[0.000000]
# KERNEL: type of bin=[1],=[4],overall=[0.000000]
# KERNEL: type of bin=[2],=[4],overall=[50.000000]
# KERNEL: type of bin=[0],=[5],overall=[100.000000]
# KERNEL: type of bin=[3],=[5],overall=[100.000000]
# KERNEL: type of bin=[1],=[3],overall=[100.000000]
# KERNEL: type of bin=[1],=[4],overall=[100.000000]
# KERNEL: type of bin=[0],=[6],overall=[100.000000]
# KERNEL: type of bin=[1],=[6],overall=[100.000000]
# KERNEL: type of bin=[1],=[3],overall=[100.000000]
# KERNEL: type of bin=[2],=[5],overall=[100.000000]
# KERNEL: type of bin=[1],=[5],overall=[100.000000]
# KERNEL: type of bin=[1],=[6],overall=[100.000000]
# KERNEL: type of bin=[3],=[4],overall=[100.000000]
# KERNEL: type of bin=[3],=[4],overall=[100.000000]
# KERNEL: type of bin=[2],=[3],overall=[100.000000]
# KERNEL: type of bin=[0],=[4],overall=[100.000000]
# KERNEL: type of bin=[2],=[4],overall=[100.000000]
# KERNEL: type of bin=[3],=[5],overall=[100.000000]
# KERNEL: type of bin=[0],=[6],overall=[100.000000]
# KERNEL: type of bin=[3],=[4],overall=[100.000000]
# KERNEL: type of bin=[1],=[5],overall=[100.000000]
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
acdb save;
acdb report -db fcover.acdb -txt -o cov.txt -verbose
# ACDB: Coverage report "cov.txt" was generated successfully.
exec cat cov.txt;
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++       REPORT INFO       ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# SUMMARY
# ===============================================
# |     Property     |          Value           |
# ===============================================
# | User             | runner                   |
# | Host             | 58f6525cd0d0             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-20 07:18         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-20 07:18         |
# | Number of tests  | 1                        |
# ===============================================
# 
# 
# TEST DETAILS
# ==============================================
# | Property |              Value              |
# ==============================================
# | Test     | fcover.acdb:fcover              |
# | Status   | Ok                              |
# | Args     | asim +access+r                  |
# | Simtime  | 0 ns                            |
# | Cputime  | 0.016 s                         |
# | Seed     | 1                               |
# | Date     | 2026-04-20 07:18                |
# | User     | runner                          |
# | Host     | 58f6525cd0d0                    |
# | Host os  | Linux64                         |
# | Tool     | Riviera-PRO 2025.04 (simulator) |
# ==============================================
# 
# 
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++     DESIGN HIERARCHY    ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# CUMULATIVE SUMMARY
# =============================================
# |    Coverage Type    | Weight | Hits/Total |
# =============================================
# | Covergroup Coverage |      1 |   100.000% |
# |---------------------|--------|------------|
# | Types               |        |      1 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 100.000%
# COVERED INSTANCES: 1 / 1
# FILES: 1
# 
# 
# CLASS - /set_of_transition_bins : work.set_of_transition_bins
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |   100.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      1 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 100.000%
# 
# 
#     COVERGROUP COVERAGE
#     ====================================================================
#     |            Covergroup            |   Hits   |  Goal /  | Status  |
#     |                                  |          | At Least |         |
#     ====================================================================
#     | TYPE /set_of_transition_bins/crg | 100.000% | 100.000% | Covered |
#     ====================================================================
# 
# 
# +++++++++++++++++++++++++++++++++++++++++++++
# ++++++++++       DESIGN UNITS      ++++++++++
# +++++++++++++++++++++++++++++++++++++++++++++
# 
# 
# CUMULATIVE SUMMARY
# =============================================
# |    Coverage Type    | Weight | Hits/Total |
# =============================================
# | Covergroup Coverage |      1 |   100.000% |
# |---------------------|--------|------------|
# | Types               |        |      1 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 100.000%
# COVERED DESIGN UNITS: 1 / 1
# FILES: 1
# 
# 
# CLASS - work.set_of_transition_bins
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |   100.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      1 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 100.000%
# 
# 
#     COVERGROUP COVERAGE
#     ====================================================================
#     |            Covergroup            |   Hits   |  Goal /  | Status  |
#     |                                  |          | At Least |         |
#     ====================================================================
#     | TYPE /set_of_transition_bins/crg | 100.000% | 100.000% | Covered |
#     ====================================================================
# 
exit
# VSIM: Simulation has finished.
