class railway_station;
  string super_fast_express;
  string mail_express;
endclass

module tb;
  railway_station platform_1,platform_2;
  initial begin
    platform_1=new();
    platform_1.super_fast_express="ready to depart";
    platform_2=new platform_1;
    $display("train current location at =[%0s]",platform_1.super_fast_express);
    $display("train current location at =[%0s]",platform_2.super_fast_express);
    
    platform_2.mail_express="The_train_will_be_one_hour_late";
    $display("train current location at =[%0s]",platform_1.super_fast_express);
    $display("train current location at =[%0s]",platform_2.mail_express);
  end
endmodule
//copy all the class members 
//not copied class object 


Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 25 02:59 2025
train current location at =[ready to depart]
train current location at =[ready to depart]
train current location at =[ready to depart]
train current location at =[The_train_will_be_one_hour_late]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Mon Aug 25 02:59:41 2025
