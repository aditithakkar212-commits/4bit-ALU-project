module testbench;

reg [3:0] A, B;
reg [2:0] select;

wire [3:0] result;

alu uut(
    .A(A),
    .B(B),
    .select(select),
    .result(result)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0,testbench);

A = 4'b1010;
B = 4'b0011;

select = 3'b000; #10;
select = 3'b001; #10;
select = 3'b010; #10;
select = 3'b011; #10;
select = 3'b100; #10;
select = 3'b101; #10;
select = 3'b110; #10;
select = 3'b111; #10;

$finish;

end

endmodule