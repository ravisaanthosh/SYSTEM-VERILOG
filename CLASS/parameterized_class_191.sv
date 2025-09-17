class apple #(parameter i_phone_16=1,macbook_pro=2);
  logic [i_phone_16-9:0] m_52;
  logic [macbook_pro-9:0] m_53;
  function preview();
    m_52=10;
    m_53=12;
    $display("value of each model is =%0b,=%0b",m_52,m_53);
  endfunction
endclass

module tb;
  apple a1;
  initial begin
  a1=new();
  a1.preview();
  end
endmodule
  

value of each model is =1010,=1100
