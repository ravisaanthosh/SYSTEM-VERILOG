module multi_fixed_array_65;
  logic [2:0][3:0] multi_fix_array[3][4]; 

  initial begin
    multi_fix_array[0][0] = '{4'd1, 4'd2, 4'd3};
    multi_fix_array[0][1] = '{4'd4, 4'd5, 4'd6};
    multi_fix_array[0][2] = '{4'd7, 4'd8, 4'd9};
    multi_fix_array[0][3] = '{4'd10, 4'd11, 4'd12};

    multi_fix_array[1][0] = '{4'd13, 4'd14, 4'd15};
    multi_fix_array[1][1] = '{4'd0, 4'd1, 4'd2};
    multi_fix_array[1][2] = '{4'd3, 4'd4, 4'd5};
    multi_fix_array[1][3] = '{4'd6, 4'd7, 4'd8};

    multi_fix_array[2][0] = '{4'd9, 4'd10, 4'd11};
    multi_fix_array[2][1] = '{4'd12, 4'd13, 4'd14};
    multi_fix_array[2][2] = '{4'd15, 4'd0, 4'd1};
    multi_fix_array[2][3] = '{4'd2, 4'd3, 4'd4};
    foreach (multi_fix_array[i, j]) begin
      $display("multi_fix_array[%0d][%0d] = %p", i, j, multi_fix_array[i][j]);
    end
  end
endmodule

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 12:16 2025
multi_fix_array[0][0] =  291
multi_fix_array[0][1] = 1110
multi_fix_array[0][2] = 1929
multi_fix_array[0][3] = 2748
multi_fix_array[1][0] = 3567
multi_fix_array[1][1] =   18
multi_fix_array[1][2] =  837
multi_fix_array[1][3] = 1656
multi_fix_array[2][0] = 2475
multi_fix_array[2][1] = 3294
multi_fix_array[2][2] = 3841
multi_fix_array[2][3] =  564
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.380 seconds;       Data structure size:   0.0Mb
Tue Jul 29 12:16:50 2025
