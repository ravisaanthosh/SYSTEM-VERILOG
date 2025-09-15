virtual class computer;
  string hp;
  string dell;
  pure virtual function preview();
    endclass
    
    class laptop extends computer;
      function preview();
        $display("child:cost of brand=%0s,=%0s",hp,dell);
      endfunction
    endclass
    
    module tb;
      computer c1;
      laptop l1;
      initial begin
        l1=new();
        c1=l1;
        l1.hp="HIGH_COST";
        l1.dell="LOW_COST";
        l1.preview();
        
        c1.hp="DISCOUNT";
        c1.dell="NOT_DISCOUNT";
        c1.preview();
      end
    endmodule


child:cost of brand=HIGH_COST,=LOW_COST
child:cost of brand=DISCOUNT,=NOT_DISCOUNT
xmsim: *W,RNQUIE: Simulation is complete.
