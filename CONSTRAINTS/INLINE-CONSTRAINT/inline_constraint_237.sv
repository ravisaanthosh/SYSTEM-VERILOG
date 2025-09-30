class inline;
  rand bit [7:0]seq_a;
  rand bit [7:0]seq_b;
  constraint c1{soft seq_a  inside{[20:55]};
                soft seq_b  inside {[2:15]};
               }
endclass



module tb;
  inline l1;
  initial begin
    l1 = new();
    repeat(50) begin
      l1.randomize() with { seq_a == (seq_b - 2); };
      l1.randomize() with { seq_b == (seq_a + 2); };
      $display("seq_a=[%0d], seq_b=[%0d]", l1.seq_a, l1.seq_b);
    end
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 05:56 2025
seq_a=[10], seq_b=[12]
seq_a=[6], seq_b=[8]
seq_a=[8], seq_b=[10]
seq_a=[4], seq_b=[6]
seq_a=[5], seq_b=[7]
seq_a=[2], seq_b=[4]
seq_a=[5], seq_b=[7]
seq_a=[6], seq_b=[8]
seq_a=[6], seq_b=[8]
seq_a=[6], seq_b=[8]
seq_a=[1], seq_b=[3]
seq_a=[0], seq_b=[2]
seq_a=[13], seq_b=[15]
seq_a=[7], seq_b=[9]
seq_a=[9], seq_b=[11]
seq_a=[10], seq_b=[12]
seq_a=[1], seq_b=[3]
seq_a=[13], seq_b=[15]
seq_a=[10], seq_b=[12]
seq_a=[1], seq_b=[3]
seq_a=[4], seq_b=[6]
seq_a=[4], seq_b=[6]
seq_a=[5], seq_b=[7]
seq_a=[12], seq_b=[14]
seq_a=[5], seq_b=[7]
seq_a=[13], seq_b=[15]
seq_a=[8], seq_b=[10]
seq_a=[2], seq_b=[4]
seq_a=[2], seq_b=[4]
seq_a=[8], seq_b=[10]
seq_a=[11], seq_b=[13]
seq_a=[0], seq_b=[2]
seq_a=[0], seq_b=[2]
seq_a=[0], seq_b=[2]
seq_a=[8], seq_b=[10]
seq_a=[2], seq_b=[4]
seq_a=[9], seq_b=[11]
seq_a=[8], seq_b=[10]
seq_a=[4], seq_b=[6]
seq_a=[11], seq_b=[13]
seq_a=[9], seq_b=[11]
seq_a=[13], seq_b=[15]
seq_a=[0], seq_b=[2]
seq_a=[13], seq_b=[15]
seq_a=[13], seq_b=[15]
seq_a=[8], seq_b=[10]
seq_a=[1], seq_b=[3]
seq_a=[7], seq_b=[9]
seq_a=[4], seq_b=[6]
seq_a=[8], seq_b=[10]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.400 seconds;       Data structure size:   0.0Mb
Tue Sep 30 05:56:39 2025
