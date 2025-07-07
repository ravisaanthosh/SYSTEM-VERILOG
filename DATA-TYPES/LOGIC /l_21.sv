module total_data_typ;
  logic[99:0]total_data_typ;
  initial begin
    $display("total_data_typ=%b",total_data_typ);
    total_data_typ=100'b1_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111;
    $display("total_data_typ=%b",total_data_typ);
  end
endmodule
