module test_adder;
       reg[3:0]  a, b;
       reg cin;
       wire [3:0] sum;
       wire         cout;

       full_adder_4bit dut(a, b, cin,
       sum, cout);

       initial
       begin
               a = 4'b0000;
               b = 4'b0000;
               cin= 1'b0;
               #50;
               a = 4'b0101;
               b = 4'b1010;
               // sum = 1111, cout= 0
               #50;
               a = 4'b1111;
               b = 4'b0001;
               // sum = 0000, cout= 1
               #50;a = 4'b0000;
               b = 4'b1111;
               cin= 1'b1;
               // sum = 0000, cout= 1
               #50;
               a = 4'b0110;
               b = 4'b0001;
               // sum = 1000, cout= 0
       end // initial begin

        initial
        begin
                $dumpfile ("waves.lxt");
                $dumpvars(0,test_adder);
        end

endmodule// test_adder
