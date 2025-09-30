class parent ;
  rand bit [7:0]appa;
  rand bit [7:0]amma;
  constraint c1 {appa inside {[35:45]};
                 amma inside {30,35};}
endclass


class child extends parent;
  rand bit [7:0]son;
  rand bit [7:0]daughter;
  constraint c2{son inside {[10:15]};
                daughter inside{10,12};}
endclass

module tb;
  parent p1;
  child c1;
  initial begin
    p1=new();
    c1=new();
    repeat(10)begin
      p1.randomize();
      c1.randomize();
      $display("appa age between =[%0d] \n  amma age between =[%0d]",p1.appa,p1.amma);
      
      $display("son age between =[%0d] \n   daughter age between =[%0d]",c1.son,c1.daughter);
      $display("<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>");
    end
  end
endmodule


appa age between =[37] 
  amma age between =[30]
son age between =[11] 
   daughter age between =[12]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[37] 
  amma age between =[35]
son age between =[14] 
   daughter age between =[10]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[41] 
  amma age between =[30]
son age between =[15] 
   daughter age between =[12]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[43] 
  amma age between =[35]
son age between =[13] 
   daughter age between =[12]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[37] 
  amma age between =[35]
son age between =[15] 
   daughter age between =[12]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[36] 
  amma age between =[35]
son age between =[14] 
   daughter age between =[10]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[45] 
  amma age between =[30]
son age between =[13] 
   daughter age between =[12]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[37] 
  amma age between =[30]
son age between =[10] 
   daughter age between =[12]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[41] 
  amma age between =[30]
son age between =[11] 
   daughter age between =[12]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
appa age between =[38] 
  amma age between =[35]
son age between =[14] 
   daughter age between =[12]
<<<<<~~~~~~~~_______--------________~~~~~~~~_________~~~~~~_______------->>>>>
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Tue Sep 30 02:22:51 2025
Done
