module task_simple_112;
  int mul_1;
  longint mul_2;
  int result;
  initial begin
    mul_1=10;
    mul_2=10;
    mul(mul_1,mul_2,result);
    $display("your's simple task's output is =[%0d]",result);
  end
  task mul(input int var1,input longint var2,output int res);
    res = var1*var2;
  endtask
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 11 06:51 2025
your's simple task's output is =[100]
           V C S   S i m u l a t i o n   R e p o r t 
