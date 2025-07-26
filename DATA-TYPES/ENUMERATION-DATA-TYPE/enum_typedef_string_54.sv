module enumeration_type_3;
  typedef enum{RAVI,LAKSHMI,SANTHOSH,VIGNESH}family_enum;
  family_enum person1,person2,person3,person4;
  initial begin
    person1=RAVI;
    person2=LAKSHMI;
    person3=SANTHOSH;
    person4=VIGNESH;
    $display("person1=%s\n,person2=%s\n,person3=%s\n,person4=%s\n",person1.name(),person2.name(),person3.name(),person4.name());
  end
endmodule

# KERNEL:  person1=RAVI
# KERNEL: ,person2=LAKSHMI
# KERNEL: ,person3=SANTHOSH
# KERNEL: ,person4=VIGNESH
# KERNEL: 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
