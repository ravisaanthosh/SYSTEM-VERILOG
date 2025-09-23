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
      $display("value of ternery are TRUE=%0d,FALSE=%0d,",t1.data,t1.out);
      
    end
  end
endmodule


value of ternery are TRUE=1,FALSE=2,
value of ternery are TRUE=0,FALSE=5,
value of ternery are TRUE=1,FALSE=2,
value of ternery are TRUE=0,FALSE=5,
value of ternery are TRUE=0,FALSE=5,
           V C S   S i m u l a t i o n   R e p o r t 
