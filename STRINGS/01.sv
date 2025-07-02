module str;
  string A="VERILOG";
  string B="SYSTEM VERILOG";
  string C="UNIVERSAL VERIFICATION METHODOLOGY";
  
  initial begin
    $display("A=%S,B=%S,C=%S",A,B,C);
    $finish;
  end
endmodule
