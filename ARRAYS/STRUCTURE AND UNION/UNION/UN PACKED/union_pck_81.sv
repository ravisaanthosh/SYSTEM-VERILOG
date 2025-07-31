module union_pck_81;
  union{int san[1:0];
                shortint vig[1:0];
                reg lak_rav[1:0];}fam;
  initial begin
    fam.san=2'b11;
    $display("your's union packed data san is=[%0d]",fam);
    fam.vig=2'b11;
    $display("your's union packed data vig is=[%0d]",fam);
    fam.lak_rav=2'b11;
    $display("your's union packed data lak_rav is=[%0d]",fam);
    
    $display("your's union packed data lak_rav is=[%0p]",fam);
  end
endmodule


output 
tool error
........................synopsys,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

Error-[LCA_FEATURES_NEED_OPTION] Invalid usage
  Limited Customer Availability feature is used.
  The 'unpacked union' flow requires a special option.
  You can enable it by adding '-lca' to the command line.
''''''''''''''''''''''''''''''''''''''aldec,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
CPU time: .282 seconds to compile
Exit code expected: 0, received: 1

ERROR VCP9213 "Unpacked unions are not supported in this release. Please contact Aldec Support to receive the latest status." "design.sv" 2  3
FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."
Exit code expected: 0, received: 255

