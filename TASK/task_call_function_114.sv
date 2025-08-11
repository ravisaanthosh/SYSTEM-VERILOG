module task_call_function_114;
  initial begin
    task_f;
  end
  task task_f;
    void'(f_task);
  endtask
  function f_task;
    $display("hi im function from task");
  endfunction
endmodule



hi im function from task
           V C S   S i m u l a t i o n   R e p o r t 
