class immidate_assertion;
  bit [7:0]compare;
  function void preview();
    assume (compare >= 0 && compare <=12)
      $display("PASS:result of assume keyword=[%0d]",compare);
    else
      $display("FAIL:=[%0d]",compare);
  endfunction
endclass

module tb;
  immidate_assertion ia;
  initial begin
    ia=new();
  #5;  ia.compare=10;
    ia.preview();
   #10; ia.compare=13;
    ia.preview();
  end
endmodule


PASS:result of assume keyword=[10]
"design.sv", 5: $unit::\immidate_assertion::preview .unnamed$$_0: started at 15ns failed at 15ns
	Offending '((this.compare >= 8'b0) && (this.compare <= 8'h0c))'
FAIL:=[13]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 15 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Mon Oct 27 02:19:11 2025
