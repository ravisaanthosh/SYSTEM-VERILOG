class digital;
  string mux;
  string de_mux;
 virtual task preview();
   $display("parent:your's value of =%0s, and =%0s",mux,de_mux);
 endtask
endclass

class verilog extends digital;
  string mux;
  string de_mux;
  task preview();
    $display("child:your's value of =%0s, and =%0s",mux,de_mux);
  endtask
endclass

module tb;
  digital d1;
  verilog v1;
  initial begin
    v1=new();
    d1=v1;
    v1.mux="multiple_input";
    v1.de_mux="multiple_output";
    
    d1.mux="MULTIPLE_INPUT_DATA_SELECTOR";
    d1.de_mux="MULTIPLE_OUTPUT_DATA_SELECTOR";
    v1.preview();
    d1.preview();
  end
endmodule
    
    child:your's value of =multiple_input, and =multiple_output
child:your's value of =multiple_input, and =multiple_output
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Tue Sep  9 05:00:50 2025
