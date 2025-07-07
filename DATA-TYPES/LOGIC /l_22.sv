module log_typ;
logic [100:0] logic_data_typ; 
initial begin
$display("logic_data_typ = %b", logic_data_typ);
logic_data_typ = 101'b1_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1;
$display("logic_data_typ = %b", logic_data_typ);
for (int i = 0; i <= 100; i++) begin
$display("logic_data_typ[%0d] = %b", i, logic_data_typ[i]);
end
end
endmodule
