module do_while_loop_91;
  longint i;
  initial begin
    i=50;
    do begin
      $display("your's do_while output is =[%0d]",i);
      i++;
      end
    while(i<=65);
  end
endmodule

compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 06:35 2025
your's do_while output is =[50]
your's do_while output is =[51]
your's do_while output is =[52]
your's do_while output is =[53]
your's do_while output is =[54]
your's do_while output is =[55]
your's do_while output is =[56]
your's do_while output is =[57]
your's do_while output is =[58]
your's do_while output is =[59]
your's do_while output is =[60]
your's do_while output is =[61]
your's do_while output is =[62]
your's do_while output is =[63]
your's do_while output is =[64]
your's do_while output is =[65]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.570 seconds;       Data structure size:   0.0Mb
Tue Aug  5 06:35:00 2025
Done
