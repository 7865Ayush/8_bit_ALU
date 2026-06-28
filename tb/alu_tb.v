module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [3:0] ALU_Sel;

wire [7:0] ALU_Out;
wire CarryOut;
wire Overflow;
wire Zero;
wire Negative;

alu uut(

    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),

    .ALU_Out(ALU_Out),
    .CarryOut(CarryOut),
    .Overflow(Overflow),
    .Zero(Zero),
    .Negative(Negative)

);

initial begin

    $dumpfile("waveform/alu.vcd");
    $dumpvars(0, alu_tb);

end

initial begin

    

    
    // AND
A = 8'b11001100;
B = 8'b10101010;
ALU_Sel = 4'b0010;
#10;
$display("----------------------------");
$display("A=%d B=%d Opcode=%b Result=%d",
          A,B,ALU_Sel,ALU_Out);

// Logical Left Shift
A = 8'b00110110;
ALU_Sel = 4'b0110;
#10;
$display("A=%d  Opcode=%b Result=%d",
          A,ALU_Sel,ALU_Out);

// Logical Right Shift
ALU_Sel = 4'b0111;
#10;
$display("A=%d  Opcode=%b Result=%d",
          A,ALU_Sel,ALU_Out);
                                                                                    

    $finish;



end

endmodule