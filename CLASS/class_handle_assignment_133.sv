class factory;
  longint variant [7:0];
endclass

module tb;
  factory plant_1, plant_2;
  initial begin
  plant_1=new();
  plant_2=plant_1;
    plant_1.variant[5]=515;
    $display("plant_1 unit per hour production is =%p",plant_1.variant);
    plant_2.variant[6]=745;
    $display("plant_2 unit per hour production is =%p",plant_2.variant);
    $display("plant_1 unit per hour production is =%p",plant_1.variant);
  end
endmodule

plant_1 unit per hour production is ='{0, 0, 515, 0, 0, 0, 0, 0} 
plant_2 unit per hour production is ='{0, 745, 515, 0, 0, 0, 0, 0} 
plant_1 unit per hour production is ='{0, 745, 515, 0, 0, 0, 0, 0} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Tue Aug 19 03:50:52 2025
