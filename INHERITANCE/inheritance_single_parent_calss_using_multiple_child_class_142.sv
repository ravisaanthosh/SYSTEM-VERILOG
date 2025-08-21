class factory;
  int car_A;
  function void factory_function();
    $display("specification of factory car_A=[%0d]",car_A);
  endfunction
endclass


class plant_1 extends factory;
  int car_B;
  function void plant_1_function();
    $display("specification of plant_1 car_B=[%0d]",car_B);
  endfunction
endclass


class plant_2 extends factory;
  int car_C;
  function void plant_2_function();
    $display("specification of plant_1 car_C=[%0d]",car_C);
  endfunction
endclass


class line_1 extends plant_1;
  int car_D;
  function void line_1_function();
    $display("specification of plant_1 car_D=[%0d]",car_D);
  endfunction
endclass


class line_2 extends line_1;
  int car_E;
  function void line_2_function();
    $display("specification of plant_1 car_E=[%0d]",car_E);
  endfunction
endclass


module tb;
  line_2 line_2_handle;
  initial begin
    line_2_handle=new();
    line_2_handle.car_A=1;
    line_2_handle.car_B=10;
//     line_2_handle.car_C=100;//no need to call here
    line_2_handle.car_D=1000;
    line_2_handle.car_E=10000;
    
    line_2_handle.factory_function();
    line_2_handle.plant_1_function();
    //     line_2_handle.plant_2_function(); no need to call here
    line_2_handle.line_1_function();
    line_2_handle.line_2_function();
  end
endmodule


specification of factory car_A=[1]
specification of plant_1 car_B=[10]
specification of plant_1 car_D=[1000]
specification of plant_1 car_E=[10000]
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 21, 2025 at 09:13:39 EDT  (total: 00:00:02)
Done
