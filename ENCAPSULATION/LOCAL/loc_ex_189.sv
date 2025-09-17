class loard;
  local string shivan;
 local  string parvathi;
  
  function preview();
    shivan="MURUGAN";
    parvathi="GANESHAN";
    $display("name of the god's using local keyword is =%0s,=%0s ",shivan,parvathi);
  endfunction
endclass


module tb;
  loard l1;
  initial begin
    l1=new();
    l1.preview();
  end
endmodule


name of the god's using local keyword is =MURUGAN,=GANESHAN 
