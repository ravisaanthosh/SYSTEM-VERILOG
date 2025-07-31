module struct_using_type_def_77;
  typedef struct{string name;
                integer cont_no;
                int pin_code;
                 string location;}struct_data;
  struct_data sd_1,sd_2;
  initial begin
    sd_1.name="SAN";
    sd_1.cont_no="2045464";
    sd_1.pin_code="632602";
    sd_1.location="gym";
    $display("struct_data_without using variable=%0p",sd_1);
    
    sd_2='{"ravi",5665,5648,"vlr"};
    $display("struct_data_ using variable=%0p",sd_2);
  end
endmodule

struct_data_without using variable='{name:"SAN", cont_no:892614196, pin_code:842412082, location:"gym"}
struct_data_ using variable='{name:"ravi", cont_no:5665, pin_code:5648, location:"vlr"}
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Thu Jul 31 05:58:33 2025
    
