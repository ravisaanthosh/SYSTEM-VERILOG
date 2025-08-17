module fork_join_any_125;
  initial begin
    fork begin
      #10;
      $display("process-1....strating");
    end
      begin
          #15;
        $display("process-2....strating");
    end
        begin
          #20;
          $display("process-3....strating");
    end
    join_any begin
      $display("completed by fork_join_any_one");
    end
  end
endmodule

process-1....strating
completed by fork_join_any_one
process-2....strating
process-3....strating
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.330 seconds;       Data structure size:   0.0Mb
Sun Aug 17 03:05:42 2025
