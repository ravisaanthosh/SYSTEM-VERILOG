class using_cover;
  bit[7:0]count;
  function preview();
    for(count=0; count <6; count++)begin
      cover (count==5)
      $display("PASS: count reached =[%0d]",count);
    end
  endfunction
endclass

module tb;
  using_cover uc;
  initial begin
    uc=new();
    uc.preview();
  end
endmodule


PASS: count reached =[5]
"design.sv", 5: $unit::\using_cover::preview .unnamed$$_0, 6 attempts, 1 total match, 1 first match
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.340 seconds;       Data structure size:   0.0Mb
Mon Oct 27 02:38:22 2025
