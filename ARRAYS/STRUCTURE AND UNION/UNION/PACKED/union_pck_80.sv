module union_pck_79;
  union packed {bit[1:0]san;
                logic[1:0]vig;
                reg[1:0]lak_rav;}fam;
  initial begin
    fam.san=2'b11;
    $display("your's union packed data san is=[%0d]",fam);
    fam.vig=2'b11;
    $display("your's union packed data vig is=[%0d]",fam);
    fam.lak_rav=2'b11;
    $display("your's union packed data lak_rav is=[%0d]",fam);
    
    $display("your's union packed data lak_rav is=[%0p]",fam);
  end
endmodule


Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 08:37 2025
your's union packed data san is=[3]
your's union packed data vig is=[3]
your's union packed data lak_rav is=[3]
>>>>> <<<<<your's union packed data lak_rav is=['{san:'h3}]  >>>>>>>>>>>>>>>>>>>>>>>>>>data overridden<<<<<<<<<<<<<<<<<<<<<<<
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Thu Jul 31 08:37:54 2025
