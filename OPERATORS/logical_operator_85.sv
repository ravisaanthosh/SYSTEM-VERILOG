module logical_operator_85;
  bit[1:0]a,b,c,y;
  initial begin
    a=1'b1;
    b=1'b1;
    c=1'b0;
    y=a&&b;
    $display("your's logical AND_operator is=[%0b]",y);
    y=a||b;
    $display("your's logical OR_operator is=[%0b]",y);
    y=!a;
    $display("your's logical NOT_operator is=[%0b]",y);
    y=!b;
    $display("your's logical NOT_operator is=[%0b]",y);
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  4 07:21 2025
your's logical AND_operator is=[1]
your's logical OR_operator is=[1]
your's logical NOT_operator is=[0]
your's logical NOT_operator is=[0]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Mon Aug  4 07:21:10 2025
Done
