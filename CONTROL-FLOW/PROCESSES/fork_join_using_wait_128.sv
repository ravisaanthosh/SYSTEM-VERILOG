module fork_join_using_wait_128;
  initial begin
    fork begin
      #5;
      $display("process-----1");
    end
      begin
        #10;
        $display("process----2");
      end
      
        begin
        #20;
          $display("process----3");
      end  
    join_any begin
      wait fork;
        $display("fork_join_using_wait is successfully");
        end
        end
        endmodule

        Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 17 04:32 2025
process-----1
process----2
process----3
fork_join_using_wait is successfully
           V C S   S i m u l a t i o n   R e p o r t 
