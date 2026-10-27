// =====================================================
// DV Practice - Day 2 - Question 1
// Topic: == vs === with X/Z values
// =====================================================
// Problem:
//   Predict the output of the code below.
//
// Expected Output:
//   a==b  : x
//   a===b : 1
//   a!==c : 1
//   if (a==b) not taken
//
// Explanation:
//   - == is the logical equality operator. If either operand
//     has X or Z, the result is X (unknown).
//   - An if() treats X as false, so the else branch runs.
//   - === is case equality. It compares X and Z literally,
//     and always returns 0 or 1, never X.
//   - X and Z are different values, so a !== c is 1.
//   - In a testbench, use === / !== when checking DUT outputs
//     so that X values are not silently ignored.
// =====================================================

module tb;
  logic [3:0] a = 4'b10x1;
  logic [3:0] b = 4'b10x1;
  logic [3:0] c = 4'b10z1;

  initial begin
    $display("a==b  : %b", a == b);     // x
    $display("a===b : %b", a === b);    // 1
    $display("a!==c : %b", a !== c);    // 1

    if (a == b) $display("if (a==b) taken");
    else        $display("if (a==b) not taken");
  end
endmodule
