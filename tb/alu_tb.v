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

    

    
    // Test 1 : Addition
    A = 20;
    B = 10;
    ALU_Sel = 4'b0000;
    #10;

    $display("A=%d B=%d Result=%d", A, B, ALU_Out);

    

    // Test 2 : Subtraction
    A = 20;
    B = 10;
    ALU_Sel = 4'b0001;
    #10;
    $display("A=%d B=%d Result=%d", A, B, ALU_Out);

    $finish;



end

endmodule