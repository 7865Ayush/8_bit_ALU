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

    
A = 8'd10;
B = 8'd20;
ALU_Sel = 4'b1101;
#10;
  
$display("A=%d  B=%d  Opcode=%b Result=%d",
          A,B,ALU_Sel,ALU_Out);
                                                                                    

    $finish;



end

endmodule