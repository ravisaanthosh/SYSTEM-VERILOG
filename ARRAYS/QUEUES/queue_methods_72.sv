module queue_menthods_72;
  int a[$]={10,20,25,30,35,40,45,50,55,60,65,70,80,90,100};
  int i;
  initial begin
    $display("size of the queue is =[%0d]",a.size());
    a.insert(2,15);
    $display("result the queue after inserted 15 at 2d index is a=[%0p]",a);
    a.push_front(0);
    $display("push front method a=[%0p]",a);
    a.push_front(1);
    $display("push front method a=[%0p]",a);
    a.push_back(17);
    $display("push back method a=[%0p]",a);
    a.push_back(7);
    $display("push back method a=[%0p]",a);
    i=a.pop_front();
    $display("pop_front method value of i=[%0d]",i,a);
    i=a.pop_back();
    $display("pop_back method value of i=[%0d]",i,a);
    a.delete(4);
    $display("after deleting the 4th index value of queue is a=%p ",a);
    a.delete();
    $display("after deleting all value of queue is a=%p ",a);
  end
endmodule

Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 14:07 2025
size of the queue is =[15]
result the queue after inserted 15 at 2d index is a=['{10, 20, 15, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 80, 90, 100} ]
push front method a=['{0, 10, 20, 15, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 80, 90, 100} ]
push front method a=['{1, 0, 10, 20, 15, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 80, 90, 100} ]
push back method a=['{1, 0, 10, 20, 15, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 80, 90, 100, 17} ]
push back method a=['{1, 0, 10, 20, 15, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 80, 90, 100, 17, 7} ]
pop_front method value of i=[1]'{0, 10, 20, 15, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 80, 90, 100, 17, 7} 
pop_back method value of i=[7]'{0, 10, 20, 15, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 80, 90, 100, 17} 
after deleting the 4th index value of queue is a='{0, 10, 20, 15, 30, 35, 40, 45, 50, 55, 60, 65, 70, 80, 90, 100, 17}  
after deleting all value of queue is a='{} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.550 seconds;       Data structure size:   0.0Mb
Wed Jul 30 14:07:02 2025
