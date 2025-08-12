module event_using_wait_order_feature_120;
  event signal_s1;
  event signal_s2;
  event signal_s3;
  event signal_s4;
  event signal_s5;
  initial begin
    fork
      begin
      #10;->signal_s1;
      $display("your's signal_s1 are triggered");
      end
      begin
      #15;->signal_s2;
        $display("your's signal_s2 are triggered");
      end
      begin
      #20;->signal_s3;
        $display("your's signal_s3 are triggered");
      end
      begin
      #2;->signal_s4;
        $display("your's signal_s4 are triggered");
      end
      begin
      #1;->signal_s5;
        $display("your's signal_s5 are triggered");
      end
      begin
        wait_order(signal_s5,signal_s4,signal_s1,signal_s2,signal_s3)
        $display("your's event wait_order are capture successfully");
        else
          $display("your's event wait_order are incorrect fix a code");
      end
    join
  end


  Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 12 07:00 2025
your's signal_s5 are triggered
your's signal_s4 are triggered
your's signal_s1 are triggered
your's signal_s2 are triggered
your's signal_s3 are triggered
your's event wait_order are capture successfully
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.550 seconds;       Data structure size:   0.0Mb
Tue Aug 12 07:00:03 2025
endmodule
