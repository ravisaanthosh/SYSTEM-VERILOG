class brand ;
  static string original;
  string duplicate; //automatic property
  static function preview_1();
    $display("static:status of brand product is =%0s",original);
  endfunction
  
  
  function preview_2(); //automatic function
    $display("non_static:status of brand product is =%0s",duplicate);
  endfunction
endclass

module tb;
  initial begin
    brand :: original="VERIFIED_PRODUCT";
    //brand :: duplicate="NON_VERIFIED_PRODUCT"; //illegal to assign automatic function  method and property here 
    brand:: preview_1();
   // brand::preview_2();
  end
endmodule

static:status of brand product is =VERIFIED_PRODUCT
           V C S   S i m u l a t i o n   R e p o r t 
