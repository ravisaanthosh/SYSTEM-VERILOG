module dyn_arr_un_pck_using_delete_feature_68;
  integer dy_arr[];
  initial begin
    dy_arr=new[7];
    dy_arr='{20,10,30,15,24,13,50,14};
    foreach(dy_arr[i])begin
      $display("your's dynamic array's output =[%0d]",i,dy_arr[i]);
    end
  end
    initial begin
      dy_arr.delete;
       $display("after deleting dynamic array=[%0b]",dy_arr.size());
     end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 01:13 2025
your's dynamic array's output =[0]         20
your's dynamic array's output =[1]         10
your's dynamic array's output =[2]         30
your's dynamic array's output =[3]         15
your's dynamic array's output =[4]         24
your's dynamic array's output =[5]         13
your's dynamic array's output =[6]         50
your's dynamic array's output =[7]         14
after deleting dynamic array=[0]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.310 seconds;       Data structure size:   0.0Mb
Wed Jul 30 01:13:41 2025
