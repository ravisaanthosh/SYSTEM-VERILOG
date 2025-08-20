class factory;
  static int petrol_vehicle;
  int diesel_vehicle;
  function void company();
    petrol_vehicle++;
    diesel_vehicle++;
  endfunction
endclass

module tb;
  factory plant;
  initial begin
    repeat(10)begin
      plant=new();
      plant.company();
      $display("no of petrol_vehicle  use STATIC KEYWORD=[%0d] \t no of diesel vehicle using without NON-STATIC KEYWORD=[%0d]",plant.petrol_vehicle,plant.diesel_vehicle);
    end
  end
endmodule

no of petrol_vehicle  use STATIC KEYWORD=[1] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[2] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[3] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[4] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[5] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[6] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[7] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[8] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[9] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
no of petrol_vehicle  use STATIC KEYWORD=[10] 	 no of diesel vehicle using without NON-STATIC KEYWORD=[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.510 seconds;       Data structure size:   0.0Mb
Wed Aug 20 03:53:21 2025
Done
