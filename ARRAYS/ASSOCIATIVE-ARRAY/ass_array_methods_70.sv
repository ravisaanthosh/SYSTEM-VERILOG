module ass_array_methods_70;
  bit [7:0] array [int];
  int san;
  initial begin
    array='{2:1,3:4,1:0,0:10,5:6,6:3,8:8,9:10};
    $display("total values of inside associative array is=%p",array);
    $display("total values of using num()method is[%0d]",array.num());
    $display("total values of using size()method is[%0d]",array.size());
    array.first(san);
    $display("your's first values of using first key word is=[%0d]",san);
    array.last(san);
    $display("your's last values of using last key word is=[%0d]",san);
    array.prev(san);
    $display("your's prev values of using prev key word is=[%0d]",san);
    array.delete(2);
    $display("your's delete values of using ass array is=[%0p]",san);
    array.delete();
    $display("your's delete entire values of using ass array is=[%0p]",array.size());
  end
endmodule

total values of inside associative array is='{0x0:'ha, 0x1:'h0, 0x2:'h1, 0x3:'h4, 0x5:'h6, 0x6:'h3, 0x8:'h8, 0x9:'ha} 
total values of using num()method is[8]
total values of using size()method is[8]
your's first values of using first key word is=[0]
your's last values of using last key word is=[9]
your's prev values of using prev key word is=[8]
your's delete values of using ass array is=[8]
your's delete entire values of using ass array is=[0]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Wed Jul 30 12:03:33 2025
Done
