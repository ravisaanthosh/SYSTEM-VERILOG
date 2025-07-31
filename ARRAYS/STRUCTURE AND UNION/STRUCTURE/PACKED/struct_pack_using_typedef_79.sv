module struct_pack_using_typedef_79;
  typedef struct packed {bit[7:0]serial_id;
                         reg[4:0]emp_id;
                         logic[5:0]add_id;
                         }inside_data;
  inside_data op1,op2;
  initial begin
    op1.serial_id=4'b1111;
    op1.emp_id=5'b00001;
    op1.add_id=6'b111001;
    
    $display("your's structures'packed using without typedef is=[%0p]",op1);
    op2='{5,4,8};
    $display("your's structures'packed using  typedef is=[%0p]",op2);
  end
endmodule

your's structures'packed using without typedef is=['{serial_id:'hf, emp_id:'h1, add_id:'h39}]
your's structures'packed using  typedef is=['{serial_id:'h5, emp_id:'h4, add_id:'h8}]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.520 seconds;       Data structure size:   0.0Mb
Thu Jul 31 06:52:12 2025
