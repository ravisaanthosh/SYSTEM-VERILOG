class factory;
  string x7_s_class;
  string x5_s_class;
  string BMW;
  function void company();
    string x7_s_class="x7_with_sunroof";
    string x5_s_class="x5_without_sunroof";
    string BMW="premium segment car's";
    this.x7_s_class=x7_s_class;
    this.x5_s_class=x5_s_class;
    this.BMW=BMW;
    
  endfunction
endclass

module tb;
  factory plant;
  initial begin
    plant=new();
    plant.company();
    $display("your's updated vehicle spec's are using this keyword is =%s,%s,%s",plant.x7_s_class,plant.x5_s_class,plant.BMW);
  end
endmodule

your's updated vehicle spec's are using this keyword is =x7_with_sunroof,x5_without_sunroof,premium segment car's
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Tue Aug 19 00:50:30 2025
