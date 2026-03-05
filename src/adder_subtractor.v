module adder_subtractor(A,B,Mode,Result,Cout);

parameter N = 4;

input  [N-1:0] A,B;
input  Mode;              // 0 = Add, 1 = Subtract
output [N-1:0] Result;
output Cout;

wire [N-1:0] B_mod;
wire [N:0] carry;

assign B_mod = Mode ? ~B : B;  // Invert B if subtract
assign carry[0] = Mode;        // Add 1 if subtract (2's complement)

genvar i;

generate
    for(i=0; i<N; i=i+1)
    begin : FA_BLOCK
        full_adder FA(
            .A(A[i]),
            .B(B_mod[i]),
            .Cin(carry[i]),
            .Sum(Result[i]),
            .Cout(carry[i+1])
        );
    end
endgenerate

assign Cout = carry[N];

endmodule 