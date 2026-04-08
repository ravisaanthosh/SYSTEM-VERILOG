
class coverage_using_iff;
  randc bit [3:0]var_1;
  randc bit [2:0]var_2;
  randc bit [1:0]var_3;
  randc bit [2:0]var_4;
 
  constraint c1{var_2 inside {3,4};}
  constraint c2{var_1 inside {5,7,6};}
  constraint c3 {var_3 inside {1,2};}
  constraint c4 {var_4 inside {7,1,2};}
  
  covergroup coverr;
    c1:coverpoint var_1 iff (var_2==3){
    bins b1={5};
    bins b2={6};
      bins b3={7};}
  endgroup

  
  covergroup coverr_1;
    c2:coverpoint var_3 iff (var_4==7){
      bins b4={1};
      bins b5={2};
     }
  endgroup
  function new();
    coverr=new();
    coverr_1=new();
  endfunction
endclass

module tb;
  coverage_using_iff cc;
  initial begin
     cc=new();
    cc.coverr.start();
    cc.coverr_1.start();
    repeat(5)begin
      cc.randomize() ;
      cc.coverr.sample();
      cc.coverr_1.sample();
//display
  $display("var_1=%0d var_2=%0d | cov1=%.2f%%",cc.var_1, cc.var_2,cc.coverr.get_inst_coverage());
  $display("var_3=%0d var_4=%0d | cov2=%.2f%%",cc.var_3, cc.var_4,cc.coverr_1.get_inst_coverage());
//stop     
 if(cc.coverr.get_inst_coverage()>70)begin
        cc.coverr.stop();
        $display("cover-group-1 stopped (limit crossed>70%%)");
      end
      if(cc.coverr_1.get_inst_coverage()>70)begin
        cc.coverr_1.stop();
        $display("cover-group-1 stopped (limit crossed>70%%)");
      end
//start      
      if(cc.coverr.get_inst_coverage()<20)begin
        cc.coverr.start();
        $display("cover-group-1 stopped (limit crossed>70%%)");
      end
      if(cc.coverr_1.get_inst_coverage()<20)begin
        cc.coverr_1.start();
        $display("cover-group-1 stopped (limit crossed>70%%)");
      end
    end
    $finish; 
  end
endmodule

run -all;
# KERNEL: var_1=6 var_2=3 | cov1=33.33%
# KERNEL: var_3=1 var_4=2 | cov2=0.00%
# KERNEL: cover-group-1 stopped (limit crossed>70%)
# KERNEL: var_1=5 var_2=4 | cov1=33.33%
# KERNEL: var_3=2 var_4=1 | cov2=0.00%
# KERNEL: cover-group-1 stopped (limit crossed>70%)
# KERNEL: var_1=7 var_2=4 | cov1=33.33%
# KERNEL: var_3=1 var_4=7 | cov2=50.00%
# KERNEL: var_1=5 var_2=3 | cov1=66.67%
# KERNEL: var_3=2 var_4=1 | cov2=50.00%
# KERNEL: var_1=7 var_2=4 | cov1=66.67%
# KERNEL: var_3=1 var_4=2 | cov2=50.00%
# RUNTIME: Info: RUNTIME_0068 design.sv (64): $finish called.
# KERNEL: Time: 0 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#34_0@.
# KERNEL: stopped at time: 0 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
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
# | Host             | 46f96fa2e2cd             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-08 09:35         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-08 09:35         |
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
# | Date     | 2026-04-08 09:35                |
# | User     | runner                          |
# | Host     | 46f96fa2e2cd                    |
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
# | Covergroup Coverage |      1 |    58.333% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 2 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 58.333%
# COVERED INSTANCES: 0 / 1
# FILES: 1
# 
# 
# CLASS - /coverage_using_iff : work.coverage_using_iff
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    58.333% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 2 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 58.333%
# 
# 
#     COVERGROUP COVERAGE
#     ======================================================================
#     |            Covergroup             |  Hits   |  Goal /  |  Status   |
#     |                                   |         | At Least |           |
#     ======================================================================
#     | TYPE /coverage_using_iff/coverr   | 66.666% | 100.000% | Uncovered |
#     ======================================================================
#     | TYPE /coverage_using_iff/coverr_1 | 50.000% | 100.000% | Uncovered |
#     ======================================================================
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
# | Covergroup Coverage |      1 |    58.333% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 2 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 58.333%
# COVERED DESIGN UNITS: 0 / 1
# FILES: 1
# 
# 
# CLASS - work.coverage_using_iff
# 
# 
#     SUMMARY
#     =============================================
#     |    Coverage Type    | Weight | Hits/Total |
#     =============================================
#     | Covergroup Coverage |      1 |    58.333% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 2 |
#     =============================================
#     WEIGHTED AVERAGE: 58.333%
# 
# 
#     COVERGROUP COVERAGE
#     ======================================================================
#     |            Covergroup             |  Hits   |  Goal /  |  Status   |
#     |                                   |         | At Least |           |
#     ======================================================================
#     | TYPE /coverage_using_iff/coverr   | 66.666% | 100.000% | Uncovered |
#     ======================================================================
#     | TYPE /coverage_using_iff/coverr_1 | 50.000% | 100.000% | Uncovered |
#     ======================================================================
# 
exit
# VSIM: Simulation has finished.
