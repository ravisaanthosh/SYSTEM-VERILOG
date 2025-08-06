module else_if_ladder_condition_98;
  reg[5:0]a,b,c;
  initial begin
    a=20;
    b=15;
    c=21;
    if(a==10)begin
      $display("your's else_if_ladder condition_1 is true=[%0d]",a);
    end
      else if(a>b)begin
        $display("your's else_if_ladder condition_2 is true=[%0d]",a);
      end
        else if(a<c)begin
          $display("your's else_if_ladder condition_3 is true=[%0d]",a);
        end
    
        else begin
          $display("your's else_if_ladder condition is false");
        end
  end
endmodule

your's else_if_ladder condition_2 is true=[20]
           V C S   S i m u l a t i o n   R e p o r t 
