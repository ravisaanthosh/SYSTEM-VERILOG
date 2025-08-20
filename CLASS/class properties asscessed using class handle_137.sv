class factory;
  static string hyundai_SUV;
endclass

module tb;
  factory plant;
  initial begin
    factory :: hyundai_SUV="fity_lakhs";
    $display("class data access to using class handle=[%0s]",plant.hyundai_SUV);
  end
endmodule

class data access to using class handle=[fity_lakhs]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Wed Aug 20 05:36:49 2025
