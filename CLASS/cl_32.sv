class exp_1;
int a;
bit b;
function display();
  $display("a=%b,b=%b",a,b);
endfunction
endclass
module tb;

exp_1 obj;
initial begin
obj = new();
obj.a = 5;   
obj.b = 1;  
obj.display();
end
endmodule
