module queue_features_71;
  int a[$]={10,20,30,40,50,60,70,80,90,100};
  int b[$:10];
  int i,j;
  initial begin
    b=a;
    $display("copying from a to b =%p",b);
    a={a,60};
    $display("inserting 60 at end of the a=%0p",a);
    a={80,a};
    $display("inserting 60 at begining of the a=%0p",a);
    i=a[0];
    i=a[$];
    $display("value of a i=[%0d] j=[%0d]",i,j);
    a[2]=100;
    $display("result of a after changing the index 2=[%0p]",a);
    a=a[0:$-1];
    $display("delete the last element in a =[%0p]",a);
    a=a[5:$];
    $display("delete the 0 and 5 index is a=[%0p]",a);
    a={};
    $display("delete all the elements in a=[%0p]",a);
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 13:27 2025
copying from a to b ='{10, 20, 30, 40, 50, 60, 70, 80, 90, 100} 
inserting 60 at end of the a='{10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 60} 
inserting 60 at begining of the a='{80, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 60} 
value of a i=[60] j=[0]
result of a after changing the index 2=['{80, 10, 100, 30, 40, 50, 60, 70, 80, 90, 100, 60} ]
delete the last element in a =['{80, 10, 100, 30, 40, 50, 60, 70, 80, 90, 100} ]
delete the 0 and 5 index is a=['{50, 60, 70, 80, 90, 100} ]
delete all the elements in a=['{}]
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.420 seconds;       Data structure size:   0.0Mb
Wed Jul 30 13:27:19 2025
Done
    
