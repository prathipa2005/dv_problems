// =====================================================
// DV Practice - Day 1 - Question 2
// Topic: signed vs unsigned types, overflow
// =====================================================
// Problem:
//   The buggy code should print 128 but prints a negative
//   number. Find the bug and fix it.
//
// Buggy code (prints cnt=-128):
//   module tb;
//     byte cnt = 127;
//     initial begin
//       cnt++;
//       $display("cnt=%0d", cnt);
//     end
//   endmodule
//
// Expected Output (fixed code):
//   cnt=128
//
// Explanation:
//   - byte is a SIGNED 8-bit type (range -128 to 127).
//   - 127 + 1 overflows and wraps to -128.
//   - bit [7:0] is UNSIGNED (range 0 to 255), so it holds 128.
// =====================================================

module tb;
  bit [7:0] cnt = 127;   // fix: unsigned 8-bit

  initial begin
    cnt++;
    $display("cnt=%0d", cnt);   // cnt=128
  end
endmodule
