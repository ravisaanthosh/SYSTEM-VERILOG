module func_pass_by_ref;
  initial begin
  int a=5;
  int result;
  result = func(a);
  $display(a,result);
  end
  function automatic int func( ref int b);
    b = 10;
    return b;
  endfunction
endmodule

         10         10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 08, 2025 at 03:55:22 EDT  (total: 00:00:01)
Done
