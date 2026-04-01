class triggering_clk_296;
  rand bit[3:0]var_1;
  rand bit[3:0]var_2;
  bit clk;
  constraint c1 {var_1 inside {2,3,4};}
  constraint c2 {var_2 inside {5,6,7};}
endclass

covergroup cover_trigger(ref bit [3:0]var_1,ref bit [3:0]var_2,ref bit clk)@(posedge clk);
  l1:coverpoint var_1;
  l2:coverpoint var_2;
  l3:coverpoint clk;
endgroup

module tb;
  triggering_clk_296 a1;
  cover_trigger a2;
  initial begin
      
    a1=new();
    a1.clk=0;
    forever #5 a1.clk = ~a1.clk;
    
  end
  initial begin
    a2=new(a1.var_1,a1.var_2,a1.clk);
    repeat(15)begin
      @(posedge a1.clk)begin
      a1.randomize();
          

//               a2.sample();  //not worked here for triggering area's
      $display("var_1=[%0d],var_2=[%0d],total overall coverage are claims=[%0f]",a1.var_1,a1.var_2,a2.get_coverage());
         
    end
  end
  $finish; 
  end
  
endmodule

CPU time: .614 seconds to compile + .520 seconds to elab + .547 seconds to link
Chronologic VCS simulator copyright 1991-2025
Contains Synopsys proprietary information.
Compiler version X-2025.06-SP1_Full64; Runtime version X-2025.06-SP1_Full64;  Apr  1 04:16 2026
var_1=[4],var_2=[6],total overall coverage are claims=[20.833334]
var_1=[3],var_2=[7],total overall coverage are claims=[25.000000]
var_1=[4],var_2=[7],total overall coverage are claims=[29.166666]
var_1=[4],var_2=[7],total overall coverage are claims=[29.166666]
var_1=[3],var_2=[6],total overall coverage are claims=[29.166666]
var_1=[2],var_2=[6],total overall coverage are claims=[29.166666]
var_1=[3],var_2=[6],total overall coverage are claims=[31.250000]
var_1=[2],var_2=[7],total overall coverage are claims=[31.250000]
var_1=[4],var_2=[7],total overall coverage are claims=[31.250000]
var_1=[2],var_2=[7],total overall coverage are claims=[31.250000]
var_1=[3],var_2=[5],total overall coverage are claims=[31.250000]
var_1=[3],var_2=[6],total overall coverage are claims=[33.333332]
var_1=[3],var_2=[6],total overall coverage are claims=[33.333332]
var_1=[3],var_2=[6],total overall coverage are claims=[33.333332]
var_1=[2],var_2=[6],total overall coverage are claims=[33.333332]
$finish called from file "testbench.sv", line 37.
$finish at simulation time                  145
           V C S   S i m u l a t i o n   R e p o r t 
Time: 145 ns
