module pck_using_wire59;
  wire[7:0]qwer;
  initial begin
    qwer=8'b1111001;
    $display("your's static packed array is=%b",qwer);
  end
endmodule

error!!!!!!!!!!
ALIB: Library "work" attached.
work = /home/runner/work/work.lib
ERROR VCP2858 "qwer is not a valid left-hand side of a procedural assignment." "design.sv" 22  20
FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."
Exit code expected: 0, received: 255

reason!!!!!!!!!!!!!!
Sure! Here's the English translation:

❌ **You cannot assign a value to a `wire` inside an `initial` block.**
✅ **For procedural assignments, you must use `reg` or `logic`.**

