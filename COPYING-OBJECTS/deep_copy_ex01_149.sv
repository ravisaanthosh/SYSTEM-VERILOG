class lucas;
  int H40; 
endclass

class roundana;
  int D41;              
  lucas saravana_store;

  function shopping(lucas bus_stop);
    saravana_store = bus_stop;  
  endfunction
endclass


module tb;
  roundana omega_glass, silicon_craft;

  initial begin
    omega_glass = new();
    omega_glass.saravana_store = new();
    omega_glass.D41 = 50;
    omega_glass.saravana_store.H40 = 'hAA;

    silicon_craft = new();
    silicon_craft.shopping(omega_glass.saravana_store);
    silicon_craft.D41=10;

    $display("omega_glass.D41=%0d, omega_glass.saravana_store.H40=%0h",omega_glass.D41, omega_glass.saravana_store.H40);
    $display("silicon_craft.D41=%0d, silicon_craft.saravana_store.H40=%0h",silicon_craft.D41, silicon_craft.saravana_store.H40);

    silicon_craft.D41 = 30;
    silicon_craft.saravana_store.H40 = 'hBB;

    $display("omega_glass.D41=%0d, omega_glass.saravana_store.H40=%0h",omega_glass.D41, omega_glass.saravana_store.H40);
    $display("silicon_craft.D41=%0d, silicon_craft.saravana_store.H40=%0h",silicon_craft.D41, silicon_craft.saravana_store.H40);
  end
endmodule

Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  9 00:40 2025
omega_glass.D41=50, omega_glass.saravana_store.H40=aa
silicon_craft.D41=10, silicon_craft.saravana_store.H40=aa
omega_glass.D41=50, omega_glass.saravana_store.H40=bb
silicon_craft.D41=30, silicon_craft.saravana_store.H40=bb
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.430 seconds;       Data structure size:   0.0Mb
Tue Sep  9 00:40:54 2025
Done
