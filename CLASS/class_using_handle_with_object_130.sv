class home;//class name
  bit washing_machine;//property
  int fridge;//property
  string power;
  function int fun_home(int v_1,int v_2);//method
    power="ON";
    $display("power supply of home =[%s]",power);
  endfunction
endclass

module tb;
  home room;//handle
  initial begin
    room=new();
    if(room==null)
      $display("object is not created");
    else
      $display("object is created");
  end
endmodule

object is created
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Mon Aug 18 05:38:58 2025
