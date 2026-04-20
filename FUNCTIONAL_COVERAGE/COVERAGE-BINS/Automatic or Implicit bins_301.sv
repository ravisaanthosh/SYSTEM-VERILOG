class automatic_or_implicit_bins;
  rand bit [2:0]a;
  rand bit [2:0]b;
  constraint c1{a inside {[0:2]};}
  constraint c2{b inside {[4:6]};}
  covergroup crg;
    e1:coverpoint a;
    e2:coverpoint b;
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
# KERNEL: type of bin=[1],=[6],overall=[12.500000]
# KERNEL: type of bin=[2],=[4],overall=[25.000000]
# KERNEL: type of bin=[1],=[5],overall=[31.250000]
# KERNEL: type of bin=[2],=[6],overall=[31.250000]
# KERNEL: type of bin=[0],=[4],overall=[37.500000]
# KERNEL: type of bin=[0],=[5],overall=[37.500000]
# KERNEL: type of bin=[2],=[5],overall=[37.500000]
# KERNEL: type of bin=[0],=[6],overall=[37.500000]
# KERNEL: type of bin=[1],=[6],overall=[37.500000]
# KERNEL: type of bin=[1],=[4],overall=[37.500000]
# KERNEL: type of bin=[2],=[6],overall=[37.500000]
# KERNEL: type of bin=[1],=[4],overall=[37.500000]
# KERNEL: type of bin=[1],=[4],overall=[37.500000]
# KERNEL: type of bin=[2],=[4],overall=[37.500000]
# KERNEL: type of bin=[0],=[6],overall=[37.500000]
# KERNEL: type of bin=[0],=[6],overall=[37.500000]
# KERNEL: type of bin=[0],=[4],overall=[37.500000]
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
# | Host             | 6e932f0eb09c             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-20 03:09         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-20 03:09         |
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
# | Cputime  | 0.014 s                         |
# | Seed     | 1                               |
# | Date     | 2026-04-20 03:09                |
# | User     | runner                          |
# | Host     | 6e932f0eb09c                    |
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
# | Covergroup Coverage |      1 |    37.500% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 37.500%
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
#     | Covergroup Coverage |      1 |    37.500% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 37.500%
# 
# 
#     COVERGROUP COVERAGE
#     =========================================================================
#     |              Covergroup              |  Hits   |  Goal /  |  Status   |
#     |                                      |         | At Least |           |
#     =========================================================================
#     | TYPE /automatic_or_implicit_bins/crg | 37.500% | 100.000% | Uncovered |
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
# | Covergroup Coverage |      1 |    37.500% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 37.500%
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
#     | Covergroup Coverage |      1 |    37.500% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 37.500%
# 
# 
#     COVERGROUP COVERAGE
#     =========================================================================
#     |              Covergroup              |  Hits   |  Goal /  |  Status   |
#     |                                      |         | At Least |           |
#     =========================================================================
#     | TYPE /automatic_or_implicit_bins/crg | 37.500% | 100.000% | Uncovered |
#     =========================================================================
# 
exit
# VSIM: Simulation has finished.
Done
