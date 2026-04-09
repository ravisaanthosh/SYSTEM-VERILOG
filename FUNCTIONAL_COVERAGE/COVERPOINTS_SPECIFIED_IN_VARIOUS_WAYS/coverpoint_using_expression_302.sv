class cross_coverage_302;
  randc bit [3:0]cycle_1;
  randc bit [8:0]cycle_2;
  covergroup cg;
    l1:coverpoint cycle_1;
    l2:coverpoint cycle_2;
    l4:coverpoint cycle_1 + cycle_2;
    l3:cross l1,l2,l4;
    
     endgroup
  function new();
    cg=new();
    endfunction
endclass
  module tb;
    cross_coverage_302 cs;
    
    initial begin
      cs=new();
      
     
      repeat(15)begin
        cs.randomize();
        cs.cg.sample();
        $display("cycle_1=[%0d],cycle_2=[%0d],cycle_1 + cycle_2=[%0d].cross_coverage=[%0f]",cs.cycle_1,cs.cycle_2,cs.cycle_1+cs.cycle_2,cs.cg.get_inst_coverage());
      end
      $display("Final Coverage = %0f", cs.cg.get_coverage());
    end
  endmodule

run -all;
# KERNEL: cycle_1=[1],cycle_2=[312],cycle_1 + cycle_2=[313].cross_coverage=[2.344131]
# KERNEL: cycle_1=[15],cycle_2=[358],cycle_1 + cycle_2=[373].cross_coverage=[4.688263]
# KERNEL: cycle_1=[3],cycle_2=[128],cycle_1 + cycle_2=[131].cross_coverage=[7.032394]
# KERNEL: cycle_1=[0],cycle_2=[157],cycle_1 + cycle_2=[157].cross_coverage=[9.376526]
# KERNEL: cycle_1=[13],cycle_2=[204],cycle_1 + cycle_2=[217].cross_coverage=[11.720657]
# KERNEL: cycle_1=[7],cycle_2=[28],cycle_1 + cycle_2=[35].cross_coverage=[14.064789]
# KERNEL: cycle_1=[9],cycle_2=[405],cycle_1 + cycle_2=[414].cross_coverage=[16.408920]
# KERNEL: cycle_1=[5],cycle_2=[437],cycle_1 + cycle_2=[442].cross_coverage=[18.753052]
# KERNEL: cycle_1=[12],cycle_2=[330],cycle_1 + cycle_2=[342].cross_coverage=[21.097183]
# KERNEL: cycle_1=[8],cycle_2=[206],cycle_1 + cycle_2=[214].cross_coverage=[23.050690]
# KERNEL: cycle_1=[10],cycle_2=[377],cycle_1 + cycle_2=[387].cross_coverage=[25.394821]
# KERNEL: cycle_1=[14],cycle_2=[84],cycle_1 + cycle_2=[98].cross_coverage=[27.738953]
# KERNEL: cycle_1=[4],cycle_2=[150],cycle_1 + cycle_2=[154].cross_coverage=[29.692459]
# KERNEL: cycle_1=[2],cycle_2=[7],cycle_1 + cycle_2=[9].cross_coverage=[32.036591]
# KERNEL: cycle_1=[11],cycle_2=[112],cycle_1 + cycle_2=[123].cross_coverage=[34.380722]
# KERNEL: Final Coverage = 34.380722
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
# | Host             | 0fcd3ee63288             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-09 02:55         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-09 02:55         |
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
# | Date     | 2026-04-09 02:55                |
# | User     | runner                          |
# | Host     | 0fcd3ee63288                    |
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
# | Covergroup Coverage |      1 |    34.380% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 34.380%
# COVERED INSTANCES: 0 / 1
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
#     | Covergroup Coverage |      1 |    34.380% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 34.380%
# 
# 
#     COVERGROUP COVERAGE
#     ================================================================
#     |         Covergroup          |  Hits   |  Goal /  |  Status   |
#     |                             |         | At Least |           |
#     ================================================================
#     | TYPE /cross_coverage_300/cg | 34.380% | 100.000% | Uncovered |
#     ================================================================
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
# | Covergroup Coverage |      1 |    34.380% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 34.380%
# COVERED DESIGN UNITS: 0 / 1
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
#     | Covergroup Coverage |      1 |    34.380% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 34.380%
# 
# 
#     COVERGROUP COVERAGE
#     ================================================================
#     |         Covergroup          |  Hits   |  Goal /  |  Status   |
#     |                             |         | At Least |           |
#     ================================================================
#     | TYPE /cross_coverage_300/cg | 34.380% | 100.000% | Uncovered |
#     ================================================================
# 
exit
# VSIM: Simulation has finished
