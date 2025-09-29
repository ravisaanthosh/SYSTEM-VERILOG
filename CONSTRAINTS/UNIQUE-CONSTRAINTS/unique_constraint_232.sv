class unique_keyword;
  rand bit [7:0]dyn_var[];
  rand bit [7:0]name[string];
  rand bit [7:0]queue[$];
  constraint c1{unique {dyn_var};
                unique {name};
                unique {queue};}
endclass


module tb;
  unique_keyword u1;
  initial begin
    u1=new();
    u1.dyn_var=new[5];
    u1.dyn_var='{10,20,30,40,50};
    u1.name["TOM"]=25;
    u1.name ["JERRY"]=30;
    u1.queue='{60,70,80,90,100};
    
    
    repeat(5)begin
       u1.randomize();
      $display("dyn_var=[%0p]\n name=[%0p] \n queue=[%0p]",u1.dyn_var,u1.name,u1.queue);
    end
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 29 09:27 2025
dyn_var=['{'h29, 'he4, 'h30, 'h41, 'hde} ]
 name=['{"JERRY":'h6d, "TOM":'h10} ] 
 queue=['{'hf4, 'h34, 'heb, 'h78, 'hc5} ]
dyn_var=['{'hc, 'ha9, 'hfd, 'h79, 'h10} ]
 name=['{"JERRY":'hf1, "TOM":'h7} ] 
 queue=['{'h1c, 'h2c, 'hdc, 'h94, 'hce} ]
dyn_var=['{'hef, 'h96, 'h8e, 'had, 'h9} ]
 name=['{"JERRY":'h52, "TOM":'h2e} ] 
 queue=['{'ha3, 'h4a, 'ha6, 'hf6, 'h28} ]
dyn_var=['{'h44, 'hc, 'heb, 'h1b, 'h7f} ]
 name=['{"JERRY":'h21, "TOM":'hc8} ] 
 queue=['{'ha9, 'hfa, 'hfc, 'hd7, 'h54} ]
dyn_var=['{'haf, 'h98, 'h71, 'hcc, 'hb8} ]
 name=['{"JERRY":'ha3, "TOM":'hcd} ] 
 queue=['{'hd9, 'hc7, 'hbb, 'hb6, 'h1e} ]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.550 seconds;       Data structure size:   0.0Mb
Mon Sep 29 09:27:39 2025
Done
