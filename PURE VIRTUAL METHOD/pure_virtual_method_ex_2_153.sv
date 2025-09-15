virtual class state_bank;
  int account_a;
  int account_b;
  int account_c;
  string status;
  
  pure virtual function preview();
    pure virtual task display();
      endclass
      
      
      class indian_bank extends state_bank;
        int account_a=10;
        int account_b=40;
        string status="TEA_BREAK";
        function preview();
          $display("function: value of account holder=%0d,=%0d,=%0d,=%0s",account_a,account_b,account_c,status);
        endfunction
        task display();
          account_c=account_a + account_b;
          status="LUNCH_BREAK";
          $display("task: value of account holder =%0d,=%0d,=%0d",account_a,account_b,account_c,status);
        endtask
      endclass
      
      
      module tb;
        state_bank sbi;
        indian_bank iob;
        initial begin
          iob=new();
          sbi=iob;
          iob.account_a=100;
         
          iob.preview();
          iob.display();
          
          sbi.preview();
          sbi.display();
          
        end
      endmodule


function: value of account holder=100,=40,=0,=TEA_BREAK
task: value of account holder =100,=40,=140LUNCH_BREAK
function: value of account holder=100,=40,=140,=LUNCH_BREAK
task: value of account holder =100,=40,=140LUNCH_BREAK
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.350 seconds;       Data structure size:   0.0Mb
Mon Sep 15 06:59:40 2025
         
