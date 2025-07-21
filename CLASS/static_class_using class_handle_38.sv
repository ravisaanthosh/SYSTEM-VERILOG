class exp;
  static int serial_no=2;
endclass
module class_exp;
  exp e1;
  initial begin
    $display("serial_no=%b",e1.serial_no);
  end
endmodule
