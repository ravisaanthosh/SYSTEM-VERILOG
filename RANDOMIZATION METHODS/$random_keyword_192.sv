class toll_plaza;
  bit lmv;
  bit hmv;
  function preview();
    $display("no of vichles are crossed in toll_plaza \n LMV=%0d,\n HMV=%0d",lmv,hmv);
  endfunction
endclass

module tb;
  toll_plaza t1;
  initial begin
    t1=new();
    repeat (5)begin
      t1.lmv=$random;
      t1.hmv=$random;
      t1.preview();
    end
  end
endmodule

no of vichles are crossed in toll_plaza 
 LMV=0,
 HMV=1
no of vichles are crossed in toll_plaza 
 LMV=1,
 HMV=1
no of vichles are crossed in toll_plaza 
 LMV=1,
 HMV=1
no of vichles are crossed in toll_plaza 
 LMV=1,
 HMV=0
no of vichles are crossed in toll_plaza 
 LMV=1,
 HMV=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Fri Sep 19 00:47:48 2025
