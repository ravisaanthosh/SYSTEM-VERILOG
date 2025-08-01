module relation_operator_83;
  int x;
  int y;
  int out;
  initial begin
    x=5;
    y=5;
    out=x>y;
    $display("your's relation operator greater than output is =[%0p]",out);
    out=x>=y;
    $display("your's relation operator greater than equal to output is =[%0p]",out);
    out=x<y;
    $display("your's relation operator less than output is =[%0p]",out);
    out=x<=y;
    $display("your's relation operator less than equal to output is =[%0p]",out);
  
  end
endmodule

output if 0 show's its true;
output if 1 show's its false;

your's relation operator greater than output is =[0]
your's relation operator greater than equal to output is =[1]
your's relation operator less than output is =[0]
your's relation operator less than equal to output is =[1]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Fri Aug  1 05:18:36 2025
Done
