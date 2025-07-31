module array_ordering_method_74;
  longint in[];
  initial begin
    in=new[10];
    in='{0,10,20,30,40,50,60,70,80,90};
  in.reverse();
    $display("your's array ordering method using reverse_keyword is=[%0p]",in);
    in.sort();
    $display("your's array ordering method using sort_keyword is=[%0p]",in);
    in.rsort();
    $display("your's array ordering method using rsort_keyword is=[%0p]",in);
    in.shuffle();
    $display("your's array ordering method using shuffle_keyword is=[%0p]",in);
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 02:38 2025
your's array ordering method using reverse_keyword is=['{90, 80, 70, 60, 50, 40, 30, 20, 10, 0} ]
your's array ordering method using sort_keyword is=['{0, 10, 20, 30, 40, 50, 60, 70, 80, 90} ]
your's array ordering method using rsort_keyword is=['{90, 80, 70, 60, 50, 40, 30, 20, 10, 0} ]
your's array ordering method using shuffle_keyword is=['{10, 30, 20, 0, 40, 90, 80, 50, 70, 60} ]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.570 seconds;       Data structure size:   0.0Mb
Thu Jul 31 02:38:47 2025
Done
