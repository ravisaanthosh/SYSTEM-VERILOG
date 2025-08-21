class parent_class;
  int son;
   function parent_function();
    $display("value of son=[%0d]",son);
  endfunction
endclass

class child_class extends parent_class;
  longint daughter;
  function child_function();
    $display("value of daughter=[%0d]",daughter);
  endfunction
endclass

module tb;
  child_class grand_son;
  initial begin
    grand_son=new();
    grand_son.son=100;
    grand_son.daughter=200;
    
    grand_son.parent_function();
    grand_son.child_function();
  end
endmodule

value of son=[100]
value of daughter=[200]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Thu Aug 21 06:02:07 2025
