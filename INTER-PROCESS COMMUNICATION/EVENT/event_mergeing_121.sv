module event_mergeing_121;
  event signal_1;
  event signal_2;
  initial begin
    #10;signal_1=signal_2;
    #5;->signal_1;
    $display("successfuly triggered in signal_1");
   wait(signal_2.triggered);
    $display("sucessfuly triggered in signal_2 using singnal_1");
  end
endmodule


successfuly triggered in signal_1
sucessfuly triggered in signal_2 using singnal_1
           V C S   S i m u l a t i o n   R e p o r t 
