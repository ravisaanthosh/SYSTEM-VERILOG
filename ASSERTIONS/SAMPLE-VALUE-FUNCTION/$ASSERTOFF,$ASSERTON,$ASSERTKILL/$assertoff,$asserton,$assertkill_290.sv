module system_task_function_290;
  logic transmiter;
  logic [3:0]recevier;
  logic [2:0] bits_count;
  bit clk;
always #5 clk = ~clk;
  always_comb begin
    bits_count = $countbits(recevier,1'b0,1'b1,1'bx,1'bz);
  end
  
property p1;
  @(posedge clk) transmiter |-> (bits_count > 0);
  endproperty

  
  assert property (p1)
    $info("time=[%0t]---->PASS transmiter=[%0b] recevier=[%0b] no of bits=[%0d]",$time,transmiter,recevier,bits_count);
    else
      $info("time=[%0t]---->FAIL transmiter=[%0b] recevier=[%0b] no of bits=[%0d]",$time,transmiter,recevier,bits_count);
    
initial begin
  repeat(15)begin
  clk=1;
  #5;transmiter=1;
  #10;recevier=4'b1110;
    $assertoff(0);
  #10;recevier=4'b1010;
 #10;  recevier=4'b0110;
    $asserton(0);
 #10; recevier=4'b1001;
  #10;  recevier=4'bx000;
    $assertkill(0);
 #10; recevier=4'bzzzz;
  #50;
  $finish;
  end
end
    initial begin
      $dumpfile("system_task_function.vcd");
  $dumpvars();
end
    endmodule



    If you would like to temporarily disable this message, set 
 the VCS_LIC_EXPIRE_WARNING environment variable to the number of days
before expiration that you want this message to start (the minimum is 0).
Info: "design.sv", 16: system_task_function_289.unnamed$$_1: at time 10 ns
time=[10]---->PASS transmiter=[1] recevier=[xxxx] no of bits=[4]
Stopping new assertion attempts at time 15ns: level = 0 arg = * (from inst system_task_function_289 (design.sv:26))
Starting assertion attempts at time 35ns: level = 0 arg = * (from inst system_task_function_289 (design.sv:29))
Info: "design.sv", 16: system_task_function_289.unnamed$$_1: at time 40 ns
time=[40]---->PASS transmiter=[1] recevier=[110] no of bits=[4]
Info: "design.sv", 16: system_task_function_289.unnamed$$_1: at time 50 ns
time=[50]---->PASS transmiter=[1] recevier=[1001] no of bits=[4]
Stopping assertion attempts at time 55ns: level = 0 arg = * (from inst system_task_function_289 (design.sv:32))
$finish called from file "design.sv", line 35.
$finish at simulation time                  115
           V C S   S i m u l a t i o n   R e p o r t 
Time: 115 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Tue Mar 17 04:47:54 2026
Finding VCD file...
./system_task_function.vcd
[2026-03-17 08:47:54 UTC] Opening EPWave...
Done
