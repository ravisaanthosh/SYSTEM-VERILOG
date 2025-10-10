interface inf;
  logic clk;
  logic rst;
  logic din;
  logic dout;
endinterface



module dff (inf d);
  always@(posedge d.clk or posedge d.rst)begin
    if (d.rst)
      d.dout<=1'b0;
    else
      d.dout<=d.din;
  end
endmodule


module tb;
  inf d();
  dff dut (d);
  initial begin
    d.clk=0;
    forever #5 d.clk=~d.clk;
  end
  initial begin
    
    d.rst=0; d.din=0;
    
    d.din=1; #10;
    d.din=0; #10;
    d.din=1; #10;
    d.din=1; #10;
    $finish;
  end
  initial begin
    $monitor("rst=[%0d],clk=[%0d],din=[%0d],dout=[%0d]",d.rst,d.clk,d.din,d.dout);
  end
endmodule




Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 10 01:44 2025
rst=[0],clk=[0],din=[1],dout=[x]
rst=[0],clk=[1],din=[1],dout=[1]
rst=[0],clk=[0],din=[0],dout=[1]
rst=[0],clk=[1],din=[0],dout=[0]
rst=[0],clk=[0],din=[1],dout=[0]
rst=[0],clk=[1],din=[1],dout=[1]
rst=[0],clk=[0],din=[1],dout=[1]
rst=[0],clk=[1],din=[1],dout=[1]
$finish called from file "design.sv", line 35.
$finish at simulation time                   40
           V C S   S i m u l a t i o n   R e p o r t 
Time: 40 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Fri Oct 10 01:44:10 2025
Done
