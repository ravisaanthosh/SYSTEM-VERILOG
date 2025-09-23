// class ternery;
//   rand reg data;
//   rand reg [7:0]out;
  
//   constraint c1 {out==(data ? 2:5);}
// endclass

// module tb;
//   ternery t1;
//   initial begin
//     t1=new();
//     repeat(5)begin
//       t1.randomize();
//       $display("value of ternery are TRUE=%0d,FALSE=%0d,",t1.data,t1.out);
      
//     end
//   end
// endmodule


// value of ternery are TRUE=1,FALSE=2,
// value of ternery are TRUE=0,FALSE=5,
// value of ternery are TRUE=1,FALSE=2,
// value of ternery are TRUE=0,FALSE=5,
// value of ternery are TRUE=0,FALSE=5,
//            V C S   S i m u l a t i o n   R e p o r t 

class ternery;
  rand reg data;
  rand reg [7:0]out;
  
  constraint c1 {out==(data ? 2:5);}
endclass

module tb;
  ternery t1;
  initial begin
    t1=new();
    repeat(5)begin
      t1.randomize();
      $display("value of ternery are DATA=%0d,RESULT=%0d,",t1.data,t1.out);
      
    end
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 04:45 2025
value of ternery are DATA=1,RESULT=2,
value of ternery are DATA=0,RESULT=5,
value of ternery are DATA=1,RESULT=2,
value of ternery are DATA=0,RESULT=5,
value of ternery are DATA=0,RESULT=5,
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.460 seconds;       Data structure size:   0.0Mb
Tue Sep 23 04:45:25 2025
Done
