module task_using_automatic_113;
  logic [7:0]count;
  logic [7:0]count_1;
  initial begin
   count =0;
   count_1=8;
    st(count,count_1);
    $display("your's task_using_automatic output is=[%0d]",count);
    $display("your's task_using_automatic output is=[%0d]",count_1);
  end
  task automatic st(input logic [7:0]var_1,input logic [7:0]var_2);
int i;
    for(i=0;i<8;i++)begin
      count++;
    end
    for(i=0;i<8;i++)begin
      count_1--;
    end
  endtask
endmodule

your's task_using_automatic output is=[8]
your's task_using_automatic output is=[0]
           V C S   S i m u l a t i o n   R e p o r t 
