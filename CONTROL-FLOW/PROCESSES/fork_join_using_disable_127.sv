module fork_join_using_disable_127;
  initial begin
    fork begin
      #10;
      $display("process------------A");
    end
      begin
        #15;
        $display("process----------B");
      end
           begin
        #20;
             $display("process--------c");
      end
    join_any begin
      disable fork;
        $display("disable_fork enabled successfully");
        end
        end
        endmodule

process------------A
disable_fork enabled successfully
           V C S   S i m u l a t i o n   R e p o r t 
Time: 10 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Sun Aug 17 04:13:17 2025
