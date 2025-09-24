class results;
  randc bit [7:0]student_1;
  randc bit [7:0]student_2;
  randc bit [7:0]student_3;
  constraint c1 {student_1 inside {40,20,[10:50]};
                 student_2 inside {60,30,[50:80]};
                 student_3 inside {80,60,[90:120]};}
endclass


module tb;
  results r1;
  initial begin
    r1=new();
    repeat(10)begin
      r1.randomize();
      $display("result of student_1=[%0d] \t result of student_2=[%0d] \t result of student_3=[%0d]",r1.student_1,r1.student_2,r1.student_3);
    end
  end
endmodule

result of student_1=[23] 	 result of student_2=[71] 	 result of student_3=[119]
result of student_1=[25] 	 result of student_2=[67] 	 result of student_3=[113]
result of student_1=[39] 	 result of student_2=[66] 	 result of student_3=[96]
result of student_1=[41] 	 result of student_2=[68] 	 result of student_3=[95]
result of student_1=[49] 	 result of student_2=[52] 	 result of student_3=[108]
result of student_1=[50] 	 result of student_2=[57] 	 result of student_3=[114]
result of student_1=[36] 	 result of student_2=[79] 	 result of student_3=[93]
result of student_1=[48] 	 result of student_2=[30] 	 result of student_3=[92]
result of student_1=[27] 	 result of student_2=[69] 	 result of student_3=[94]
result of student_1=[19] 	 result of student_2=[77] 	 result of student_3=[112]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.410 seconds;       Data structure size:   0.0Mb
Wed Sep 24 08:48:33 2025
