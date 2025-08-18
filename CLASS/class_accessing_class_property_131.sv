class factory;
  string verna;
  string i_20;
  string hyundai;
  function company();
    hyundai="car";
    $display("hyundai=%s",hyundai);
  endfunction
endclass

module tb;
  factory plant;
  initial begin
    plant=new();
    plant.verna="twenty_lakhs";
    plant.i_20="twelve_lakhs";
    plant.hyundai="from_assembly shop #2";
    plant.company;
    $display("your's booked car's are =%s,%s",plant.verna,plant.i_20);
  end
endmodule

hyundai=car
your's booked car's are =twenty_lakhs,twelve_lakhs
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Mon Aug 18 06:38:56 2025
