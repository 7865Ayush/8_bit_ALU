module alu (
    input  [7:0] A,
    input  [7:0] B,
    input  [3:0] ALU_Sel,

    output reg [7:0] ALU_Out,
    output reg CarryOut,
    output reg Overflow,
    output Zero,
    output Negative
);

always @(*) begin

    ALU_Out = 8'b00000000;
    CarryOut = 1'b0;
    Overflow = 1'b0;

    case(ALU_Sel)

    4'b0000: begin
    {CarryOut, ALU_Out} = A + B;

    Overflow = (~(A[7] ^ B[7])) & (A[7] ^ ALU_Out[7]);
    end

    4'b0001: begin
    {CarryOut, ALU_Out} = A - B;

    Overflow = (A[7] ^ B[7]) &
               (A[7] ^ ALU_Out[7]);
    end

    default: begin
    ALU_Out = 8'b00000000;
    end

    endcase
end

assign Zero = (ALU_Out == 8'b00000000);
assign Negative = ALU_Out[7];

endmodule