class bank;
  reg [7:0]person_1;
  reg signed[7:0]person_2;
  function preview();
    $display("no of person's withdraw cash in bank \n PERSON_1 =%0d,\n PERSON_2=%0d",person_1,person_2);
  endfunction
endclass

module tb;
  bank b1;
  initial begin
    b1=new();
    repeat(10)begin
      b1.person_1=$signed($urandom);//generate only unsigned 32-bit random numbers only
    b1.person_2=$urandom();
    b1.preview();
  end
  end
    
endmodule

Loading snapshot worklib.tb:sv .................... Done
SVSEED default: 1
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
no of person's withdraw cash in bank 
 PERSON_1 =150,
 PERSON_2=-44
no of person's withdraw cash in bank 
 PERSON_1 =35,
 PERSON_2=-11
no of person's withdraw cash in bank 
 PERSON_1 =55,
 PERSON_2=-68
no of person's withdraw cash in bank 
 PERSON_1 =57,
 PERSON_2=-63
no of person's withdraw cash in bank 
 PERSON_1 =71,
 PERSON_2=-110
no of person's withdraw cash in bank 
 PERSON_1 =168,
 PERSON_2=-110
no of person's withdraw cash in bank 
 PERSON_1 =16,
 PERSON_2=-109
no of person's withdraw cash in bank 
 PERSON_1 =152,
 PERSON_2=52
no of person's withdraw cash in bank 
 PERSON_1 =121,
 PERSON_2=-6
no of person's withdraw cash in bank 
 PERSON_1 =142,
 PERSON_2=47
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Sep 19, 2025 at 01:16:01 EDT  (total: 00:00:01)
Done
