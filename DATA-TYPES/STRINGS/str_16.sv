module str_16;
  string A="DESIGN	";
  string B="AND	";
  string C="VERIFICATION	";
  string D="ENGINEER	";
  initial begin
    $display({A,B,C,D});
  end 
endmodule

result
# KERNEL: DESIGN	AND	VERIFICATION	ENGINEER	
