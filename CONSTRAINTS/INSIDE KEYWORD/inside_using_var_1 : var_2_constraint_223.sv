class range;
  randc bit [7:0]var_1;
  randc bit [7:0]var_2;
  randc bit [7:0]result;
  constraint c1{result inside{[var_1 : var_2]};}
endclass

module tb;
  range r1;
  initial begin
    r1=new();
    r1.var_1={40,50,60};
    r1.var_2={70,80,90};
    repeat (10)begin
      r1.randomize();
      $display("constraints using indise var_1 : var_2 of result =[%0d]",r1.result);
    end
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 25 07:18 2025
constraints using indise var_1 : var_2 of result =[86]
constraints using indise var_1 : var_2 of result =[97]
constraints using indise var_1 : var_2 of result =[92]
constraints using indise var_1 : var_2 of result =[115]
constraints using indise var_1 : var_2 of result =[227]
constraints using indise var_1 : var_2 of result =[240]
constraints using indise var_1 : var_2 of result =[206]
constraints using indise var_1 : var_2 of result =[255]
constraints using indise var_1 : var_2 of result =[129]
constraints using indise var_1 : var_2 of result =[63]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.450 seconds;       Data structure size:   0.0Mb
Thu Sep 25 07:18:03 2025
