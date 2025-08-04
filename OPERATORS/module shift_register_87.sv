module shift_register_87;
  logic[3:0]a,b,y;
  initial begin
    a=4'b1011;
    b=4'b0110;
    y=a>>1;
    $display("your's shift register logical_operator output is=[%0b]",y);
    y=b<<1;
    $display("your's shift register logical_operator output is=[%0b]",y);
    y=b>>>2;
    $display("your's shift register arithmetic_operator output is=[%0b]",y);
    y=b<<<2;
    $display("your's shift register arithmetic_operator output is=[%0b]",y);
  end
endmodule

your's shift register logical_operator output is=[101]
your's shift register logical_operator output is=[1100]
your's shift register arithmetic_operator output is=[1]
your's shift register arithmetic_operator output is=[1000]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 secon
