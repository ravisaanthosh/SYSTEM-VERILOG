class smp;
  static int serial_no;
  int n_count;

  function new();
    serial_no++;
    n_count++;
  endfunction
endclass

module smpp;
  smp s1[7]; 

  initial begin
    foreach (s1[i]) begin
      s1[i] = new();
     // $display("i=%0d, serial_no=%0d, n_count=%0d", i, s1[i].serial_no, s1[i].n_count);
    end

    foreach (s1[i]) begin
      $display("Final: i=%0d, serial_no=%0d", i, s1[i].serial_no);
    end
  end
endmodule

# KERNEL: Final: i=0, serial_no=7
# KERNEL: Final: i=1, serial_no=7
# KERNEL: Final: i=2, serial_no=7
# KERNEL: Final: i=3, serial_no=7
# KERNEL: Final: i=4, serial_no=7
# KERNEL: Final: i=5, serial_no=7
# KERNEL: Final: i=6, serial_no=7
