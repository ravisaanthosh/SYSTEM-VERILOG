module repetition;
  bit transmiter;
  bit recevier;
  bit clk;
always #5 clk = ~clk;
  
  property p1;
    @(posedge clk) transmiter |-> ##1 (recevier)[*5];
  endproperty
  
  assert property (p1)
    $info("time=[%0t]---->PASS",$time);
    else
      $warning("time=[%0t]---->FAIL",$time);
    
initial begin
  clk=1;
  transmiter=0;
  #10;transmiter=1;
  #10; recevier=0;
  
  #10;recevier=1;
  #60;
  $finish;
end
    initial begin
      $dumpfile("repetition.vcd");
  $dumpvars();
end
    endmodule

    Warning: "design.sv", 11: repetition.unnamed$$_0: at time 30 ns
time=[30]---->FAIL
Info: "design.sv", 11: repetition.unnamed$$_0: at time 80 ns
time=[80]---->PASS
$finish called from file "design.sv", line 24.
$finish at simulation time                   90
           V C S   S i m u l a t i o n   R e p o r t 
