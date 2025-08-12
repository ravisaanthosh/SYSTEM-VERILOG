module event_simple_118;
  event signal;
  initial begin
   ->signal;
    $display($time,"signal triggerd");
  end
  initial begin
    wait(signal.triggered);
    $display($time,"signal captured from using wait");
  end
  initial begin
    @(signal.triggered);
    $display($time,"signal captured from using @");
  end
endmodule

                   0signal triggerd
                   0signal captured from using wait
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Tue Aug 12 05:52:35 2025
