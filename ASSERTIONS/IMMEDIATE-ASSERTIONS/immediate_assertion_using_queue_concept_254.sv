interface fifo;
  logic clk;
  logic fifo_full;
  logic fifo_empty;
  logic push;
  logic pop;
endinterface


module divice(fifo fi);
  always@(posedge fi.clk)begin
    if(fi.fifo_full)begin
      assert(!fi.push)
        $display("PASS:--->DATA WRITING INTO LOCATION");
        else
          $error("FAIL:----> NO MORE STORAGE HERE ");
     
    end
    
    if(fi.fifo_empty)begin
      assert(!fi.pop)
        $display("PASS:---->DATA READING INTO LOCATION");
        else
          $info("FAIL:------> NO MORE STORAGE HERE");
      
    end
  end
endmodule



module tb;
  fifo fi();
  divice dut (fi);
  initial fi.clk=0;
    always #10 fi.clk=~fi.clk;
  initial begin
    for(int i=0; i<10; i++)begin
      fi.fifo_full=$random;
      fi.fifo_empty=$random;
      fi.push=$random;
      fi.pop=$random;
    end
  end
  initial begin
    $monitor("PUSH=[%0d],FIFO_FULL=[%0d],POP=[%0d],FIFO_EMPTY=[%0d]",fi.push,fi.fifo_full,fi.pop,fi.fifo_empty);
    @(posedge fi.clk);
      $finish;
  end
endmodule



PUSH=[1],FIFO_FULL=[0],POP=[1],FIFO_EMPTY=[1]
"design.sv", 21: tb.dut.unnamed$$_1: started at 10ns failed at 10ns
	Offending '(!fi.pop)'
Info: "design.sv", 21: tb.dut.unnamed$$_1: at time 10 ns
FAIL:------> NO MORE STORAGE HERE
$finish called from file "design.sv", line 48.
$finish at simulation time                   10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 10 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Mon Oct 13 05:58:56 2025
