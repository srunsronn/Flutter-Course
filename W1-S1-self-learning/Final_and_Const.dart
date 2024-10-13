// Describe the difference between final and const.

// final : The value is constant after being initialized, but it is determined at runtime (lazy initialization).
// const :  The value is constant and known at compile-time, and it must be immutable. It is deeply constant (nested values cannot be changed either).

void main() {
  // Declare a final variable and assign it the current date and time
  final DateTime now = DateTime.now();
  print("DateNow: $now");

  // Can you declare this variable as const? Why?
  // No, Because const can only be used with values that are known and fixed at compile-time, and DateTime.now() is not known until runtime.

  // Declare a const variable with a integer value
  const int x = 5;
  print("x: $x");

  // Can you reassign the value of this final variable? Why?
  // No, Because final variables cannot be reassigned after they are initialized.
}
