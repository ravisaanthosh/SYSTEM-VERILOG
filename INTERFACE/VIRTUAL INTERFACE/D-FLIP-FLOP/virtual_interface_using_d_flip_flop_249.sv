interface dinf;
  logic clk;
  logic rst;
  logic din;
  logic dout;
endinterface


module dff(dinf d);
  always @(posedge d.clk or posedge d.rst) begin
    if (d.rst)
      d.dout <= 1'b0;
    else
      d.dout <= d.din;
  end
endmodule


class driver;
  virtual dinf vif;

  function new(virtual dinf vif);
    this.vif = vif;
  endfunction
  
  task drive;
    fork
      begin
        vif.clk = 0;
        forever #5 vif.clk = ~vif.clk;
      end

     
      begin
        vif.rst = 1;
        #10;
        vif.rst = 0;

        vif.din = 1; #10;
        vif.din = 0; #10;
        vif.din = 1; #10;
        vif.din = 1; #10;
        $finish;
      end
    join_none
  endtask
endclass


module tb;
  dinf d();
  dff dut(d);
  driver dr;

  initial begin
    dr = new(d);
    dr.drive();
  end


  initial begin
    $monitor("rst=%b clk=%b din=%b ->dout=%b",d.rst, d.clk, d.din, d.dout);
  end
endmodule



Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 04:33 2025
rst=1 clk=0 din=x ->dout=0
rst=1 clk=1 din=x ->dout=0
rst=0 clk=0 din=1 ->dout=0
rst=0 clk=1 din=1 ->dout=1
rst=0 clk=0 din=0 ->dout=1
rst=0 clk=1 din=0 ->dout=0
rst=0 clk=0 din=1 ->dout=0
rst=0 clk=1 din=1 ->dout=1
rst=0 clk=0 din=1 ->dout=1
rst=0 clk=1 din=1 ->dout=1
$finish called from file "design.sv", line 43.
$finish at simulation time                   50
           V C S   S i m u l a t i o n   R e p o r t 
Time: 50 ns
CPU Time:      0.350 seconds;       Data structure size:   0.0Mb
Sat Oct 11 04:33:36 2025
