// tool not supported advance assertion system function task

// ALIB: Library "work" attached.
// work = ./work/work.lib
// ERROR VCP2371 "Global clocking sampled value function $future_gclk is not supported yet. Please contact Aldec Support to receive the latest status." "design.sv" 11  29
// ERROR SVAREAD2671 "Invalid property 'p1' definition. " "design.sv" 14  23
// ERROR VCP2371 "Global clocking sampled value function $rising_gclk is not supported yet. Please contact Aldec Support to receive the latest status." "design.sv" 21  29
// ERROR SVAREAD2671 "Invalid property 'p2' definition. " "design.sv" 24  23
// ERROR VCP2371 "Global clocking sampled value function $falling_gclk is not supported yet. Please contact Aldec Support to receive the latest status." "design.sv" 31  30
// ERROR SVAREAD2671 "Invalid property 'p3' definition. " "design.sv" 34  23
// ERROR VCP2371 "Global clocking sampled value function $changing_gclk is not supported yet. Please contact Aldec Support to receive the latest status." "design.sv" 41  31
// ERROR SVAREAD2671 "Invalid property 'p4' definition. " "design.sv" 44  23
// FAILURE "Compile failure 8 Errors 0 Warnings  Analysis time: 0[s]."


module fucture_global_clk_291;

  logic clk;
  logic req, ack;

  always #5 clk = ~clk;
  initial clk = 0;

  property p1;
    @(posedge clk)
    req |-> $future_gclk(ack);
  endproperty

  a1: assert property (p1)
    $display("P1 PASS time=%0t req=%0b ack=%0b", $time, req, ack);
  else
    $display("P1 FAIL time=%0t req=%0b ack=%0b", $time, req, ack);

  property p2;
    @(posedge clk)
    req |-> $rising_gclk(ack);
  endproperty

  a2: assert property (p2)
    $display("P2 PASS (RISING) time=%0t", $time);
  else
    $display("P2 FAIL (RISING) time=%0t", $time);

  property p3;
    @(posedge clk)
    req |-> $falling_gclk(ack);
  endproperty

  a3: assert property (p3)
    $display("P3 PASS (FALLING) time=%0t", $time);
  else
    $display("P3 FAIL (FALLING) time=%0t", $time);

  property p4;
    @(posedge clk)
    req |-> $changing_gclk(ack);
  endproperty

  a4: assert property (p4)
    $display("P4 PASS (CHANGING) time=%0t", $time);
  else
    $display("P4 FAIL (CHANGING) time=%0t", $time);

  initial begin
    req = 0; ack = 0;

    #10 req = 1; ack = 0;
    #10 ack = 1;

    #10 req = 1; ack = 1;
    #10 ack = 0;

    #10 req = 1; ack = 0;
    #10 ack = 1;

    #10 req = 1; ack = 1;
    #10 ack = 1;

    #20 $finish;
  end

endmodule


    
