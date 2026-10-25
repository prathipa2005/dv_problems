// =====================================================
// DV Practice - Day 1 - Question 1
// Topic: 2-state vs 4-state data types
// =====================================================
// Problem:
//   Predict the output of the code below.
//
// Expected Output:
//   a=xxxx b=0000
//   a=z1x0 b=0100
//
// Explanation:
//   - logic is 4-state (0, 1, X, Z) and starts as X.
//   - bit is 2-state (0, 1) and starts as 0.
//   - Assigning a 4-state value to a 2-state variable
//     converts X and Z to 0.
// =====================================================

module tb;
  logic [3:0] a;
  bit   [3:0] b;

  initial begin
    $display("a=%b b=%b", a, b);   // a=xxxx b=0000
    a = 4'bz1x0;
    b = a;                         // z -> 0, x -> 0
    $display("a=%b b=%b", a, b);   // a=z1x0 b=0100
  end
endmodule

