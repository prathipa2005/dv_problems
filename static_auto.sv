// =====================================================
// DV Practice - Day 3 - Question 3
// Topic: static vs automatic local variables
// =====================================================
// Problem:
//   Predict the output of the code below.
//
// Expected Output:
//   i=0 static=1 auto=1
//   i=1 static=2 auto=1
//   i=2 static=3 auto=1
//
// Explanation:
//   - A static variable is created once and keeps its value
//     between calls, so it counts 1, 2, 3.
//   - An automatic variable is created fresh on every call
//     and initialized again, so it always returns 1.
//   - In a module, subroutines are static by default. In a
//     class, they are automatic by default.
//   - Automatic is required for recursion and for tasks that
//     run concurrently (for example, inside fork...join).
// =====================================================

module tb;
  function int count_static();
    static int c = 0;     // one copy, lives across calls
    c++;
    return c;
  endfunction

  function automatic int count_auto();
    int c = 0;            // new copy on every call
    c++;
    return c;
  endfunction

  initial begin
    for (int i = 0; i < 3; i++)
      $display("i=%0d static=%0d auto=%0d", i, count_static(), count_auto());
  end
endmodule
