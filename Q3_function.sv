// =====================================================
// DV Practice - Day 3 - Question 1
// Topic: function return value, default and named arguments
// =====================================================
// Problem:
//   Predict the output of the code below.
//
// Expected Output:
//   add(5)          = 15
//   add(5, 3)       = 8
//   add(.b(1),.a(2)) = 3
//
// Explanation:
//   - A function returns a value with 'return' and can be
//     used inside an expression.
//   - Argument b has a default value (10), so it can be
//     omitted in the call. add(5) uses b = 10.
//   - Arguments can be passed by name with .name(value),
//     so the order does not matter.
//   - A function must execute in zero time: no #delay, no
//     @event, no wait. (A task can have these.)
// =====================================================

module tb;
  function int add(int a, int b = 10);
    return a + b;
  endfunction

  initial begin
    $display("add(5)          = %0d", add(5));              // 15
    $display("add(5, 3)       = %0d", add(5, 3));           // 8
    $display("add(.b(1),.a(2)) = %0d", add(.b(1), .a(2)));  // 3
  end
endmodule
