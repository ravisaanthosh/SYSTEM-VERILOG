
...............!!!!this code contains some logical error fix soon as possible!!!!...................... 

class railway_station;
  string super_fast_express;
  string local_memo_fast;
  string medical_emergency;
endclass

class rs;
  string goods_train;
  railway_station track;
endclass

module tb;
  rs plat_form_1, plat_form_2;

  initial begin
    
    plat_form_1 = new();
    plat_form_1.track = new();

    plat_form_1.track.super_fast_express = "train cancelled due to heavy rain";
    plat_form_1.track.local_memo_fast    = "nungabakkam to tambaram only";
    plat_form_1.track.medical_emergency  = "no issue";
    
    $display("your's object copying method using shallow copy for superfast express %0s,for localmemofast %0s ,for medical emergency %0s",plat_form_1.track.super_fast_express,plat_form_1.track.local_memo_fast,plat_form_1.track.medical_emergency);

    
    plat_form_2 = new plat_form_1;

    $display("your's object copying method using shallow copy for superfast express %0s,for localmemofast %0s, for medical emergency %0s",plat_form_2.track.super_fast_express,plat_form_2.track.local_memo_fast,plat_form_2.track.medical_emergency);

    
    //plat_form_2.goods_train = "signal_issues_track";
    plat_form_2.track.medical_emergency = "accident emergency rescue";
    plat_form_2.track.super_fast_express = "arrived before 20mins";

    
    $display("your's object copying method using shallow copy for superfast express %0s,for medical emergency %0s",plat_form_1.track.super_fast_express,plat_form_1.track.medical_emergency);

    $display("your's object copying method using shallow copy for superfast express %0s,for medical emergency %0s",plat_form_2.track.super_fast_express,plat_form_2.track.medical_emergency);
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 25 06:25 2025
your's object copying method using shallow copy for superfast express train cancelled due to heavy rain,for localmemofast nungabakkam to tambaram only ,for medical emergency no issue
your's object copying method using shallow copy for superfast express train cancelled due to heavy rain,for localmemofast nungabakkam to tambaram only, for medical emergency no issue
your's object copying method using shallow copy for superfast express arrived before 20mins,for medical emergency accident emergency rescue
your's object copying method using shallow copy for superfast express arrived before 20mins,for medical emergency accident emergency rescue
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Mon Aug 25 06:25:23 2025
