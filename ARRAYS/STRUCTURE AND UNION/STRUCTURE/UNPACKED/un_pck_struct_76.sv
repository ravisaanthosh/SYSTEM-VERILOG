module struc_without_typedef_;
  struct {string name;
         integer contact_number;
         string contact_mail;
         int pincode;
         }struct_data;
  initial begin
    struct_data.name="SANTHOSH";
    struct_data.contact_number=1000006567;
    struct_data.contact_mail="ravisaanthosh0662@gmail.com";
    struct_data.pincode=632602;
    $display("your's structure inside data=[%0p]",struct_data);
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 05:32 2025
your's structure inside data=['{name:"SANTHOSH", contact_number:1000006567, contact_mail:"ravisaanthosh0662@gmail.com", pincode:632602}]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Thu Jul 31 05:32:33 2025
Done
