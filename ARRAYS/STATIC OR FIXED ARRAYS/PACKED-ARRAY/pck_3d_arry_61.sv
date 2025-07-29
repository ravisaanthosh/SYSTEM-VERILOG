module pck_3d_arry_61;
  bit[3:0][2:0][1:0]pck_3d_array;
  initial begin
    pck_3d_array=3'b111;
    foreach(pck_3d_array[i])begin
      foreach(pck_3d_array[i][j])begin
        foreach(pck_3d_array[i][j][k])begin
          $display("your's pcaked 3-d=[%0d] arrays =[%0d]output is=[%0d]",i,j,k,pck_3d_array[i][j][k]);
        end
      end
    end
  end
    endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 02:18 2025
your's pcaked 3-d=[3] arrays =[2]output is=[1]0
your's pcaked 3-d=[3] arrays =[2]output is=[0]0
your's pcaked 3-d=[3] arrays =[1]output is=[1]0
your's pcaked 3-d=[3] arrays =[1]output is=[0]0
your's pcaked 3-d=[3] arrays =[0]output is=[1]0
your's pcaked 3-d=[3] arrays =[0]output is=[0]0
your's pcaked 3-d=[2] arrays =[2]output is=[1]0
your's pcaked 3-d=[2] arrays =[2]output is=[0]0
your's pcaked 3-d=[2] arrays =[1]output is=[1]0
your's pcaked 3-d=[2] arrays =[1]output is=[0]0
your's pcaked 3-d=[2] arrays =[0]output is=[1]0
your's pcaked 3-d=[2] arrays =[0]output is=[0]0
your's pcaked 3-d=[1] arrays =[2]output is=[1]0
your's pcaked 3-d=[1] arrays =[2]output is=[0]0
your's pcaked 3-d=[1] arrays =[1]output is=[1]0
your's pcaked 3-d=[1] arrays =[1]output is=[0]0
your's pcaked 3-d=[1] arrays =[0]output is=[1]0
your's pcaked 3-d=[1] arrays =[0]output is=[0]0
your's pcaked 3-d=[0] arrays =[2]output is=[1]0
your's pcaked 3-d=[0] arrays =[2]output is=[0]0
your's pcaked 3-d=[0] arrays =[1]output is=[1]0
your's pcaked 3-d=[0] arrays =[1]output is=[0]1
your's pcaked 3-d=[0] arrays =[0]output is=[1]1
your's pcaked 3-d=[0] arrays =[0]output is=[0]1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.470 seconds;       Data structure size:   0.0Mb
Tue Jul 29 02:18:29 2025
