class fatal;
int status_1;
  int status_2;
  function preview();
    assert(status_1 && status_2)
      $display("STATUS:running_sucessfully----->no issues on code");
    else 
      $fatal("STATUS: expected outputs fails terminate a program code immediately");
  endfunction
endclass

module tb;
  fatal fa;
  initial begin
    fa=new();
    fa.status_1=0;
    fa.status_2=1;
    fa.preview();
  end
endmodule


"design.sv", 5: $unit::\fatal::preview .unnamed$$_0: started at 0ns failed at 0ns
	Offending '(this.status_1 && this.status_2)'
Fatal: "design.sv", 5: $unit.fatal::preview.unnamed$$_0: at time 0 ns <------------------------------------
STATUS: expected outputs fails terminate a program code immediately <------------------------------------
$finish called from file "design.sv", line 5.<-------------------------------------
$finish at simulation time     <-----------------------------------               0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
