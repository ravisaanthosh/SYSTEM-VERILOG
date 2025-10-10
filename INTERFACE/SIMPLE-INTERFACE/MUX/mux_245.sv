interface mux_if;
  logic [1:0]s0,s1;
  logic [1:0]a0,a1,a2,a3;
  logic [1:0]y;
endinterface



module mux(mux_if m1);
  always@(*)begin
    if(m1.s0==0 && m1.s1==0)
      m1.y=m1.a0;
    else if(m1.s0==0 && m1.s1==1)
      m1.y=m1.a1;
    else if(m1.s0==1 && m1.s1==0)
      m1.y=m1.a2;
    else
      m1.y=m1.a3;
  end
endmodule
module tb;
  mux_if m1();
  mux dut (m1);
  initial begin
    m1.a0=00; m1.a1=01; m1.a2=10; m1.a3=11;
    
    #5;m1.s0=0; m1.s1=0;
    #1;$display("value of sel s0=[%0d] \n value of sel s1=[%0d] \n ------>result of mux=[%0d]",m1.s0,m1.s1,m1.y);
    
   #5; m1.s0=0; m1.s1=1;
    #1;$display("value of sel s0=[%0d] \n value of sel s1=[%0d] \n ------>result of mux=[%0d]",m1.s0,m1.s1,m1.y);
    
    
   #5; m1.s0=1; m1.s1=0;
    #1;$display("value of sel s0=[%0d] \n value of sel s1=[%0d] \n ------>result of mux=[%0d]",m1.s0,m1.s1,m1.y);

#5; m1.s0=1; m1.s1=1;
   #1; $display("value of sel s0=[%0d] \n value of sel s1=[%0d] \n ------>result of mux=[%0d]",m1.s0,m1.s1,m1.y);
  end
endmodule




value of sel s0=[0] 
 value of sel s1=[0] 
 ------>result of mux=[0]
value of sel s0=[0] 
 value of sel s1=[1] 
 ------>result of mux=[1]
value of sel s0=[1] 
 value of sel s1=[0] 
 ------>result of mux=[2]
value of sel s0=[1] 
 value of sel s1=[1] 
 ------>result of mux=[3]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 24 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Fri Oct 10 01:18:35 2025
Done
