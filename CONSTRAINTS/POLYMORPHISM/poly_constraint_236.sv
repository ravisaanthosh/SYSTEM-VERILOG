class parent ;
  rand bit [7:0]tom;
  rand bit [7:0]jerry;
virtual  function preview();
  $display("PARENT:Dad tom age between =[%0d] \n  Dad jerry age between =[%0d]",tom,jerry);
endfunction
  
    constraint c1 {tom inside {[35:45]};
                 jerry inside {30,35};}
endclass


class child extends parent;
  rand bit [7:0]tom;
  rand bit [7:0]jerry;
  function preview();
    super.preview();
    $display("CHILD:Son tom between =[%0d] \n   Son jerry age between =[%0d]",tom,jerry);
       endfunction
constraint c2 {tom inside {[35:45]};
                 jerry inside {30,35};}
endclass

module tb;
  parent p1;
  child c1;
  initial begin
    c1=new();
    p1=c1;
    repeat(10)begin
      p1.randomize();
      c1.randomize();
      
     p1.preview();
      c1.preview();
      
      $display("<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>");
    end
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 02:53 2025
PARENT:Dad tom age between =[37] 
  Dad jerry age between =[35]
CHILD:Son tom between =[45] 
   Son jerry age between =[35]
PARENT:Dad tom age between =[37] 
  Dad jerry age between =[35]
CHILD:Son tom between =[45] 
   Son jerry age between =[35]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[43] 
  Dad jerry age between =[35]
CHILD:Son tom between =[41] 
   Son jerry age between =[30]
PARENT:Dad tom age between =[43] 
  Dad jerry age between =[35]
CHILD:Son tom between =[41] 
   Son jerry age between =[30]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[36] 
  Dad jerry age between =[35]
CHILD:Son tom between =[37] 
   Son jerry age between =[30]
PARENT:Dad tom age between =[36] 
  Dad jerry age between =[35]
CHILD:Son tom between =[37] 
   Son jerry age between =[30]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[37] 
  Dad jerry age between =[30]
CHILD:Son tom between =[43] 
   Son jerry age between =[35]
PARENT:Dad tom age between =[37] 
  Dad jerry age between =[30]
CHILD:Son tom between =[43] 
   Son jerry age between =[35]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[38] 
  Dad jerry age between =[35]
CHILD:Son tom between =[44] 
   Son jerry age between =[35]
PARENT:Dad tom age between =[38] 
  Dad jerry age between =[35]
CHILD:Son tom between =[44] 
   Son jerry age between =[35]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[35] 
  Dad jerry age between =[35]
CHILD:Son tom between =[35] 
   Son jerry age between =[30]
PARENT:Dad tom age between =[35] 
  Dad jerry age between =[35]
CHILD:Son tom between =[35] 
   Son jerry age between =[30]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[36] 
  Dad jerry age between =[35]
CHILD:Son tom between =[42] 
   Son jerry age between =[35]
PARENT:Dad tom age between =[36] 
  Dad jerry age between =[35]
CHILD:Son tom between =[42] 
   Son jerry age between =[35]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[43] 
  Dad jerry age between =[35]
CHILD:Son tom between =[41] 
   Son jerry age between =[30]
PARENT:Dad tom age between =[43] 
  Dad jerry age between =[35]
CHILD:Son tom between =[41] 
   Son jerry age between =[30]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[44] 
  Dad jerry age between =[30]
CHILD:Son tom between =[37] 
   Son jerry age between =[35]
PARENT:Dad tom age between =[44] 
  Dad jerry age between =[30]
CHILD:Son tom between =[37] 
   Son jerry age between =[35]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
PARENT:Dad tom age between =[45] 
  Dad jerry age between =[35]
CHILD:Son tom between =[44] 
   Son jerry age between =[30]
PARENT:Dad tom age between =[45] 
  Dad jerry age between =[35]
CHILD:Son tom between =[44] 
   Son jerry age between =[30]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Tue Sep 30 02:53:29 2025
