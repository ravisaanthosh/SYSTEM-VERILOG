module un_pck 2d_static_63;
  byte abc[6:0][7:0];
  initial begin
  foreach(abc[i])begin
    foreach(abc[i][j])begin
        abc[i][j]=$urandom_range(0,100);
        $display("your's un_packed_static_array output is=%0p",i,abc[i][j]);
    end
  end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 06:54 2025
your's un_packed_static_array output is=6          3
your's un_packed_static_array output is=6         41
your's un_packed_static_array output is=6         81
your's un_packed_static_array output is=6          0
your's un_packed_static_array output is=6        100
your's un_packed_static_array output is=6         30
your's un_packed_static_array output is=6         73
your's un_packed_static_array output is=6         19
your's un_packed_static_array output is=5         52
your's un_packed_static_array output is=5         60
your's un_packed_static_array output is=5         12
your's un_packed_static_array output is=5         83
your's un_packed_static_array output is=5          4
your's un_packed_static_array output is=5         72
your's un_packed_static_array output is=5         30
your's un_packed_static_array output is=5         75
your's un_packed_static_array output is=4         54
your's un_packed_static_array output is=4          0
your's un_packed_static_array output is=4          9
your's un_packed_static_array output is=4          1
your's un_packed_static_array output is=4         84
your's un_packed_static_array output is=4         20
your's un_packed_static_array output is=4         97
your's un_packed_static_array output is=4         55
your's un_packed_static_array output is=3          0
your's un_packed_static_array output is=3         87
your's un_packed_static_array output is=3         72
your's un_packed_static_array output is=3         38
your's un_packed_static_array output is=3         38
your's un_packed_static_array output is=3         65
your's un_packed_static_array output is=3         36
your's un_packed_static_array output is=3         46
your's un_packed_static_array output is=2         39
your's un_packed_static_array output is=2         80
your's un_packed_static_array output is=2          7
your's un_packed_static_array output is=2         23
your's un_packed_static_array output is=2         23
your's un_packed_static_array output is=2         87
your's un_packed_static_array output is=2          8
your's un_packed_static_array output is=2         20
your's un_packed_static_array output is=1         98
your's un_packed_static_array output is=1         76
your's un_packed_static_array output is=1         74
your's un_packed_static_array output is=1         70
your's un_packed_static_array output is=1         56
your's un_packed_static_array output is=1         11
your's un_packed_static_array output is=1         92
your's un_packed_static_array output is=1         29
your's un_packed_static_array output is=0         42
your's un_packed_static_array output is=0         89
your's un_packed_static_array output is=0         77
your's un_packed_static_array output is=0         68
your's un_packed_static_array output is=0        100
your's un_packed_static_array output is=0         25
your's un_packed_static_array output is=0         43
your's un_packed_static_array output is=0          7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Tue Jul 29 06:54:25 2025
