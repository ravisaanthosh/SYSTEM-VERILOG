class school;
  bit[8:0]student_1;
 task preview_1();
    $display("score of the student_1=%0d",student_1);
 endtask
endclass


class college extends school;
  reg[8:0]student_2;
  task  preview_2();
    $display("score of the student_2 =%0d",student_2);
    endtask
endclass


module tb;
  school s1;
  college c1;
  initial begin
    s1=new();
    c1=new();
    repeat(4)begin
    s1.student_1=$urandom_range(20,60);
    c1.student_2=$urandom_range(60,100);
      s1.preview_1();
      c1.preview_2();
    end
  end
endmodule


score of the student_1=37
score of the student_2 =66
score of the student_1=32
score of the student_2 =73
score of the student_1=51
score of the student_2 =88
score of the student_1=50
score of the student_2 =81
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Fri Sep 19 01:35:07 2025
    
