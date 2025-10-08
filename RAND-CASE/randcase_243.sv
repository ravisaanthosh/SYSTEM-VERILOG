module rand_case;
  bit [7:0] value;

  initial begin
    for (value = 10; value <= 18; value++) begin
      randcase
        1: $display("ONE value=[%0d]", value);
        2: $display("TWO=[%0d]", value);
        3: $display("THREE=[%0d]", value);
        4: $display("FOUR=[%0d]", value);
        5: $display("FIVE=[%0d]", value);
        6: $display("SIX=[%0d]", value);
        7: $display("SEVEN=[%0d]", value);
        8: $display("EIGHT=[%0d]", value);
      endcase
    end
  end
endmodule


Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  8 03:29 2025
EIGHT=[10]
THREE=[11]
SEVEN=[12]
THREE=[13]
EIGHT=[14]
SIX=[15]
FIVE=[16]
FOUR=[17]
SEVEN=[18]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.350 seconds;       Data structure size:   0.0Mb
Wed Oct  8 03:29:25 2025
