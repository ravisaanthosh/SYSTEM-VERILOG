module int32;
   int int_32;
  initial begin
    $display("int_32=%b",int_32);
    int_32 =32'b11111111;
    $display("int_32=%b",int_32);
  end
endmodule
