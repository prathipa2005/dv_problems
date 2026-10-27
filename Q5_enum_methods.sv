// =====================================================
// DV Practice - Day 2 - Question 3
// Topic: enum basics and built-in methods
// =====================================================
// Problem:
//   Predict the output of the code below.
//
// Expected Output:
//   s=IDLE (0)
//   s=READ (1)
//   s=DONE (3)
//   s=IDLE (0)
//   s=WRITE (2)
//
// Explanation:
//   - An enum with no base type uses int, so the default
//     value is 0, which is IDLE.
//   - s.next() returns the next enum value, and wraps from
//     the last value (DONE) back to the first (IDLE).
//   - s.name() returns the enum label as a string.
//   - Assigning an int directly (s = 2;) is a compile error.
//     Use a cast: state_t'(2).
// =====================================================

module tb;
  typedef enum {IDLE, READ, WRITE, DONE} state_t;
  state_t s;

  initial begin
    $display("s=%s (%0d)", s.name(), s);   // IDLE (0)

    s = s.next();
    $display("s=%s (%0d)", s.name(), s);   // READ (1)

    s = WRITE;
    s = s.next();
    $display("s=%s (%0d)", s.name(), s);   // DONE (3)

    s = s.next();                          // wraps around
    $display("s=%s (%0d)", s.name(), s);   // IDLE (0)

    s = state_t'(2);                       // cast int to enum
    $display("s=%s (%0d)", s.name(), s);   // WRITE (2)
  end
endmodule
