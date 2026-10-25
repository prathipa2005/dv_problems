// =====================================================
// DV Practice - Day 1 - Question 3
// Topic: variable vs net, multiple drivers
// =====================================================
// Problem:
//   Will the code below compile? If not, why? Give two fixes.
//
// Original code (compile error):
//   module tb;
//     logic clk;
//     assign clk = 1'b0;     // continuous driver
//     initial clk = 1'b1;    // procedural driver -> ERROR
//   endmodule
//
// Answer:
//   No. A logic variable cannot be driven by both a
//   continuous assignment and a procedural assignment.
//
// Fix 1: drive it procedurally only (active below).
// Fix 2: drive it with continuous assign only (commented below).
//
// Expected Output:
//   clk=1   (from Fix 1)
//
// Explanation:
//   - A logic variable allows ONE continuous assignment OR
//     any number of procedural assignments, not both.
//   - If you need multiple drivers, use a net (wire).
// =====================================================

// ---- Fix 1 (active) ----
module tb;
  logic clk;

  initial begin
    clk = 1'b1;
    #1 $display("clk=%b", clk);   // clk=1
  end
endmodule

// ---- Fix 2 (use this instead of Fix 1) ----
// module tb;
//   logic clk;
//   assign clk = 1'b0;
//
//   initial #1 $display("clk=%b", clk);   // clk=0
// endmodule
