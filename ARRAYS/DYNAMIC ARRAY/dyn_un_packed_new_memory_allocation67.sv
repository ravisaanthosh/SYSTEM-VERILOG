module dynamic_array_new_memory_allocation;
  longint dyn_arr[];
  initial begin
    dyn_arr=new[7];
    dyn_arr='{10,20,30,40,50,60,70};
    foreach(dyn_arr[i])begin
      $display("your's dynamic array's output =[%0d]",i,dyn_arr[i]);
    end
  end
endmodule

Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 00:34 2025
your's dynamic array's output =[0]                  10
your's dynamic array's output =[1]                  20
your's dynamic array's output =[2]                  30
your's dynamic array's output =[3]                  40
your's dynamic array's output =[4]                  50
your's dynamic array's output =[5]                  60
your's dynamic array's output =[6]                  70
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.310 seconds;       Data structure size:   0.0Mb
Wed Jul 30 00:34:54 2025
Done
