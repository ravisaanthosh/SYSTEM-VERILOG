class info;
  bit x,y;
  function preview();
    assert(x==y)
      $display("---->TRUE");
    else
      $info("------>FAIL");
  endfunction
endclass


module tb;
  info in;
  initial begin
    in=new();
    in.x=0;
    in.y=1;
    in.preview();
  end
endmodule


Info: "design.sv", 4: $unit.info::preview.unnamed$$_0: at time 0 ns
------>FAIL
           V C S   S i m u l a t i o n   R e p o r t 
