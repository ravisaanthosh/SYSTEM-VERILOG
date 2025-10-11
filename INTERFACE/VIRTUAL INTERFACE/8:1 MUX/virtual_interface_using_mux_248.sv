interface mux_inf;
  logic s0, s1, s2;
  logic a, b, c, d, e, f, g, h;
  logic mux_out;
endinterface


module mux(mux_inf m);
  assign m.mux_out = m.s2 ? (m.s1 ? (m.s0 ? m.h : m.g): (m.s0 ? m.f : m.e)): (m.s1 ? (m.s0 ? m.d : m.c): (m.s0 ? m.b : m.a));
endmodule


class driver;
  virtual mux_inf vinf;

  function new(virtual mux_inf vinf);
    this.vinf = vinf;
  endfunction
  
  task drive();
    #1; vinf.a=0;
    #2; vinf.b=1;
    #3; vinf.c=0;
    #4; vinf.d=1;
    #5; vinf.e=0;
    #6; vinf.f=1;
    #7; vinf.g=0;
    #8; vinf.h=1;

    for (int i = 0; i < 8; i++) begin
      {vinf.s2, vinf.s1, vinf.s0} = i[2:0];
      #5;
      $display("sel_2=[%0b] sel_1=[%0b] sel_0=[%0b] -> mux_out=%0b",
               vinf.s2, vinf.s1, vinf.s0, vinf.mux_out);
    end
  endtask
endclass


module tb;
  mux_inf m();
  mux dut(m);
  driver dr;

  initial begin
    dr = new(m);
    dr.drive();
  end
endmodule




Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct 11 03:30 2025
sel_2=[0] sel_1=[0] sel_0=[0] -> mux_out=0
sel_2=[0] sel_1=[0] sel_0=[1] -> mux_out=1
sel_2=[0] sel_1=[1] sel_0=[0] -> mux_out=0
sel_2=[0] sel_1=[1] sel_0=[1] -> mux_out=1
sel_2=[1] sel_1=[0] sel_0=[0] -> mux_out=0
sel_2=[1] sel_1=[0] sel_0=[1] -> mux_out=1
sel_2=[1] sel_1=[1] sel_0=[0] -> mux_out=0
sel_2=[1] sel_1=[1] sel_0=[1] -> mux_out=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 76 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Sat Oct 11 03:30:59 2025
