class factory;
  string hyundai_verna;
  string hyundai_grand_i10;
  function void company();
    hyundai_verna="tata_safari";
    hyundai_grand_i10="tata_tiago";
    $display("current value of class object assignment for hyundai_verna,hyundai_grand_i10=[%0s]",hyundai_verna,hyundai_grand_i10);
  endfunction
endclass

module tb;
  factory plant_1,plant_2;
  initial begin
    plant_1=new();
    plant_2=plant_1;
    plant_1.company();
    plant_2.company();
    $display("object copying method using class assignment in hyundai_verna=[%0s],and hyundai_grand_i10=[%0s]",plant_1.hyundai_verna,plant_1.hyundai_grand_i10);
     $display("object copying method using class assignment in hyundai_verna=[%0s],and hyundai_grand_i10=[%0s]",plant_2.hyundai_verna,plant_2.hyundai_grand_i10);
    
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 25 01:59 2025
current value of class object assignment for hyundai_verna,hyundai_grand_i10=[tata_safari]tata_tiago
current value of class object assignment for hyundai_verna,hyundai_grand_i10=[tata_safari]tata_tiago
object copying method using class assignment in hyundai_verna=[tata_safari],and hyundai_grand_i10=[tata_tiago]
object copying method using class assignment in hyundai_verna=[tata_safari],and hyundai_grand_i10=[tata_tiago]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Mon Aug 25 01:59:03 2025
Done
