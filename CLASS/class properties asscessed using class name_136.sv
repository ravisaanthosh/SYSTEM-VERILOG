class factory;
  static string hyundai_SUV;
endclass

module tb;
  factory plant;
  initial begin
    factory :: hyundai_SUV="fity_lakhs";
    $display("class data access to using class name=[%0s]",factory::hyundai_SUV);
  end
endmodule

class data access to using class name=[fity_lakhs]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Wed Aug 20 05:34:19 2025
Done
