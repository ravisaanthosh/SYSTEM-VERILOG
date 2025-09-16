class department;
  string subject_1="fair";
  string subject_2="poor";
  virtual function preview();
    $display("parent:results of subjects =%0s,=%0s",subject_1,subject_2);
  endfunction
endclass


class EEE extends department;
  string subject_1;
  string subject_2;
  function preview();
    $display("child:results of subjects =%0s,=%0s",subject_1,subject_2);
  endfunction
endclass

module tb;
  department d1;
  EEE e1;
  initial begin
    d1=new();
    e1=new();
    d1=e1;//downcasting
    $cast(e1,d1);//downcasting
    d1.subject_1="GRADE:A";
    d1.subject_2="GRADE:C";
    d1.preview();
    
    e1.subject_1="PASS";
    e1.subject_2="FAIL";
    e1.preview();
  end
endmodule



child:results of subjects =,=      >>>>> only seeing the child’s output because of dynamic dispatch (virtual) and because you hid the parent’s variables in the child.

To see parent output, either call super.preview() or don’t redeclare the variables in child.
child:results of subjects =PASS,=FAIL
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.370 seconds;       Data structure size:   0.0Mb
Tue Sep 16 04:47:59 2025
