module short_int30;
   shortint short_int_30;
  initial begin
    $display("short_int_30=%b",short_int_30);
    short_int_30 =8'b11111111;
    $display("short_int_30=%b",short_int_30);
  end
endmodule
