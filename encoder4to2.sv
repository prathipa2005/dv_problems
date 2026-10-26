module encoder4to2;

  logic [3:0] in;
  logic [1:0] out;

  // Encoder design
  always_comb begin
    case (in)
      4'b0001: out = 2'b00;
      4'b0010: out = 2'b01;
      4'b0100: out = 2'b10;
      4'b1000: out = 2'b11;
      default: out = 2'bxx;
    endcase
  end

  // Testbench
  initial begin
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;
    $finish;
  end

  // Display output
  initial begin
    $monitor("Time=%0t in=%b out=%b", $time, in, out);
  end

endmodule
