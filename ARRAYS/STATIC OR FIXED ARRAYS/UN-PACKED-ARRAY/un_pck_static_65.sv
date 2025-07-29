module un_pck_static_65;
  byte abc[6:0][7:0][1:0];
  initial begin
  foreach(abc[i])begin
    foreach(abc[i][j])begin
      foreach(abc[i][j][k])begin
        abc[i][j][k]=$urandom_range(0,100);
        
        $display("your's un_packed_static_array output is=[%0d]=[%0d]=[%0d]",i,j,k,abc[i][j][k]);
    end
  end
  end
  end
endmodule


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 07:00 2025
your's un_packed_static_array output is=[6]=[7]=[1]          3
your's un_packed_static_array output is=[6]=[7]=[0]         41
your's un_packed_static_array output is=[6]=[6]=[1]         81
your's un_packed_static_array output is=[6]=[6]=[0]          0
your's un_packed_static_array output is=[6]=[5]=[1]        100
your's un_packed_static_array output is=[6]=[5]=[0]         30
your's un_packed_static_array output is=[6]=[4]=[1]         73
your's un_packed_static_array output is=[6]=[4]=[0]         19
your's un_packed_static_array output is=[6]=[3]=[1]         52
your's un_packed_static_array output is=[6]=[3]=[0]         60
your's un_packed_static_array output is=[6]=[2]=[1]         12
your's un_packed_static_array output is=[6]=[2]=[0]         83
your's un_packed_static_array output is=[6]=[1]=[1]          4
your's un_packed_static_array output is=[6]=[1]=[0]         72
your's un_packed_static_array output is=[6]=[0]=[1]         30
your's un_packed_static_array output is=[6]=[0]=[0]         75
your's un_packed_static_array output is=[5]=[7]=[1]         54
your's un_packed_static_array output is=[5]=[7]=[0]          0
your's un_packed_static_array output is=[5]=[6]=[1]          9
your's un_packed_static_array output is=[5]=[6]=[0]          1
your's un_packed_static_array output is=[5]=[5]=[1]         84
your's un_packed_static_array output is=[5]=[5]=[0]         20
your's un_packed_static_array output is=[5]=[4]=[1]         97
your's un_packed_static_array output is=[5]=[4]=[0]         55
your's un_packed_static_array output is=[5]=[3]=[1]          0
your's un_packed_static_array output is=[5]=[3]=[0]         87
your's un_packed_static_array output is=[5]=[2]=[1]         72
your's un_packed_static_array output is=[5]=[2]=[0]         38
your's un_packed_static_array output is=[5]=[1]=[1]         38
your's un_packed_static_array output is=[5]=[1]=[0]         65
your's un_packed_static_array output is=[5]=[0]=[1]         36
your's un_packed_static_array output is=[5]=[0]=[0]         46
your's un_packed_static_array output is=[4]=[7]=[1]         39
your's un_packed_static_array output is=[4]=[7]=[0]         80
your's un_packed_static_array output is=[4]=[6]=[1]          7
your's un_packed_static_array output is=[4]=[6]=[0]         23
your's un_packed_static_array output is=[4]=[5]=[1]         23
your's un_packed_static_array output is=[4]=[5]=[0]         87
your's un_packed_static_array output is=[4]=[4]=[1]          8
your's un_packed_static_array output is=[4]=[4]=[0]         20
your's un_packed_static_array output is=[4]=[3]=[1]         98
your's un_packed_static_array output is=[4]=[3]=[0]         76
your's un_packed_static_array output is=[4]=[2]=[1]         74
your's un_packed_static_array output is=[4]=[2]=[0]         70
your's un_packed_static_array output is=[4]=[1]=[1]         56
your's un_packed_static_array output is=[4]=[1]=[0]         11
your's un_packed_static_array output is=[4]=[0]=[1]         92
your's un_packed_static_array output is=[4]=[0]=[0]         29
your's un_packed_static_array output is=[3]=[7]=[1]         42
your's un_packed_static_array output is=[3]=[7]=[0]         89
your's un_packed_static_array output is=[3]=[6]=[1]         77
your's un_packed_static_array output is=[3]=[6]=[0]         68
your's un_packed_static_array output is=[3]=[5]=[1]        100
your's un_packed_static_array output is=[3]=[5]=[0]         25
your's un_packed_static_array output is=[3]=[4]=[1]         43
your's un_packed_static_array output is=[3]=[4]=[0]          7
your's un_packed_static_array output is=[3]=[3]=[1]         68
your's un_packed_static_array output is=[3]=[3]=[0]         69
your's un_packed_static_array output is=[3]=[2]=[1]         31
your's un_packed_static_array output is=[3]=[2]=[0]         82
your's un_packed_static_array output is=[3]=[1]=[1]         90
your's un_packed_static_array output is=[3]=[1]=[0]         46
your's un_packed_static_array output is=[3]=[0]=[1]         99
your's un_packed_static_array output is=[3]=[0]=[0]          3
your's un_packed_static_array output is=[2]=[7]=[1]         23
your's un_packed_static_array output is=[2]=[7]=[0]         92
your's un_packed_static_array output is=[2]=[6]=[1]         20
your's un_packed_static_array output is=[2]=[6]=[0]         74
your's un_packed_static_array output is=[2]=[5]=[1]         83
your's un_packed_static_array output is=[2]=[5]=[0]         75
your's un_packed_static_array output is=[2]=[4]=[1]         44
your's un_packed_static_array output is=[2]=[4]=[0]         97
your's un_packed_static_array output is=[2]=[3]=[1]         19
your's un_packed_static_array output is=[2]=[3]=[0]         21
your's un_packed_static_array output is=[2]=[2]=[1]         26
your's un_packed_static_array output is=[2]=[2]=[0]         93
your's un_packed_static_array output is=[2]=[1]=[1]         33
your's un_packed_static_array output is=[2]=[1]=[0]         28
your's un_packed_static_array output is=[2]=[0]=[1]         21
your's un_packed_static_array output is=[2]=[0]=[0]         72
your's un_packed_static_array output is=[1]=[7]=[1]         82
your's un_packed_static_array output is=[1]=[7]=[0]         48
your's un_packed_static_array output is=[1]=[6]=[1]          8
your's un_packed_static_array output is=[1]=[6]=[0]         81
your's un_packed_static_array output is=[1]=[5]=[1]         79
your's un_packed_static_array output is=[1]=[5]=[0]          8
your's un_packed_static_array output is=[1]=[4]=[1]         43
your's un_packed_static_array output is=[1]=[4]=[0]         73
your's un_packed_static_array output is=[1]=[3]=[1]         44
your's un_packed_static_array output is=[1]=[3]=[0]         64
your's un_packed_static_array output is=[1]=[2]=[1]         97
your's un_packed_static_array output is=[1]=[2]=[0]         11
your's un_packed_static_array output is=[1]=[1]=[1]         12
your's un_packed_static_array output is=[1]=[1]=[0]         74
your's un_packed_static_array output is=[1]=[0]=[1]         73
your's un_packed_static_array output is=[1]=[0]=[0]         84
your's un_packed_static_array output is=[0]=[7]=[1]         62
your's un_packed_static_array output is=[0]=[7]=[0]          0
your's un_packed_static_array output is=[0]=[6]=[1]         34
your's un_packed_static_array output is=[0]=[6]=[0]        100
your's un_packed_static_array output is=[0]=[5]=[1]         52
your's un_packed_static_array output is=[0]=[5]=[0]         46
your's un_packed_static_array output is=[0]=[4]=[1]         28
your's un_packed_static_array output is=[0]=[4]=[0]         94
your's un_packed_static_array output is=[0]=[3]=[1]          6
your's un_packed_static_array output is=[0]=[3]=[0]         12
your's un_packed_static_array output is=[0]=[2]=[1]         56
your's un_packed_static_array output is=[0]=[2]=[0]         98
your's un_packed_static_array output is=[0]=[1]=[1]         92
your's un_packed_static_array output is=[0]=[1]=[0]         60
your's un_packed_static_array output is=[0]=[0]=[1]         20
your's un_packed_static_array output is=[0]=[0]=[0]         67
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Tue Jul 29 07:00:36 2025
Done
