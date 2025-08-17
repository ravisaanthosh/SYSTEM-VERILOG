module fork_join_none_126;
  initial begin
    fork begin
    #10;
      $display("process-1........");
    end
      begin
      #15;
      $display("process-2.........");
      end
        begin
      #20;
          $display("process-3.........");
      end
    join_none begin
      $display("join_none_operation_done.........");
      end
  end
endmodule

join_none_operation_done.........
process-1........
process-2.........
process-3.........
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Sun Aug 17 03:41:03 2025
Done
