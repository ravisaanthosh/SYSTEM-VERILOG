class exp;
  static byte serial_no=2;
endclass
module class_exp;
  exp e1;
  initial begin
    $display("serial_no=%b",exp::serial_no);
  end
endmodule
