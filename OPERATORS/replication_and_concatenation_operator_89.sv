module replication_and_concatenation_operator_89;
  bit [0:4]a,b,c;
  longint out;
  initial begin
    a=1'b1001;
    b=4'b1000;
    c=4'b0001;
    out={a,b,c};
    $display("your's concatenation operator result is =[%0b]",out);
    out= {a,b,{3{c}}};
    $display("your's concatenation operator result is =[%0b]",out);
  end
endmodule

your's concatenation operator result is =[10100000001]
your's concatenation operator result is =[101000000010000100001]
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Aug 04, 2025 at 09:37:05 EDT  (total: 00:00:02)
