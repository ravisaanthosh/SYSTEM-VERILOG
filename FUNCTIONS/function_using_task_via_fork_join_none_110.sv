module function_using_task_via_fork_join_none_110;
  initial begin
    void'(func_t);
  end
  function func_t;
    fork
      task_call;
    join_none;
  endfunction
  task task_call;
    $display("vanakam da mapla 'task-kuu' function la eruthu");
  endtask
endmodule


vanakam da mapla 'task-kuu' function la eruthu
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Sat Aug  9 04:02:00 2025
