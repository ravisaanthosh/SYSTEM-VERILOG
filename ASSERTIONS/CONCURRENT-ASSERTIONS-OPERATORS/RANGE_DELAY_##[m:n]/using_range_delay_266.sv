module range_delay;
  bit transmiter;
  bit recevier;
  bit clk;
always #5 clk = ~clk;
  
  property p1;
    @(posedge clk) transmiter |-> ##[2:5]recevier;
  endproperty
  
  assert property (p1)
    $info("time=[%0t]---->PASS",$time);
    else
      $warning("time=[%0t]---->FAIL",$time);
    
initial begin
  clk=1;
  transmiter=0;
  #10;transmiter=1;
  
  #10;recevier=1;
  #50;
  $finish;
end
    initial begin
  $dumpfile("range.vcd");
  $dumpvars();
end
    endmodule

    Info: "design.sv", 11: range.unnamed$$_0: at time 40 ns
time=[40]---->PASS
Info: "design.sv", 11: range.unnamed$$_0: at time 50 ns
time=[50]---->PASS
Info: "design.sv", 11: range.unnamed$$_0: at time 60 ns
time=[60]---->PASS
$finish called from file "design.sv", line 23.
$finish at simulation time                   70
           V C S   S i m u l a t i o n   R e p o r t 
Time: 70 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Wed Oct 29 06:43:43 2025
Finding VCD file...
