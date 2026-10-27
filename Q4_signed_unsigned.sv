// =====================================================
// DV Practice - Day 2 - Question 2
// Topic: signed vs unsigned comparison (builds on Day 1 Q2)
// =====================================================
// Problem:
//   s is -1 and u is 1. The buggy code should print
//   "s < u" but prints "s >= u". Find the bug and fix it.
//
// Buggy code (prints "s >= u"):
//   if (s < u) $display("s < u");
//   else       $display("s >= u");
//
// Expected Output (fixed code):
//   s < u
//
// Explanation:
//   - If one operand is unsigned in an expression, SystemVerilog
//     treats BOTH operands as unsigned.
//   - -1 as a 32-bit unsigned value is 32'hFFFFFFFF, which is
//     larger than 1, so the buggy comparison is false.
//   - $signed(u) makes the comparison signed, so -1 < 1 is true.
// =====================================================

module tb;
  int          s = -1;   // signed
  int unsigned u = 1;    // unsigned

  initial begin
    // Buggy version (uncomment to see the bug):
    // if (s < u) $display("s < u");
    // else       $display("s >= u");

    // Fixed version:
    if (s < $signed(u)) $display("s < u");     // s < u
    else                $display("s >= u");
  end
endmodule
