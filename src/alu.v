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
//=========================
// ALU Operation Codes
//=========================

localparam ADD        = 4'b0000;
localparam SUB        = 4'b0001;
localparam AND_OP     = 4'b0010;
localparam OR_OP      = 4'b0011;
localparam XOR_OP     = 4'b0100;
localparam NOT_OP     = 4'b0101;
localparam SHL        = 4'b0110;
localparam SHR        = 4'b0111;
localparam INC        = 4'b1000;
localparam DEC        = 4'b1001;
localparam CMP        = 4'b1010;
localparam PASS_A     = 4'b1011;
localparam PASS_B     = 4'b1100;
localparam MUL        = 4'b1101;
localparam PRE        = 4'b1110;

always @(*) begin

    ALU_Out = 8'b00000000;
    CarryOut = 1'b0;
    Overflow = 1'b0;

    case(ALU_Sel)

    ADD: begin
    {CarryOut, ALU_Out} = A + B;

    Overflow = (~(A[7] ^ B[7])) & (A[7] ^ ALU_Out[7]);
    end

    SUB: begin
    {CarryOut, ALU_Out} = A - B;

    Overflow = (A[7] ^ B[7]) &
               (A[7] ^ ALU_Out[7]);
    end

    AND_OP: begin
    ALU_Out = A & B;
    end

    OR_OP: begin
    ALU_Out = A | B;
    end
    
    XOR_OP: begin
    ALU_Out = A ^ B;
    end

    NOT_OP: begin
    ALU_Out = ~A;
    end

    SHL: begin
    ALU_Out = A << 1;
    end

    SHR: begin
    ALU_Out = A >> 1;
    end

    INC: begin
    ALU_Out = A + 1;
    end

    DEC: begin
    ALU_Out = A - 1;
    end

    CMP: begin
    if(A>B)
        ALU_Out = A;
    else
        ALU_Out = B;
    end

    PASS_A: begin
    ALU_Out = A;
    end

    PASS_B: begin
    ALU_Out = B;
    end

    MUL: begin
    ALU_Out = A*B;
    end

    PRE: begin
    ALU_Out = 8'b11111111;
    end
    default: begin
    ALU_Out = 8'b00000000;
    end

    endcase
end

assign Zero = (ALU_Out == 8'b00000000);
assign Negative = ALU_Out[7];

endmodule