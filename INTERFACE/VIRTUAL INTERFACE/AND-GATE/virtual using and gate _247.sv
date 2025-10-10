interface inf;
  logic a;
  logic b;
  logic y;
endinterface



module agte(inf ginf);
  assign ginf.y=ginf.a & ginf.b;
endmodule


class driver;
  virtual inf vinf;
  function new(virtual inf vinf);
    this.vinf=vinf;
  endfunction
  
  task drive();
   #5; vinf.a=0; vinf.b=0;
    #5; vinf.a=0; vinf.b=1;
    #5; vinf.a=1; vinf.b=0;
    #5; vinf.a=1; vinf.b=1;
  endtask
endclass




module tb;
  inf ginf();
  agte dut (ginf);
  driver dr;
  initial begin
    dr=new(ginf);
    dr.drive();
  end
    initial begin
      $monitor("value of a=[%0d] \n value of b =[%0d] \n ------->result of gate=[%0d]",ginf.a,ginf.b,ginf.y);
  end
endmodule


value of a=[x] 
 value of b =[x] 
 ------->result of gate=[x]
value of a=[0] 
 value of b =[0] 
 ------->result of gate=[0]
value of a=[0] 
 value of b =[1] 
 ------->result of gate=[0]
value of a=[1] 
 value of b =[0] 
 ------->result of gate=[0]
value of a=[1] 
 value of b =[1] 
 ------->result of gate=[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Fri Oct 10 05:28:54 2025
