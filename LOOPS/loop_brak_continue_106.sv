module loop_brak_continue_106;
  int array[12];
  initial begin
    for(int i=0; i<$size(array);i++)begin
      array[i]=i;
    end
    for(int i=0; i<$size(array);i++)begin
      if(i==3)break;
        $display("your's break_keyword for loop=[%0d]",i,array[i]);
    end
    for(int i=0; i<$size(array);i++)begin
      if(i==3)continue;
      $display("your's break_keyword for loop=[%0d]",i,array[i]);
    end
  end
endmodule

your's break_keyword for loop=[0]          0
your's break_keyword for loop=[1]          1
  your's break_keyword for loop=[2]          2//break
your's break_keyword for loop=[0]          0
your's break_keyword for loop=[1]          1
your's break_keyword for loop=[2]          2
  your's break_keyword for loop=[4]          4//continue
your's break_keyword for loop=[5]          5
your's break_keyword for loop=[6]          6
your's break_keyword for loop=[7]          7
your's break_keyword for loop=[8]          8
your's break_keyword for loop=[9]          9
your's break_keyword for loop=[10]         10
your's break_keyword for loop=[11]         11
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.390 seconds;       Data structure size:   0.0Mb
Fri Aug  8 00:42:06 2025
