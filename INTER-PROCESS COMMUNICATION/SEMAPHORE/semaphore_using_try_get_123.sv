module semaphore_using_try_get_123;
  semaphore sem=new(1);
  initial begin
   sem.get(2);
    $display("waiting to conformation for reading operation");
    sem.put(2);
    $display("permission granted for reading operation");
  end
  initial begin
    void'(sem.try_get(2));
    $display("waiting to conformation for reading operation");
    sem.put(2);
     $display("permission granted for reading operation");
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 17 00:37 2025
waiting to conformation for reading operation
permission granted for reading operation
waiting to conformation for reading operation
permission granted for reading operation
