module system_task_function_287;
  logic transmiter;
  logic recevier;
  bit clk;
always #5 clk = ~clk;
  
  property p1;
    @(posedge clk) transmiter |-> ($isunknown(recevier));
  endproperty
  
  assert property (p1)
    $info("time=[%0t]---->PASS transmiter=[%0b] recevier=[%0b]",$time,transmiter,recevier);
    else
      $info("time=[%0t]---->FAIL transmiter=[%0b] recevier=[%0b]",$time,transmiter,recevier);
    
initial begin
  repeat(15)begin
  clk=1;
  #5;transmiter=1;
  #10;recevier=1'bX;
  #10;recevier=1'bz;
 #10;  recevier=1'b0;
 #10; recevier=1'b1;
  #10;  recevier=1'b0;
 #10; recevier=1'b1;
  #50;
  $finish;
  end
end
    initial begin
      $dumpfile("system_task_function.vcd");
  $dumpvars();
end
    endmodule


    TOOL:	xrun	25.03-s001: Started on Mar 17, 2026 at 04:10:29 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		system_task_function_287
Loading snapshot worklib.system_task_function_287:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
xmsim: *N,ASRTST (./design.sv,12): (time 10 NS) Assertion system_task_function_287.p1 has passed
time=[10]---->PASS transmiter=[1] recevier=[x]
xmsim: *N,ASRTST (./design.sv,12): (time 20 NS) Assertion system_task_function_287.p1 has passed
time=[20]---->PASS transmiter=[1] recevier=[x]
xmsim: *N,ASRTST (./design.sv,12): (time 30 NS) Assertion system_task_function_287.p1 has passed
time=[30]---->PASS transmiter=[1] recevier=[z]
xmsim: *N,ASRTST (./design.sv,14): (time 40 NS) Assertion system_task_function_287.p1 has failed
time=[40]---->FAIL transmiter=[1] recevier=[0]
xmsim: *N,ASRTST (./design.sv,14): (time 50 NS) Assertion system_task_function_287.p1 has failed
time=[50]---->FAIL transmiter=[1] recevier=[1]
xmsim: *N,ASRTST (./design.sv,14): (time 60 NS) Assertion system_task_function_287.p1 has failed
time=[60]---->FAIL transmiter=[1] recevier=[0]
xmsim: *N,ASRTST (./design.sv,14): (time 70 NS) Assertion system_task_function_287.p1 has failed
time=[70]---->FAIL transmiter=[1] recevier=[1]
xmsim: *N,ASRTST (./design.sv,14): (time 80 NS) Assertion system_task_function_287.p1 has failed
time=[80]---->FAIL transmiter=[1] recevier=[1]
xmsim: *N,ASRTST (./design.sv,14): (time 90 NS) Assertion system_task_function_287.p1 has failed
time=[90]---->FAIL transmiter=[1] recevier=[1]
xmsim: *N,ASRTST (./design.sv,14): (time 100 NS) Assertion system_task_function_287.p1 has failed
time=[100]---->FAIL transmiter=[1] recevier=[1]
xmsim: *N,ASRTST (./design.sv,14): (time 110 NS) Assertion system_task_function_287.p1 has failed
time=[110]---->FAIL transmiter=[1] recevier=[1]
Simulation complete via $finish(1) at time 115 NS + 0
./design.sv:27   $finish;
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Mar 17, 2026 at 04:10:30 EDT  (total: 00:00:01)
Finding VCD file...
./system_task_function.vcd
[2026-03-17 08:10:31 UTC] Opening EPWave...
Done
