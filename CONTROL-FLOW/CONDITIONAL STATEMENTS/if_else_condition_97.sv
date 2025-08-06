module if_else_condition_97;
  logic[5:0]a;
  initial begin
    a=5;
    if(a==3)begin
      $display("your's if_statements are pass=[%0d]",a);
    end
    else
      $display("your's else_statements are fail");
  end
endmodule

your's else_statements are fail
