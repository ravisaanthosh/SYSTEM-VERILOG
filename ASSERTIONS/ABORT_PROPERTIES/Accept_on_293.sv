module accept_on_example_293;
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
    property p2;
    @(posedge clk)
    accept_on(rst)
    x |-> y;
  endproperty
 
  assert property(p1)
    $display("PASS===> REJECT_ON time=[%0t]",$time);
    else
      $display("FAIL===> REJECT_ON not worked  time=[%0t]",$time);
    assert property(p2)
      $display("PASS===> ACEEPT_ON time=[%0t]",$time);
    else
      $display("FAIL===> ACCEPT_ON not worked  time=[%0t]",$time);
     
     
    
    initial begin
      x=0; y=0;
      #5; x=1;
      #7; rst=1;
      #8; rst=0;
      #20 $finish;
     end
    endmodule


      # KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: PASS===> REJECT_ON time=[5]
# KERNEL: PASS===> ACEEPT_ON time=[5]
# KERNEL: FAIL===> REJECT_ON not worked  time=[15]
# KERNEL: PASS===> ACEEPT_ON time=[15]
# KERNEL: FAIL===> REJECT_ON not worked  time=[25]
# KERNEL: FAIL===> ACCEPT_ON not worked  time=[25]
# KERNEL: FAIL===> REJECT_ON not worked  time=[35]
# KERNEL: FAIL===> ACCEPT_ON not worked  time=[35]
# RUNTIME: Info: RUNTIME_0068 testbench.sv (36): $finish called.
# KERNEL: Time: 40 ps,  Iteration: 0,  Instance: /accept_on_example_293,  Process: @INITIAL#31_2@.
# KERNEL: stopped at time: 40 ps
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
