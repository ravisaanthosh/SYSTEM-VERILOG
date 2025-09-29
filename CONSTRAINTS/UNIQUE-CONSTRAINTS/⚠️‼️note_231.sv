⚠️‼️ randc already ensures non-repetition automatically (within its domain).

⚠️‼️ unique is a constraint directive, not a generator property.

⚠️‼️ So if you try:

  class unique_keyword;
  randc bit[7:0]position_1;
  randc bit[7:0]position_2;
  constraint c1 {unique {position_1,position_2};}
endclass

module tb;
  unique_keyword u1;
  initial begin
    u1=new();
    repeat(10)begin
      u1.randomize();
      $display("position_1=[%0d],position_2=[%0d]",u1.position_1,u1.position_2);
    end
  end
endmodule


  
Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Top Level Modules:
       tb
TimeScale is 1 ns / 1 ns

Error-[IVCB-NORANDC] Illegal use of randc variable
design.sv, 4
$unit, "position_1"
  The expression contains the variable position_1 of type randc and cannot be 
  used in solve-before, distribution, unique and function calls.
  Change the type of the randc variable or remove it from the expression.

1 error
CPU time: .311 seconds to compile
Exit code expected: 0, received: 255
