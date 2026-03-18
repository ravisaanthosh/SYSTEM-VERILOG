module reject_on_example_292;
  bit clk;
  bit rst;
  bit x;
  bit y;
  
  initial clk=0;
  always #5 clk=~clk;
  property p1;
    @(posedge clk)
    reject_on(rst)
    x |-> y;
  endproperty
 
  assert property(p1)
    $display("PASS===> REJECT_ON time=[%0t]",$time);
    else
      $display("FAIL===> REJECT_ON not worked  time=[%0t]",$time);
     
    
    initial begin
      x=0; y=0;
      #5; x=1;
      #7; rst=1;
      #8; rst=0;
      #20 $finish;
     end
    endmodule

    # SLP: Generation phase ... done : 0.1 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 3 (75.00%) other processes in SLP
# SLP: 0 signals in SLP and 4 (66.67%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 5567 kB (elbread=427 elab2=5134 kernel=6 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: PASS===> REJECT_ON time=[5]
# KERNEL: FAIL===> REJECT_ON not worked  time=[15]
# KERNEL: FAIL===> REJECT_ON not worked  time=[25]
# KERNEL: FAIL===> REJECT_ON not worked  time=[35]
# RUNTIME: Info: RUNTIME_0068 testbench.sv (26): $finish called.
# KERNEL: Time: 40 ps,  Iteration: 0,  Instance: /reject_on_example_292,  Process: @INITIAL#21_2@.
# KERNEL: stopped at time: 40 ps
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
