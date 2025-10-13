class info;
  bit x,y;
  function preview();
    assert(x==y)
      $display("---->TRUE");
  endfunction
endclass


module tb;
  info in;
  initial begin
    in=new();
    in.x=1;
    in.y=1;
    in.preview();
  end
endmodule

---->TRUE
           V C S   S i m u l a t i o n   R e p o r t 
