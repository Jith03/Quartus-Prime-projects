`timescale 1ns/1ps

module tb_adder_subtractor();

reg  [3:0] A,B;
reg  Mode;
wire [3:0] Result;
wire Cout;

adder_subtractor UUT(
.A(A),
.B(B),
.Mode(Mode),
.Result(Result),
.Cout(Cout)
);

initial begin


Mode = 0;   // Add
A=4'b0011; B=4'b0001; #10;
A=4'b0101; B=4'b0011; #10;
A=4'b1111; B=4'b0001; #10;


Mode = 1;   // Subtract
A=4'b0101; B=4'b0011; #10;
A=4'b1000; B=4'b0001; #10;
A=4'b0110; B=4'b0110; #10;

end

endmodule 