class range;
  randc bit [7:0]data;
  constraint c1{data %2==0;}
endclass


module tb;
  range r1;
  initial begin
    r1=new();
    repeat(10)begin
      r1.randomize();
      $display("even number only =[%0d]",r1.data);
    end
  end
endmodule


even number only =[84]
even number only =[94]
even number only =[182]
even number only =[190]
even number only =[242]
even number only =[248]
even number only =[164]
even number only =[254]
even number only =[166]
even number only =[62]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
