module range;
  bit transmiter;
  bit recevier;
  bit clk;
always #5 clk = ~clk;
  
  property p1;
    @(posedge clk) transmiter |-> ##2(recevier);
  endproperty
  
  assert property (p1)
    $info("time=[%0t]---->PASS",$time);
    else
      $warning("time=[%0t]---->FAIL",$time);
    
initial begin
  clk=1;
  transmiter=1;
  recevier=1;
  #50;
  $finish;
end
    initial begin
  $dumpfile("range.vcd");
  $dumpvars();
end
    endmodule

    Info: "design.sv", 11: range.unnamed$$_0: at time 30 ns
time=[30]---->PASS
Info: "design.sv", 11: range.unnamed$$_0: at time 40 ns
time=[40]---->PASS
$finish called from file "design.sv", line 21.
$finish at simulation time                   50
           V C S   S i m u l a t i o n   R e p o r t 
Time: 50 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Wed Oct 29 06:34:21 2025
Finding VCD file...
./range.vcd
