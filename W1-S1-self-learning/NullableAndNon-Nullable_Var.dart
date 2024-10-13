// Explain nullable vs non-nullable variables.

// Nullable Variables is a type of variable that can be a value or null. To declare a type nullable, append a `?` to the type declaration.

// Non-Nullable Variables is a type of variable that can't be null. In Dart, variables are non-nullable by default unless explicitly marked as nullable with `?`.

// When is it useful to have nullable variables?

// It's useful when working with the values that it is the option, absence of data it can prevent when fetching the data from database or API, if no result is found, null can be returned.

void main() {
  // Declare a nullable integer variable and assign it a null value
  int? age = null;
  print("Age: $age");

  // Declare a non-nullable integer variable and assign it a value
  int year = 2004;

  // Assign a new value to the nullable variable
  age = 25;

  print("==== Nullable Variable after assign new value ===");
  print("Age: $age");
  print("=== Non-Nullable variable with value ===");
  print("Year: $year");
  
}
