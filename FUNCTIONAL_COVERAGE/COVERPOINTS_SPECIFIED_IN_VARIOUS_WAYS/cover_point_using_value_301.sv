class cover_point_using_value;
  randc bit [2:0]cycle;
  bit [1:0]cycle_1[2]='{2,1};
  covergroup cg;
    c1:coverpoint cycle;
  endgroup
  function new();
    cg=new();
  endfunction
endclass
module tb;
  cover_point_using_value cp;
  initial begin
    cp=new();
    foreach(cp.cycle_1[i])begin
      cp.cycle=cp.cycle_1[i];
    cp.randomize();
       cp.cg.sample();
      $display("cycle=[%0d],instant_coverage=[%0f]",cp.cycle,cp.cg.get_inst_coverage());
    end
    $display("finial coverage=[%0f]",cp.cg.get_coverage());
  end
endmodule
run -all;
# KERNEL: cycle=[1],instant_coverage=[12.500000]
# KERNEL: cycle=[7],instant_coverage=[25.000000]
# KERNEL: finial coverage=[25.000000]
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
# | Host             | 9d390087f514             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-09 02:41         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-09 02:41         |
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
# | Cputime  | 0.007 s                         |
# | Seed     | 1                               |
# | Date     | 2026-04-09 02:41                |
# | User     | runner                          |
# | Host     | 9d390087f514                    |
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
# | Covergroup Coverage |      1 |    25.000% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 25.000%
# COVERED INSTANCES: 0 / 1
# FILES: 1
# 
# 
# CLASS - /cover_point_using_value : work.cover_point_using_value
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    25.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 25.000%
# 
# 
#     COVERGROUP COVERAGE
#     =====================================================================
#     |            Covergroup            |  Hits   |  Goal /  |  Status   |
#     |                                  |         | At Least |           |
#     =====================================================================
#     | TYPE /cover_point_using_value/cg | 25.000% | 100.000% | Uncovered |
#     =====================================================================
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
# | Covergroup Coverage |      1 |    25.000% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 25.000%
# COVERED DESIGN UNITS: 0 / 1
# FILES: 1
# 
# 
# CLASS - work.cover_point_using_value
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    25.000% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 25.000%
# 
# 
#     COVERGROUP COVERAGE
#     =====================================================================
#     |            Covergroup            |  Hits   |  Goal /  |  Status   |
#     |                                  |         | At Least |           |
#     =====================================================================
#     | TYPE /cover_point_using_value/cg | 25.000% | 100.000% | Uncovered |
#     =====================================================================
# 
exit
# VSIM: Simulation has finished.
Done
