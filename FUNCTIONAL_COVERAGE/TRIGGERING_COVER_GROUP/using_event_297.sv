module trigger;
  bit a;
  event b;
  covergroup cover_0 @(b.triggered);
    l1:coverpoint a;
  endgroup
  cover_0 c1;
  initial begin
    c1=new();
    repeat(10)begin
      ->b;
      a=$random();
      
      $display("a=[%0d],coverage=[%0f]",a,c1.get_inst_coverage());
    end
  end
endmodule
a=[0],coverage=[0.000000]
a=[1],coverage=[0.000000]
a=[1],coverage=[0.000000]
a=[1],coverage=[0.000000]
a=[1],coverage=[0.000000]
a=[1],coverage=[0.000000]
a=[1],coverage=[0.000000]
a=[0],coverage=[0.000000]
a=[1],coverage=[0.000000]
a=[1],coverage=[0.000000]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:    
