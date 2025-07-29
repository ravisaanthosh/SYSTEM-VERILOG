module un_pck_static_63;
  byte abc[6];
  initial begin
   abc='{1,1,1,0,0,0};
    foreach(abc[i])begin
      $display("your's un_packed_static_array output is=%p",abc[i]);
    end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 06:44 2025
your's un_packed_static_array output is=1
your's un_packed_static_array output is=1
your's un_packed_static_array output is=1
your's un_packed_static_array output is=0
your's un_packed_static_array output is=0
your's un_packed_static_array output is=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Tue Jul 29 06:44:14 2025
