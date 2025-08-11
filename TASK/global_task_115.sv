module global_task_115;
  int mul_1;
  int mul_2;
  int result;
  initial begin
    mul_1=5;
    mul_2=5;
    mul(mul_1,mul_2,result);
    $display("your's global task output is [%0d]",result);
  end
endmodule
  module global_task;
    int a;
    initial begin
     #5;
      mul(5,9,a);
      $display("your's global task output is [%0d]",a);
    end
  endmodule
task mul(input int var_1,input int var_2,output int res);
     #2 res=var_1*var_2;
    endtask

your's global task output is [25]
your's global task output is [45]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 7 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Mon Aug 11 09:12:19 2025
