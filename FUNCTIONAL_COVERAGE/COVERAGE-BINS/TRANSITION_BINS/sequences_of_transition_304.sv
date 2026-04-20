class transition_using_single_value_bins;
  rand bit [2:0]a;
  rand bit [2:0]b;
  constraint c1{a inside{[1:3]};}
  constraint c2 {b inside{[4:6]};}
 
  covergroup crg;
    e1:coverpoint a{bins value_1 =(1=>2=>3);} //(previous 2 values)+current values =pass//
    e2:coverpoint b{bins value_2 =(4=>5=>6);}
  endgroup
  
    function new();
    crg=new();
  endfunction
  


endclass

module tb;
  transition_using_single_value_bins ob;
  
  initial begin
    ob=new();
    repeat(25)begin
      ob.randomize();
      ob.crg.sample();
      $display("type of bin=[%0d],=[%0d],overall=[%0f]",ob.a,ob.b,ob.crg.get_coverage());
    end
  end
endmodule

# KERNEL: type of bin=[1],=[6],overall=[0.000000]
# KERNEL: type of bin=[3],=[4],overall=[0.000000]
# KERNEL: type of bin=[1],=[5],overall=[0.000000]
# KERNEL: type of bin=[2],=[6],overall=[50.000000]
# KERNEL: type of bin=[1],=[4],overall=[50.000000]
# KERNEL: type of bin=[2],=[5],overall=[50.000000]
# KERNEL: type of bin=[2],=[5],overall=[50.000000]
# KERNEL: type of bin=[2],=[6],overall=[50.000000]
# KERNEL: type of bin=[3],=[6],overall=[50.000000]
# KERNEL: type of bin=[1],=[4],overall=[50.000000]
# KERNEL: type of bin=[3],=[6],overall=[50.000000]
# KERNEL: type of bin=[1],=[4],overall=[50.000000]
# KERNEL: type of bin=[1],=[4],overall=[50.000000]
# KERNEL: type of bin=[3],=[4],overall=[50.000000]
# KERNEL: type of bin=[1],=[6],overall=[50.000000]
# KERNEL: type of bin=[1],=[6],overall=[50.000000]
# KERNEL: type of bin=[2],=[4],overall=[50.000000]
# KERNEL: type of bin=[1],=[4],overall=[50.000000]
# KERNEL: type of bin=[1],=[6],overall=[50.000000]
# KERNEL: type of bin=[2],=[5],overall=[50.000000]
# KERNEL: type of bin=[1],=[6],overall=[50.000000]
# KERNEL: type of bin=[1],=[5],overall=[50.000000]
# KERNEL: type of bin=[1],=[5],overall=[50.000000]
# KERNEL: type of bin=[2],=[4],overall=[50.000000]
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
# | Host             | 4cd110ead22d             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-20 07:05         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-20 07:05         |
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
# | Cputime  | 0.020 s                         |
# | Seed     | 1                               |
# | Date     | 2026-04-20 07:05                |
# | User     | runner                          |
# | Host     | 4cd110ead22d                    |
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
# CLASS - /transition_using_single_value_bins : work.transition_using_single_value_bins
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
#     ================================================================================
#     |                  Covergroup                  |   Hits   |  Goal /  | Status  |
#     |                                              |          | At Least |         |
#     ================================================================================
#     | TYPE /transition_using_single_value_bins/crg | 100.000% | 100.000% | Covered |
#     ================================================================================
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
# CLASS - work.transition_using_single_value_bins
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
#     ================================================================================
#     |                  Covergroup                  |   Hits   |  Goal /  | Status  |
#     |                                              |          | At Least |         |
#     ================================================================================
#     | TYPE /transition_using_single_value_bins/crg | 100.000% | 100.000% | Covered |
#     ================================================================================
# 
exit
# VSIM: Simulation has finished.
Done
