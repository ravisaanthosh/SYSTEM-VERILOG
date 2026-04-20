class ignore_bins_bins;
  
  rand bit [2:0]a;
  rand bit [2:0]b;
  constraint c1{a inside{[0:3]};}
  constraint c2 {b inside{[3:6]};}
 
  covergroup crg;
    e1:coverpoint a {ignore_bins value_1 ={1};}
    e2:coverpoint b {ignore_bins value_2 ={4};}
  endgroup
  
    function new();
    crg=new();
  endfunction
  


endclass

module tb;
  ignore_bins_bins ob;
  
  initial begin
    ob=new();
    repeat(10)begin
      ob.randomize();
      ob.crg.sample();
      $display("type of bin=[%0d],=[%0d],overall=[%0f]",ob.a,ob.b,ob.crg.get_coverage());
    end
  end
endmodule

run -all;
# KERNEL: type of bin=[3],=[6],overall=[14.285714]
# KERNEL: type of bin=[2],=[5],overall=[28.571429]
# KERNEL: type of bin=[1],=[5],overall=[28.571429]
# KERNEL: type of bin=[0],=[3],overall=[42.857143]
# KERNEL: type of bin=[1],=[4],overall=[42.857143]
# KERNEL: type of bin=[2],=[4],overall=[42.857143]
# KERNEL: type of bin=[0],=[5],overall=[42.857143]
# KERNEL: type of bin=[3],=[5],overall=[42.857143]
# KERNEL: type of bin=[1],=[3],overall=[42.857143]
# KERNEL: type of bin=[1],=[4],overall=[42.857143]
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
# | Host             | a0f71de3f63f             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-20 09:21         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-20 09:21         |
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
# | Cputime  | 0.013 s                         |
# | Seed     | 1                               |
# | Date     | 2026-04-20 09:21                |
# | User     | runner                          |
# | Host     | a0f71de3f63f                    |
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
# | Covergroup Coverage |      1 |    42.857% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 42.857%
# COVERED INSTANCES: 0 / 1
# FILES: 1
# 
# 
# CLASS - /ignore_bins_bins : work.ignore_bins_bins
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    42.857% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 42.857%
# 
# 
#     COVERGROUP COVERAGE
#     ===============================================================
#     |         Covergroup         |  Hits   |  Goal /  |  Status   |
#     |                            |         | At Least |           |
#     ===============================================================
#     | TYPE /ignore_bins_bins/crg | 42.857% | 100.000% | Uncovered |
#     ===============================================================
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
# | Covergroup Coverage |      1 |    42.857% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 42.857%
# COVERED DESIGN UNITS: 0 / 1
# FILES: 1
# 
# 
# CLASS - work.ignore_bins_bins
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    42.857% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 42.857%
# 
# 
#     COVERGROUP COVERAGE
#     ===============================================================
#     |         Covergroup         |  Hits   |  Goal /  |  Status   |
#     |                            |         | At Least |           |
#     ===============================================================
#     | TYPE /ignore_bins_bins/crg | 42.857% | 100.000% | Uncovered |
#     ===============================================================
# 
exit
# VSIM: Simulation has finished.
