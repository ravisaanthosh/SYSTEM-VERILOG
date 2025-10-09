interface face;
  logic a;
  logic b;
  logic y;
endinterface


module gate(face fce);
  assign fce.y=fce.a & fce.b;
endmodule

module tb;
  face fce();
  gate dut (fce);
  initial begin
    $monitor("fce.a=[%0d],fce.b=[%0d],fce.y=[%0d]",fce.a,fce.b,fce.y);
    #5; fce.a=0; fce.b=0;
    #5; fce.a=0; fce.b=1;
    #5; fce.a=1; fce.b=0;
    #5; fce.a=1; fce.b=1;
  end
endmodule
  
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 09:43 2025
fce.a=[x],fce.b=[x],fce.y=[x]
fce.a=[0],fce.b=[0],fce.y=[0]
fce.a=[0],fce.b=[1],fce.y=[0]
fce.a=[1],fce.b=[0],fce.y=[0]
fce.a=[1],fce.b=[1],fce.y=[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Thu Oct  9 09:43:36 2025
