module enum_type;
  typedef enum{RED,YELLOW,GREEN}clours_enum;
  clours_enum overall_colour;
  initial begin
    overall_colour=overall_colour.first();
    $display("your current clour is=%s",overall_colour.name);
     overall_colour=overall_colour.next();
    $display("your current clour is=%s",overall_colour.name);
     overall_colour=overall_colour.last();
    $display("your current clour is=%s",overall_colour.name);
     overall_colour=overall_colour.prev();
    $display("your current clour is=%s",overall_colour.name);
  end
endmodule


# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: your current clour is=RED
# KERNEL: your current clour is=YELLOW
# KERNEL: your current clour is=GREEN
# KERNEL: your current clour is=YELLOW
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
