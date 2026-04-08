class coverage_using_iff;
  randc bit [3:0]var_1;
  randc bit [2:0]var_2;
  bit clk;
  constraint c1{var_2 inside {3,4};}
  constraint c2{var_1 inside {5,7,6};}
  
  covergroup coverr @(posedge clk);
    c1:coverpoint var_1 iff (var_2==3){
    bins b1={5};
    bins b2={6};
      bins b3={7};}
  endgroup
  function new();
    coverr=new();
  endfunction
endclass

module tb;
  coverage_using_iff cc;
  bit clk;
  always #5 clk=~clk;
  initial begin
    clk=0;
     cc=new();
    cc.clk=clk;
    repeat(15)begin
      cc.randomize() ;
      @(posedge clk);
cc.coverr.sample();
      $display("var_1 = %0d ;clk=%0b; var_2 = %0d ; coverage %% = %.2f",cc.var_1,cc.clk,cc.var_2,cc.coverr.get_inst_coverage());
    end
    $finish; 
  end
endmodule

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: var_1 = 7 ;clk=0; var_2 = 3 ; coverage % = 33.33
# KERNEL: var_1 = 5 ;clk=0; var_2 = 4 ; coverage % = 33.33
# KERNEL: var_1 = 6 ;clk=0; var_2 = 4 ; coverage % = 33.33
# KERNEL: var_1 = 7 ;clk=0; var_2 = 3 ; coverage % = 33.33
# KERNEL: var_1 = 5 ;clk=0; var_2 = 4 ; coverage % = 33.33
# KERNEL: var_1 = 6 ;clk=0; var_2 = 3 ; coverage % = 66.67
# KERNEL: var_1 = 5 ;clk=0; var_2 = 4 ; coverage % = 66.67
# KERNEL: var_1 = 6 ;clk=0; var_2 = 3 ; coverage % = 66.67
# KERNEL: var_1 = 7 ;clk=0; var_2 = 4 ; coverage % = 66.67
# KERNEL: var_1 = 5 ;clk=0; var_2 = 3 ; coverage % = 100.00
# KERNEL: var_1 = 6 ;clk=0; var_2 = 4 ; coverage % = 100.00
# KERNEL: var_1 = 7 ;clk=0; var_2 = 3 ; coverage % = 100.00
# KERNEL: var_1 = 5 ;clk=0; var_2 = 4 ; coverage % = 100.00
# KERNEL: var_1 = 6 ;clk=0; var_2 = 3 ; coverage % = 100.00
# KERNEL: var_1 = 7 ;clk=0; var_2 = 4 ; coverage % = 100.00
# RUNTIME: Info: RUNTIME_0068 testbench.sv (33): $finish called.
# KERNEL: Time: 145 ns,  Iteration: 0,  Instance: /tb,  Process: @INITIAL#23_1@.
# KERNEL: stopped at time: 145 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# ACDB: Covergroup Coverage data has been saved to "fcover.acdb" database.
# VSIM: Simulation has finished.
