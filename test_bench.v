`timescale 1ns/1ps

module test_bench;
    reg a, b;
    wire ANDo,ORo,NOTo,NORo,NANDo,XORo,XNORo;

    // Instantiate the module
    logic_gates uut (
        .a(a), .b(b),
        .ANDo(ANDo),.ORo(ORo),.NOTo(NOTo),.NANDo(NANDo),.NORo(NORo),.XORo(XORo),.XNORo(XNORo)
    );

    initial begin
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, test_bench);

        $display("a b | AND OR NOTA XOR NAND NOR XNOR");
        $monitor("%b %b |  %b   %b   %b   %b   %b    %b   %b",
                 a, b, ANDo,ORo,NOTo,XORo,NANDo,NORo,XNORo);

        // Test all combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
