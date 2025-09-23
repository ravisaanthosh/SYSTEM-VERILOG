class range;
  randc bit [7:0]data;
  constraint c1{data >=10;
					data <=50;}
endclass


module tb;
  range r1;
  initial begin
    r1=new();
    repeat(10)begin
      r1.randomize();
      $display("the range between 10 to 50 =[%0d]",r1.data);
    end
  end
endmodule


the range between 10 to 50 =[23]
the range between 10 to 50 =[25]
the range between 10 to 50 =[39]
the range between 10 to 50 =[41]
the range between 10 to 50 =[49]
the range between 10 to 50 =[50]
the range between 10 to 50 =[36]
the range between 10 to 50 =[48]
the range between 10 to 50 =[27]
the range between 10 to 50 =[19]
           V C S   S i m u l a t i o n   R e p o r t 
