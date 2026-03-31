class cover_point_295;
  rand bit [3:0]bus;
  rand bit [3:0]car;
endclass

module inside_module_cover_pont;
  cover_point_295 cp;
  
  covergroup cover_group(ref bit [3:0]bus,ref bit [3:0]car);  
    c1:coverpoint bus;
    c2:coverpoint car;
  endgroup
  cover_group cg;
  
  initial begin
    repeat(10)begin
 
    cp=new();
    cg=new(cp.bus,cp.car);
     
       
     cp.randomize();
    cg.sample();
      $display("bus=[%0d],car=[%0d],No of covergae are coverd =[%0f]",cp.bus,cp.car,cg.get_coverage());
       end
  end
endmodule

Compiler version X-2025.06-SP1_Full64; Runtime version X-2025.06-SP1_Full64;  Mar 31 07:08 2026
bus=[9],car=[12],No of covergae are coverd =[6.250000]
bus=[7],car=[4],No of covergae are coverd =[12.500000]
bus=[11],car=[1],No of covergae are coverd =[18.750000]
bus=[6],car=[3],No of covergae are coverd =[25.000000]
bus=[9],car=[8],No of covergae are coverd =[28.125000]
bus=[7],car=[10],No of covergae are coverd =[31.250000]
bus=[4],car=[7],No of covergae are coverd =[37.500000]
bus=[15],car=[6],No of covergae are coverd =[43.750000]
bus=[1],car=[12],No of covergae are coverd =[46.875000]
bus=[14],car=[5],No of covergae are coverd =[53.125000]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.630 seconds;       Data structure size:   0.0Mb
Tue Mar 31 07:08:49 2026
   
  
