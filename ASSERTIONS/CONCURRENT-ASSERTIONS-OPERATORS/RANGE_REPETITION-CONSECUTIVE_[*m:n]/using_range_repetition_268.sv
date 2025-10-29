module repetition_range;
  bit transmiter;
  bit recevier;
  bit clk;
always #5 clk = ~clk;
  
  property p1;
    @(posedge clk) transmiter |-> ##1 (recevier)[*2:3];
  endproperty
  
  assert property (p1)
    $info("time=[%0t]---->PASS",$time);
    else
      $warning("time=[%0t]---->FAIL",$time);
    
initial begin
      clk = 1;
    transmiter = 0;
    recevier = 0;
    
 #10; transmiter=1;
  #10;transmiter=0;
  #10; recevier=1;
  #10; recevier=1;
  
  #10;transmiter=1;
   #10; recevier=1;
  #10; recevier=1;
  
   #10;transmiter=0;
   #10; recevier=1;
  #10; recevier=1;
  
 #10;transmiter=0;
   #10; recevier=0;
  #10; recevier=0;
   #10;transmiter=1;
   #10; recevier=1;
  #10; recevier=1;

  #200;
  $finish;
end
    initial begin
  $dumpfile("range.vcd");
  $dumpvars();
end
    endmodule

    Warning: "design.sv", 11: repetition.unnamed$$_0: at time 30 ns
time=[30]---->FAIL
Info: "design.sv", 11: repetition.unnamed$$_0: at time 80 ns
time=[80]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 90 ns
time=[90]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 100 ns
time=[100]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 170 ns
time=[170]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 180 ns
time=[180]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 190 ns
time=[190]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 200 ns
time=[200]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 210 ns
time=[210]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 220 ns
time=[220]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 230 ns
time=[230]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 240 ns
time=[240]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 250 ns
time=[250]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 260 ns
time=[260]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 270 ns
time=[270]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 280 ns
time=[280]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 290 ns
time=[290]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 300 ns
time=[300]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 310 ns
time=[310]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 320 ns
time=[320]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 330 ns
time=[330]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 340 ns
time=[340]---->PASS
Info: "design.sv", 11: repetition.unnamed$$_0: at time 350 ns
time=[350]---->PASS
$finish called from file "design.sv", line 42.
$finish at simulation time                  360
           V C S   S i m u l a t i o n   R e p o r t 
Time: 360 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Wed Oct 29 07:49:29 2025
Finding VCD file...
./range.vcd
