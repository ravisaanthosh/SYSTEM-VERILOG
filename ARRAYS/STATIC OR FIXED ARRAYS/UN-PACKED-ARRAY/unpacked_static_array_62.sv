module  unpacked_static_array_62;
  byte un_p[2:0];
  initial begin
    un_p[0]=8'b0010_1010;
    un_p[1]=8'b0101_0101;
    un_p[2]=8'b0101_1011;
    un_p[3]=8'b0001_1000;
    foreach(un_p[i])begin
      $display("default size of byte=%0d",$size(byte));
      $display("your's static_unpacked_arrays_output is[%0b]=[%0d]",i,un_p[i]);
    end
  end
endmodule

default size of byte=8
your's static_unpacked_arrays_output is[10]=[91]
default size of byte=8
your's static_unpacked_arrays_output is[1]=[85]
default size of byte=8
your's static_unpacked_arrays_output is[0]=[42]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Tue Jul 29 06:09:31 2025
