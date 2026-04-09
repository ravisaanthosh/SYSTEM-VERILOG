class cross_coverage_300;
  randc bit [1:0]cycle_1;
  randc bit [1:0]cycle_2;
  covergroup cg;
    l1:coverpoint cycle_1;
    l2:coverpoint cycle_2;
    l3:cross l1,l2;
    
     endgroup
  function new();
    cg=new();
    endfunction
endclass
  module tb;
    cross_coverage_300 cs;
    
    initial begin
      cs=new();
      
     
      repeat(35)begin
        cs.randomize();
        cs.cg.sample();
        $display("cycle_1=[%0b],cycle_2=[%0b],cross_coverage=[%0f]",cs.cycle_1,cs.cycle_2,cs.cg.get_inst_coverage());
      end
      $display("Final Coverage = %0f", cs.cg.get_coverage());
    end
  endmodule
# KERNEL: cycle_1=[1],cycle_2=[0],cross_coverage=[18.750000]
# KERNEL: cycle_1=[11],cycle_2=[10],cross_coverage=[37.500000]
# KERNEL: cycle_1=[0],cycle_2=[1],cross_coverage=[56.250000]
# KERNEL: cycle_1=[10],cycle_2=[11],cross_coverage=[75.000000]
# KERNEL: cycle_1=[10],cycle_2=[10],cross_coverage=[77.083333]
# KERNEL: cycle_1=[0],cycle_2=[0],cross_coverage=[79.166667]
# KERNEL: cycle_1=[11],cycle_2=[11],cross_coverage=[81.250000]
# KERNEL: cycle_1=[1],cycle_2=[1],cross_coverage=[83.333333]
# KERNEL: cycle_1=[10],cycle_2=[1],cross_coverage=[85.416667]
# KERNEL: cycle_1=[11],cycle_2=[11],cross_coverage=[85.416667]
# KERNEL: cycle_1=[1],cycle_2=[10],cross_coverage=[87.500000]
# KERNEL: cycle_1=[0],cycle_2=[0],cross_coverage=[87.500000]
# KERNEL: cycle_1=[1],cycle_2=[11],cross_coverage=[89.583333]
# KERNEL: cycle_1=[0],cycle_2=[0],cross_coverage=[89.583333]
# KERNEL: cycle_1=[11],cycle_2=[10],cross_coverage=[89.583333]
# KERNEL: cycle_1=[10],cycle_2=[1],cross_coverage=[89.583333]
# KERNEL: cycle_1=[11],cycle_2=[0],cross_coverage=[91.666667]
# KERNEL: cycle_1=[1],cycle_2=[11],cross_coverage=[91.666667]
# KERNEL: cycle_1=[0],cycle_2=[10],cross_coverage=[93.750000]
# KERNEL: cycle_1=[10],cycle_2=[1],cross_coverage=[93.750000]
# KERNEL: cycle_1=[1],cycle_2=[1],cross_coverage=[93.750000]
# KERNEL: cycle_1=[11],cycle_2=[0],cross_coverage=[93.750000]
# KERNEL: cycle_1=[0],cycle_2=[11],cross_coverage=[95.833333]
# KERNEL: cycle_1=[10],cycle_2=[10],cross_coverage=[95.833333]
# KERNEL: cycle_1=[1],cycle_2=[1],cross_coverage=[95.833333]
# KERNEL: cycle_1=[10],cycle_2=[0],cross_coverage=[97.916667]
# KERNEL: cycle_1=[11],cycle_2=[10],cross_coverage=[97.916667]
# KERNEL: cycle_1=[0],cycle_2=[11],cross_coverage=[97.916667]
# KERNEL: cycle_1=[10],cycle_2=[1],cross_coverage=[97.916667]
# KERNEL: cycle_1=[1],cycle_2=[0],cross_coverage=[97.916667]
# KERNEL: cycle_1=[11],cycle_2=[11],cross_coverage=[97.916667]
# KERNEL: cycle_1=[0],cycle_2=[10],cross_coverage=[97.916667]
# KERNEL: cycle_1=[11],cycle_2=[1],cross_coverage=[100.000000]
# KERNEL: cycle_1=[0],cycle_2=[0],cross_coverage=[100.000000]
# KERNEL: cycle_1=[1],cycle_2=[11],cross_coverage=[100.000000]
# KERNEL: Final Coverage = 100.000000
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
# | Host             | 381221fd1ab3             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-09 01:45         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-09 01:45         |
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
# | Date     | 2026-04-09 01:45                |
# | User     | runner                          |
# | Host     | 381221fd1ab3                    |
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
# CLASS - /cross_coverage_300 : work.cross_coverage_300
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
#     ===============================================================
#     |         Covergroup          |   Hits   |  Goal /  | Status  |
#     |                             |          | At Least |         |
#     ===============================================================
#     | TYPE /cross_coverage_300/cg | 100.000% | 100.000% | Covered |
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
# | Covergroup Coverage |      1 |   100.000% |
# |---------------------|--------|------------|
# | Types               |        |      1 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 100.000%
# COVERED DESIGN UNITS: 1 / 1
# FILES: 1
# 
# 
# CLASS - work.cross_coverage_300
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
#     ===============================================================
#     |         Covergroup          |   Hits   |  Goal /  | Status  |
#     |                             |          | At Least |         |
#     ===============================================================
#     | TYPE /cross_coverage_300/cg | 100.000% | 100.000% | Covered |
#     ===============================================================
# 
exit
# VSIM: Simulation has finished.
