module l_19;
  logic[4:0]l_data_typ;
  initial begin
    $display("your logic data type l_data_typ=%b",l_data_typ);
    l_data_typ=5'b10101;
    $display("your logic data type l_data_typ=%b",l_data_typ);
  end
endmodule
