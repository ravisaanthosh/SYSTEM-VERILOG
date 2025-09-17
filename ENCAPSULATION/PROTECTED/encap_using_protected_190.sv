class spec;
  protected string model_1="HYUNDAI";
  protected string model_2="HYUNDAI";
  protected int price;
  
  function details ();
    if(model_1==model_2)
      $display("FUNCTION:SAME_PRICE");
    else
      $display("FUNCTION:DIFFRENT_PRICE");
  endfunction
endclass

class catalog extends spec;
  int model_1cost=15;
  int model_2cost=20;
  
  task final_price();
    price= model_1cost + model_2cost;
    $display("TASK:total price of mode_1 and model_2=%0d",price);
  endtask
endclass

module tb;
  catalog c1;
  initial begin
    c1=new();
    c1.final_price();
    c1.details();
  end
endmodule

  TASK:total price of mode_1 and model_2=35
FUNCTION:SAME_PRICE
