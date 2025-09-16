class railway_station;
  string train_1;
  string train_2;
  
  function preview();
    if (train_1==train_2)
      $display("PARENT:IN_PLATFORM");
    else
      $display("PARENT:CANCELLED");
  endfunction
endclass
  
  class plat_form extends railway_station;
    string train_1;
    string train_2;
    string i;
    
    function preview();
      $display("CHILD:running status of child class =%0s,=%0s",train_1,train_2);
    endfunction
  endclass


module tb;
  
 railway_station track_1;
  plat_form track_2;
  
  initial begin
    
    track_2=new();
    track_1=track_2;
    
    track_1.train_1="SUPER_FAST";
    track_1.train_2="SUPER_FAST";
    track_1.preview();
    
    track_2.train_1="GOODS";
    track_2.train_2="MAIL";
    track_2.preview();
  end
endmodule
  

PARENT:IN_PLATFORM
CHILD:running status of child class =GOODS,=MAIL
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Tue Sep 16 04:20:56 2025
