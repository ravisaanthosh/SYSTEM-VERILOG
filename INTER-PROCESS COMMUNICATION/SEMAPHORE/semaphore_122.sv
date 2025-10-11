module semaphore_122;
  semaphore sem=new(5);
  initial begin
    sem.get(4);
    $display("waiting for conformation to red data");
    
    sem.put(4);  //here we can add aditional keys return  semaphore .....n keys for next process
    $display("thanks for conformation data successfuly read ");
  end
  initial begin
    sem.get(4);
    $display("waiting for conformation to write data");
    
    sem.put(4);
    $display("thanks for conformation data write successfuly");
  end
endmodule


waiting for conformation to red data
thanks for conformation data successfuly read 
waiting for conformation to write data
thanks for conformation data write successfuly
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.440 seconds;       Data structure size:   0.0Mb
Sun Aug 17 00:15:41 2025
Done
