module fork_join_124;
  initial begin
    fork begin
      #10;
      $display("process_1 done");
    end
      begin
        #15;
        $display("process_2 done");
      end
      begin
        #20;
        $display("process_3 done");
      end
    join begin
      $display("above the all process are completed");
    end
  end
endmodule

process_1 done
process_2 done
process_3 done
above the all process are completed
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Sun Aug 17 02:42:14 2025
