class factory ;
  string model_1;
  string model_2;
  
  virtual function preview();
    $display("PARENT:name of the factory model=%0s,=%0s",model_1,model_2);
  endfunction
endclass



class plant_a extends factory;
  string model_1;
  string model_2;
  
  function preview();
    $display("CHILD_A:name of the plant_a model=%0s,=%0s",model_1,model_2);
  endfunction
endclass

class plant_b extends factory;
  string model_1;
  string model_2;
  
  function preview();
    $display("CHILD_C:name of the plant_c model=%0s,=%0s",model_1,model_2);
  endfunction
endclass


class plant_c extends factory;
  string model_1;
  string model_2;
  
  function preview();
    $display("CHILD_C:name of the plant_c model=%0s,=%0s",model_1,model_2);
  endfunction
endclass





module tb;
  //parent handle
  factory fa;
  factory fb;
  factory fc;
  //child handle
  plant_a pa;
  plant_b pb;
  plant_c pc;
  
  initial begin
    //object of parent
    fa=new();
    //object of child
    pa=new();
    pb=new();
    pc=new();
    
    //PARENT
    fa.model_1="LINE_1";
    fa.model_2="LINE_2";
    fa.preview();
    
   //CHILD_A
    pa.model_1="SANTRO";
    pa.model_2="I_20";
    fa=pa;
    pa.preview();
    
   //CHILD_B 
    pb.model_1="VERANA";
    pb.model_2="AURA";
    fb=pb;
    pb.preview();
    
  //CHILD_C
    pc.model_1="CREATA";
    pc.model_2="VENUE";
    fc=pc;
    pc.preview();
    
  end
endmodule



PARENT:name of the factory model=LINE_1,=LINE_2
CHILD_A:name of the plant_a model=SANTRO,=I_20
CHILD_B:name of the plant_c model=VERANA,=AURA
CHILD_C:name of the plant_c model=CREATA,=VENUE
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.360 seconds;       Data structure size:   0.0Mb
Tue Sep 16 02:44:52 2025
