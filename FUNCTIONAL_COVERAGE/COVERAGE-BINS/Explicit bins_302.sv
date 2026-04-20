class explicit_bins;
  rand bit [2:0]a;
  rand bit [2:0]b;
 
  covergroup crg;
    e1:coverpoint a{bins low ={3,2};}
    e2:coverpoint b{bins high={0,6};}
  endgroup
  
    function new();
    crg=new();
  endfunction
  


endclass

module tb;
  explicit_bins ob;
  
  initial begin
    ob=new();
    repeat(7)begin
      ob.randomize();
      ob.crg.sample();
      $display("type of bin=[%0d],=[%0d],overall=[%0f]",ob.a,ob.b,ob.crg.get_coverage());
    end
  end
endmodule
run -all;
# KERNEL: type of bin=[6],=[5],overall=[0.000000]
# KERNEL: type of bin=[3],=[4],overall=[50.000000]
# KERNEL: type of bin=[7],=[5],overall=[50.000000]
# KERNEL: type of bin=[3],=[0],overall=[100.000000]
# KERNEL: type of bin=[7],=[0],overall=[100.000000]
# KERNEL: type of bin=[2],=[2],overall=[100.000000]
# KERNEL: type of bin=[3],=[5],overall=[100.000000]
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
# | Host             | ac2dcc61fddf             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-20 03:33         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-20 03:33         |
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
# | Cputime  | 0.008 s                         |
# | Seed     | 1                               |
# | Date     | 2026-04-20 03:33                |
# | User     | runner                          |
# | Host     | ac2dcc61fddf                    |
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
# CLASS - /explicit_bins : work.explicit_bins
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
#     ===========================================================
#     |       Covergroup        |   Hits   |  Goal /  | Status  |
#     |                         |          | At Least |         |
#     ===========================================================
#     | TYPE /explicit_bins/crg | 100.000% | 100.000% | Covered |
#     ===========================================================
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
# CLASS - work.explicit_bins
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
#     ===========================================================
#     |       Covergroup        |   Hits   |  Goal /  | Status  |
#     |                         |          | At Least |         |
#     ===========================================================
#     | TYPE /explicit_bins/crg | 100.000% | 100.000% | Covered |
#     ===========================================================
# 
exit
# VSIM: Simulation has finished
