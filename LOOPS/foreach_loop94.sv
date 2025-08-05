module foreach_loop94;
  longint f_l[10:0];
  initial begin
    foreach(f_l[i])begin
      f_l[i]=10;
      $display("your's foreach_loop output is=[%0d]",i,f_l[i]);
    end
  end
endmodule

# run -all
# your's foreach_loop output is=[10]                  10
# your's foreach_loop output is=[9]                   10
# your's foreach_loop output is=[8]                   10
# your's foreach_loop output is=[7]                   10
# your's foreach_loop output is=[6]                   10
# your's foreach_loop output is=[5]                   10
# your's foreach_loop output is=[4]                   10
# your's foreach_loop output is=[3]                   10
# your's foreach_loop output is=[2]                   10
# your's foreach_loop output is=[1]                   10
# your's foreach_loop output is=[0]                   10
