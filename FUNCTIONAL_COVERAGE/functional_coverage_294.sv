module functional_coverage_294;
  bit [7:0]train_01_super_fast;
  logic [7:0]train_02_mail_exp;
  
  covergroup cover_01;
    c1:coverpoint train_01_super_fast;
    c2:coverpoint train_02_mail_exp;
  endgroup
  
  cover_01 cg;
  initial begin
    cg=new();
    repeat(5)begin
      train_01_super_fast=$urandom_range(0,256);
      train_02_mail_exp=$urandom_range(0,256);
    cg.sample();
      $display("train_01_super_fast=[%0d]\n train_02_mail_exp=[%0d] \n ::=>coverage%%=%.2f",train_01_super_fast,train_02_mail_exp,cg.get_inst_coverage());
    end
    $display("train_01_super_fast=[%0d]\n train_02_mail_exp=[%0d] \n ::=>overall_functional_coverage%%=%.10f",train_01_super_fast,train_02_mail_exp,cg.get_coverage());
  end
endmodule

 the VCS_LIC_EXPIRE_WARNING environment variable to the number of days
before expiration that you want this message to start (the minimum is 0).
train_01_super_fast=[222]
 train_02_mail_exp=[34] 
 ::=>coverage%=0.00
train_01_super_fast=[88]
 train_02_mail_exp=[40] 
 ::=>coverage%=0.00
train_01_super_fast=[62]
 train_02_mail_exp=[88] 
 ::=>coverage%=0.00
train_01_super_fast=[246]
 train_02_mail_exp=[194] 
 ::=>coverage%=0.00
train_01_super_fast=[62]
 train_02_mail_exp=[11] 
 ::=>coverage%=0.00
train_01_super_fast=[62]
 train_02_mail_exp=[11] 
 ::=>overall_functional_coverage%=7.0312500000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
