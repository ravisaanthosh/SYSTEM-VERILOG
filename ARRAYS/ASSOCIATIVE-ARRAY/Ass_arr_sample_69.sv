module as_array_sample_69;
  shortint ass_array_1[shortint];
  string ass_array_2[string];
  initial begin
    ass_array_1='{0:10,2:15,3:20,4:50,7:80};
    ass_array_2='{"GREEN":5,"RED":4,"YELLOW":3};
    $display("your overall output for ass_array_1[=%p]",ass_array_1);
    $display("value of 2 is=[%0d]",ass_array_1[2]);
    $display("value of green=[%0d]",ass_array_2["GREEN"]);
    $display("overall colours in ass_array_2=[%p]",ass_array_2);
  end
endmodule


your overall output for ass_array_1[='{0x0:10, 0x2:15, 0x3:20, 0x4:50, 0x7:80} ]
value of 2 is=[15]
value of green=[5]
overall colours in ass_array_2=['{"GREEN":"", "RED":"", "YELLOW":""} ]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.540 seconds;       Data structure size:   0.0Mb
Wed Jul 30 04:10:57 2025
