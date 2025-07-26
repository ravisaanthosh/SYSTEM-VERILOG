  module enum_dual_variable;
  typedef enum {MURUGAIKAI, THAKALI, AVARAKAI, MULANGI, KARUVAEPILAI, KOTHAMALLI, MOKACHOLAM} veg_enum;
   typedef enum {PARUPUSAMBAR=10, ENAKATHIRIKAI, KARAKOLAMBU, PAYASAM, PORIYAL, APPALAM} sambar_enum;
  
  veg_enum veg;
  sambar_enum sambar;
  
  initial begin
    for (int i = 0; i < 7; i++) begin
      $display("yours total vegetables list = %s", veg.name());
      veg = veg.next();
    end
    sambar = APPALAM;
    $display("overall = %s menu list = %d", sambar.name(), sambar);
  end
endmodule

# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: yours total vegetables list = MURUGAIKAI
# KERNEL: yours total vegetables list = THAKALI
# KERNEL: yours total vegetables list = AVARAKAI
# KERNEL: yours total vegetables list = MULANGI
# KERNEL: yours total vegetables list = KARUVAEPILAI
# KERNEL: yours total vegetables list = KOTHAMALLI
# KERNEL: yours total vegetables list = MOKACHOLAM
# KERNEL: overall = APPALAM menu list =          15
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
