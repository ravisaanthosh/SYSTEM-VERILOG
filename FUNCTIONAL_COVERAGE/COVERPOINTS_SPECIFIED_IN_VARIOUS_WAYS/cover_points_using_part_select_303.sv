class cross_coverage_303;
  randc bit [4:0]cycle_1;
  randc bit [4:0]cycle_2;
  covergroup cg;
    l1:coverpoint cycle_1[2:1];
    l2:coverpoint cycle_2[3:2];
    endgroup
  function new();
    cg=new();
    endfunction
endclass
  module tb;
    cross_coverage_303 cs;
    
    initial begin
      cs=new();
      
     
      repeat(15)begin
        cs.randomize();
        cs.cg.sample();
        $display("cycle_1=[%0d],cycle_2=[%0d],inst_cross_coverage=[%0f]",cs.cycle_1,cs.cycle_2,cs.cg.get_inst_coverage());
      end
      $display("Final Coverage = %0f", cs.cg.get_coverage());
    end
  endmodule



run -all;
# KERNEL: cycle_1=[17],cycle_2=[24],inst_cross_coverage=[25.000000]
# KERNEL: cycle_1=[14],cycle_2=[5],inst_cross_coverage=[50.000000]
# KERNEL: cycle_1=[2],cycle_2=[0],inst_cross_coverage=[75.000000]
# KERNEL: cycle_1=[0],cycle_2=[31],inst_cross_coverage=[87.500000]
# KERNEL: cycle_1=[12],cycle_2=[12],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[20],cycle_2=[2],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[7],cycle_2=[19],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[25],cycle_2=[18],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[9],cycle_2=[8],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[5],cycle_2=[15],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[6],cycle_2=[26],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[18],cycle_2=[29],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[19],cycle_2=[30],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[1],cycle_2=[11],inst_cross_coverage=[100.000000]
# KERNEL: cycle_1=[10],cycle_2=[22],inst_cross_coverage=[100.000000]
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
# | Host             | 3ec256f9b375             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-09 03:17         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-09 03:17         |
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
# | Date     | 2026-04-09 03:17                |
# | User     | runner                          |
# | Host     | 3ec256f9b375                    |
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
# CLASS - /cross_coverage_303 : work.cross_coverage_303
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
#     | TYPE /cross_coverage_303/cg | 100.000% | 100.000% | Covered |
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
# CLASS - work.cross_coverage_303
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
#     | TYPE /cross_coverage_303/cg | 100.000% | 100.000% | Covered |
#     ===============================================================
# 
exit
# VSIM: Simulation has finished.
Done
