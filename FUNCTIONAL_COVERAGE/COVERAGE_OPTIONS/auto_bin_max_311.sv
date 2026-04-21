class automatic_or_implicit_bins;
  rand bit [2:0]a;
  rand bit [2:0]b;
  constraint c1{a inside {[0:2]};}
  constraint c2{b inside {[4:6]};}
  covergroup crg;
    e1:coverpoint a;
    e2:coverpoint b;
    option.auto_bin_max=3;
  endgroup
  
    function new();
    crg=new();
  endfunction
  


endclass

module tb;
  automatic_or_implicit_bins ob;
  
  initial begin
    ob=new();
    repeat(17)begin
      ob.randomize();
      ob.crg.sample();
      $display("type of bin=[%0d],=[%0d],overall=[%0f]",ob.a,ob.b,ob.crg.get_inst_coverage());
    end
  end
endmodule
run -all;
# KERNEL: type of bin=[1],=[6],overall=[33.333333]
# KERNEL: type of bin=[2],=[4],overall=[50.000000]
# KERNEL: type of bin=[1],=[5],overall=[50.000000]
# KERNEL: type of bin=[2],=[6],overall=[50.000000]
# KERNEL: type of bin=[0],=[4],overall=[50.000000]
# KERNEL: type of bin=[0],=[5],overall=[50.000000]
# KERNEL: type of bin=[2],=[5],overall=[50.000000]
# KERNEL: type of bin=[0],=[6],overall=[50.000000]
# KERNEL: type of bin=[1],=[6],overall=[50.000000]
# KERNEL: type of bin=[1],=[4],overall=[50.000000]
# KERNEL: type of bin=[2],=[6],overall=[50.000000]
# KERNEL: type of bin=[1],=[4],overall=[50.000000]
# KERNEL: type of bin=[1],=[4],overall=[50.000000]
# KERNEL: type of bin=[2],=[4],overall=[50.000000]
# KERNEL: type of bin=[0],=[6],overall=[50.000000]
# KERNEL: type of bin=[0],=[6],overall=[50.000000]
# KERNEL: type of bin=[0],=[4],overall=[50.000000]
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
# | Host             | 7b007c0dbbc3             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-21 03:15         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-21 03:15         |
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
# | Date     | 2026-04-21 03:15                |
# | User     | runner                          |
# | Host     | 7b007c0dbbc3                    |
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
# | Covergroup Coverage |      1 |    50.000% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 50.000%
# COVERED INSTANCES: 0 / 1
# FILES: 1
# 
# 
# CLASS - /automatic_or_implicit_bins : work.automatic_or_implicit_bins
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    50.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 50.000%
# 
# 
#     COVERGROUP COVERAGE
#     =========================================================================
#     |              Covergroup              |  Hits   |  Goal /  |  Status   |
#     |                                      |         | At Least |           |
#     =========================================================================
#     | TYPE /automatic_or_implicit_bins/crg | 50.000% | 100.000% | Uncovered |
#     =========================================================================
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
# | Covergroup Coverage |      1 |    50.000% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 50.000%
# COVERED DESIGN UNITS: 0 / 1
# FILES: 1
# 
# 
# CLASS - work.automatic_or_implicit_bins
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    50.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 50.000%
# 
# 
#     COVERGROUP COVERAGE
#     =========================================================================
#     |              Covergroup              |  Hits   |  Goal /  |  Status   |
#     |                                      |         | At Least |           |
#     =========================================================================
#     | TYPE /automatic_or_implicit_bins/crg | 50.000% | 100.000% | Uncovered |
#     =========================================================================
# 
exit
# VSIM: Simulation has finished.
