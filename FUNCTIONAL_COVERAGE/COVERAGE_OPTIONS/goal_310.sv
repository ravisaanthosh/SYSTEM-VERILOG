class automatic_or_implicit_bins;
  rand bit [2:0]a;
  rand bit [2:0]b;
//   constraint c1{a inside {[0:2]};}
//   constraint c2{b inside {[4:6]};}
  covergroup crg;
    e1:coverpoint a;
    e2:coverpoint b;
    option.goal=90;
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

# Aldec, Inc. Riviera-PRO version 2025.04.139.9738 built for Linux64 on May 30, 2025.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2025 Aldec, Inc. All rights reserved.
vsim +access+r;
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... skipped, nothing to simulate in SLP mode : 0.0 [s]
# SLP: Finished : 0.0 [s]
# ELAB2: Elaboration final pass complete - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4641 kB (elbread=467 elab2=4158 kernel=15 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
run -all;
# KERNEL: type of bin=[6],=[5],overall=[12.500000]
# KERNEL: type of bin=[3],=[4],overall=[25.000000]
# KERNEL: type of bin=[7],=[5],overall=[31.250000]
# KERNEL: type of bin=[3],=[0],overall=[37.500000]
# KERNEL: type of bin=[7],=[0],overall=[37.500000]
# KERNEL: type of bin=[2],=[2],overall=[50.000000]
# KERNEL: type of bin=[3],=[5],overall=[50.000000]
# KERNEL: type of bin=[5],=[4],overall=[56.250000]
# KERNEL: type of bin=[1],=[1],overall=[68.750000]
# KERNEL: type of bin=[1],=[3],overall=[75.000000]
# KERNEL: type of bin=[7],=[3],overall=[75.000000]
# KERNEL: type of bin=[1],=[3],overall=[75.000000]
# KERNEL: type of bin=[7],=[6],overall=[81.250000]
# KERNEL: type of bin=[3],=[0],overall=[81.250000]
# KERNEL: type of bin=[0],=[5],overall=[87.500000]
# KERNEL: type of bin=[6],=[2],overall=[87.500000]
# KERNEL: type of bin=[6],=[2],overall=[87.500000]
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
# | Host             | c59a2e90bf96             |
# | Tool             | Riviera-PRO 2025.04      |
# | Report file      | /home/runner/cov.txt     |
# | Report date      | 2026-04-21 03:11         |
# | Report arguments | -verbose                 |
# | Input file       | /home/runner/fcover.acdb |
# | Input file date  | 2026-04-21 03:11         |
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
# | Date     | 2026-04-21 03:11                |
# | User     | runner                          |
# | Host     | c59a2e90bf96                    |
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
# | Covergroup Coverage |      1 |    87.500% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE INSTANCE-BASED COVERAGE: 87.500%
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
#     | Covergroup Coverage |      1 |    87.500% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE LOCAL: 87.500%
# 
# 
#     COVERGROUP COVERAGE
#     =========================================================================
#     |              Covergroup              |  Hits   |  Goal /  |  Status   |
#     |                                      |         | At Least |           |
#     =========================================================================
#     | TYPE /automatic_or_implicit_bins/crg | 87.500% | 100.000% | Uncovered |
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
# | Covergroup Coverage |      1 |    87.500% |
# |---------------------|--------|------------|
# | Types               |        |      0 / 1 |
# =============================================
# CUMULATIVE DESIGN-BASED COVERAGE: 87.500%
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
#     | Covergroup Coverage |      1 |    87.500% |
#     |---------------------|--------|------------|
#     | Types               |        |      0 / 1 |
#     =============================================
#     WEIGHTED AVERAGE: 87.500%
# 
# 
#     COVERGROUP COVERAGE
#     =========================================================================
#     |              Covergroup              |  Hits   |  Goal /  |  Status   |
#     |                                      |         | At Least |           |
#     =========================================================================
#     | TYPE /automatic_or_implicit_bins/crg | 87.500% | 100.000% | Uncovered |
#     =========================================================================
# 
exit
# VSIM: Simulation has finished.
