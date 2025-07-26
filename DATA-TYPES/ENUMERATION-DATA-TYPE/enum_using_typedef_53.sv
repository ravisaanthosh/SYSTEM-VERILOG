module enumeration_type_2;
  typedef enum{RAVI,LAKSHMI,SANTHOSH,VIGNESH}family_enum;
  family_enum person1,person2,person3,person4;
  initial begin
    person1=RAVI;
    person2=LAKSHMI;
    person3=SANTHOSH;
    person4=VIGNESH;
    $display("person1=%b\n,person2=%b\n,person3=%b\n,person4=%b\n",person1,person2,person3,person4);
  end
endmodule

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL:  person1=00000000000000000000000000000000
# KERNEL: ,person2=00000000000000000000000000000001
# KERNEL: ,person3=00000000000000000000000000000010
# KERNEL: ,person4=00000000000000000000000000000011
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
