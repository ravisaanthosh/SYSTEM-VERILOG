module system_task_function_288;
  logic transmiter;
  logic [3:0]recevier;
  logic [2:0] ones_count;
  bit clk;
always #5 clk = ~clk;
  always_comb begin
    ones_count = $countones(recevier);
  end
  
property p1;
    @(posedge clk) transmiter |-> (ones_count > 0);
  endproperty

  
  assert property (p1)
    $info("time=[%0t]---->PASS transmiter=[%0b] recevier=[%0b] no of counts=[%0d]",$time,transmiter,recevier,ones_count);
    else
      $info("time=[%0t]---->FAIL transmiter=[%0b] recevier=[%0b] no of counts=[%0d]",$time,transmiter,recevier,ones_count);
    
initial begin
  repeat(15)begin
  clk=1;
  #5;transmiter=1;
  #10;recevier=4'b1110;
  #10;recevier=4'b1010;
 #10;  recevier=4'b0110;
 #10; recevier=4'b1001;
  #10;  recevier=4'b0000;
 #10; recevier=0;
  #50;
  $finish;
  end
end
    initial begin
      $dumpfile("system_task_function.vcd");
  $dumpvars();
end
    endmodule


    Loading snapshot worklib.system_task_function_287:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
xmsim: *N,ASRTST (./design.sv,19): (time 10 NS) Assertion system_task_function_287.p1 has failed
time=[10]---->FAIL transmiter=[1] recevier=[x] no of counts=[0]
xmsim: *N,ASRTST (./design.sv,17): (time 20 NS) Assertion system_task_function_287.p1 has passed
time=[20]---->PASS transmiter=[1] recevier=[1110] no of counts=[3]
xmsim: *N,ASRTST (./design.sv,17): (time 30 NS) Assertion system_task_function_287.p1 has passed
time=[30]---->PASS transmiter=[1] recevier=[1010] no of counts=[2]
xmsim: *N,ASRTST (./design.sv,17): (time 40 NS) Assertion system_task_function_287.p1 has passed
time=[40]---->PASS transmiter=[1] recevier=[110] no of counts=[2]
xmsim: *N,ASRTST (./design.sv,17): (time 50 NS) Assertion system_task_function_287.p1 has passed
time=[50]---->PASS transmiter=[1] recevier=[1001] no of counts=[2]
xmsim: *N,ASRTST (./design.sv,19): (time 60 NS) Assertion system_task_function_287.p1 has failed
time=[60]---->FAIL transmiter=[1] recevier=[0] no of counts=[0]
xmsim: *N,ASRTST (./design.sv,19): (time 70 NS) Assertion system_task_function_287.p1 has failed
time=[70]---->FAIL transmiter=[1] recevier=[0] no of counts=[0]
xmsim: *N,ASRTST (./design.sv,19): (time 80 NS) Assertion system_task_function_287.p1 has failed
time=[80]---->FAIL transmiter=[1] recevier=[0] no of counts=[0]
xmsim: *N,ASRTST (./design.sv,19): (time 90 NS) Assertion system_task_function_287.p1 has failed
time=[90]---->FAIL transmiter=[1] recevier=[0] no of counts=[0]
xmsim: *N,ASRTST (./design.sv,19): (time 100 NS) Assertion system_task_function_287.p1 has failed
time=[100]---->FAIL transmiter=[1] recevier=[0] no of counts=[0]
xmsim: *N,ASRTST (./design.sv,19): (time 110 NS) Assertion system_task_function_287.p1 has failed
time=[110]---->FAIL transmiter=[1] recevier=[0] no of counts=[0]
Simulation complete via $finish(1) at time 115 NS + 0
./design.sv:32   $finish;
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Mar 17, 2026 at 04:29:16 EDT  (total: 00:00:02)
Finding VCD file...
./system_task_function.vcd
[2026-03-17 08:29:16 UTC] Opening EPWave...
Done
