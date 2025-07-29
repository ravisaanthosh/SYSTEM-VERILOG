module un_pck_static_63;
  byte abc[6];
  initial begin
  foreach(abc[i])begin
    abc[i]=$urandom_range(0,4);
      $display("your's un_packed_static_array output is=%0p",abc[i]);
    end
  end
endmodule

CPU time: .421 seconds to compile + .440 seconds to elab + .426 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 06:46 2025
your's un_packed_static_array output is=3
your's un_packed_static_array output is=0
your's un_packed_static_array output is=3
your's un_packed_static_array output is=0
your's un_packed_static_array output is=2
your's un_packed_static_array output is=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Tue Jul 29 06:46:06 2025
Done
