module struct_pack_without_typedef_78;
  struct packed {bit[1:0]san;
                 logic [2:0]con_no;
                 reg[3:0]pin_c;}pck_data;
  initial begin
    pck_data.san=1;
    pck_data.con_no=5;
    pck_data.pin_c=6;
    $display("your's structures'packed output is=[%0p]", pck_data);
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 06:36 2025
your's structures'packed output is=['{san:'h1, con_no:'h5, pin_c:'h6}]
