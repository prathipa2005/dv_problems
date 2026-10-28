// =====================================================
// DV Practice - Day 3 - Question 2
// Topic: pass by value vs pass by reference (ref)
// =====================================================
// Problem:
//   inc() should increase n from 5 to 6, but n stays 5.
//   Find the bug and fix it.
//
// Buggy code (prints n=5):
//   function void inc(int x);
//     x = x + 1;
//   endfunction
//
// Expected Output (fixed code):
//   n=6
//
// Explanation:
//   - By default, arguments are passed by value. The function
//     modifies its own copy, so the caller's variable does
//     not change.
//   - 'ref' passes a reference to the original variable, so
//     changes are visible to the caller.
//   - ref arguments are only allowed in automatic subroutines,
//     so the function must be declared 'automatic'.
//   - Use 'const ref' to pass large objects (arrays, queues)
//     without copying them and without allowing changes.
// =====================================================

module tb;
  int n = 5;

  function automatic void inc(ref int x);   // fix: ref + automatic
    x = x + 1;
  endfunction

  initial begin
    inc(n);
    $display("n=%0d", n);   // n=6
  end
endmodule
