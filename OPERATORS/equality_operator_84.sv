module equality_operator_84;
  reg[3:0]x,y,z,out;
  initial begin
    x=4'b1xx0;
    y=4'b1110;
    z=4'b1xx0;
    out=(x==y);
    $display("your's equality_operator output for logical equality is=[%0d]",out);
    out=(x!==y);
    $display("your's equality_operator output for logical in-equality is=[%0d]",out);
    out=(x===z);
    $display("your's equality_operator output for case equality is=[%0d]",out);
    out=(x!==y);
    $display("your's equality_operator output for logical equality is=[%0d]",out);
  end
endmodule

your's equality_operator output for logical equality is=[X]
your's equality_operator output for logical in-equality is=[1]
your's equality_operator output for case equality is=[1]
your's equality_operator output for logical equality is=[1]
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 01, 2025 at 06:20:10 EDT  (total: 00:00:02)
Done
