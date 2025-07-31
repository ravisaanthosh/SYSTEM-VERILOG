module array_locator_method_75;
  int in[];
  int out[$];
  initial begin
    in=new[10];
    in='{10,20,30,40,50,60,70,80,90,100};
    out=in.find(z)with (z>=60);
    $display("your's array locator method using find keyword=[%0p]",out);
    out=in.find_index(z)with (z>70);
    $display("your's array locator method using find_index keyword=[%0p]",out);
    out=in.find_first(z)with (z<100);
    $display("your's array locator method using find_first keyword=[%0p]",out);
    out=in.find_last(z)with (z>50);
    $display("your's array locator method using find_last keyword=[%0p]",out);
    out=in.find_last_index(z)with (z>10);
    $display("your's array locator method using find_last_index keyword=[%0p]",out);
    out=in.min();
    $display("your's array locator method using min keyword=[%0p]",out);
    out=in.max();
    $display("your's array locator method using max keyword=[%0p]",out);
    out=in.unique();
    $display("your's array locator method using unique keyword=[%0p]",out);
    out=in.unique_index();
    $display("your's array locator method using unique_index keyword=[%0p]",out);
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 03:13 2025
your's array locator method using find keyword=['{60, 70, 80, 90, 100} ]
your's array locator method using find_index keyword=['{7, 8, 9} ]
your's array locator method using find_first keyword=['{10} ]
your's array locator method using find_last keyword=['{100} ]
your's array locator method using find_last_index keyword=['{9} ]
your's array locator method using min keyword=['{10} ]
your's array locator method using max keyword=['{100} ]
your's array locator method using unique keyword=['{10, 20, 30, 40, 50, 60, 70, 80, 90, 100} ]
your's array locator method using unique_index keyword=['{0, 1, 2, 3, 4, 5, 6, 7, 8, 9} ]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Thu Jul 31 03:13:51 2025
