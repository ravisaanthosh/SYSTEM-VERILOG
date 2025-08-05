module loop_forever_92;
  shortint trail;
  initial begin
    trail=10;
    forever begin
      $display("your's forever loop output is=[%0d]",trail);
      #5 trail++;
    end
  end
  initial begin
    #50 $finish;
  end
endmodule

your's forever loop output is=[10]
your's forever loop output is=[11]
your's forever loop output is=[12]
your's forever loop output is=[13]
your's forever loop output is=[14]
your's forever loop output is=[15]
your's forever loop output is=[16]
your's forever loop output is=[17]
your's forever loop output is=[18]
your's forever loop output is=[19]
$finish called from file "design.sv", line 11.
$finish at simulation time                   50
           V C S   S i m u l a t i o n   R e p o r t 
Time: 50 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Tue Aug  5 08:24:26 2025
