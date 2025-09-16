class social_media;
  string facebook;
  string instagram;
  
  extern function preview_1();
    extern task preview_2();
      endclass
      
      
      function social_media :: preview_1();
        $display("FUNCTION:current status of social_media =%0s,=%0s",facebook,instagram);
      endfunction
      
      task social_media :: preview_2();
        $display("TASK:current status of social_media =%0s,=%0s",facebook,instagram);
      endtask
      
      module tb;
        social_media app;
        initial begin
          app=new();
          app.facebook="MEMES";
          app.instagram="REELS";
          app.preview_1();
          app.preview_2();
        end
      endmodule

FUNCTION:current status of social_media =MEMES,=REELS
TASK:current status of social_media =MEMES,=REELS
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Tue Sep 16 07:08:15 2025
