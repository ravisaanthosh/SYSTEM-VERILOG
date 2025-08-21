class factory;
  static function int company();
    int no_of_old_cars;
    no_of_old_cars++;
    $display("using static methods in class without static variable 'USING LOCAL VARIABLE'=[%0d]",no_of_old_cars);
  endfunction
endclass

module tb;
  factory plant[10];
  initial begin
    foreach(plant[i])begin
      plant[i].company();
    end
  end
endmodule
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 21 00:56 2025
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
using static methods in class without static variable 'USING LOCAL VARIABLE'=[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Thu Aug 21 00:56:56 2025
