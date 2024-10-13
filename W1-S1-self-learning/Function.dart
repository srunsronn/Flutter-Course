// Compare positional and named function arguments
// Positional Arguments:
// - Defined by their position in the function signature.
// - Must be provided in the order defined.
// - Required by default
// Named Arguments:
// - Defined by their name in the function signature.
// - Can be passed in any order.
// - Optional unless marked with the required keyword.


// Explain when and how to use arrow syntax for functions
// Used for single-expression functions.
// Provides a concise way to write functions.

void main() {
  // Defining and Invoking a Function

  // Define a function that takes two integers and returns their sum
  int add(int a, int b) {
    return a + b;
  }

  // Call the function and print the result
  int sum = add(3, 5);
  print('Sum: $sum');  // Output: Sum: 8

  // Positional vs Named Arguments

  // Define a function that uses positional arguments
  void printFullName(String firstName, String lastName) {
    print('Full Name: $firstName $lastName');
  }

  // Define another function that uses named arguments with the required keyword
  void getArea({required double length, required double width}) {
    print('Area: ${length * width}');
  }

  // Call both functions with appropriate arguments
  printFullName('Srun', 'Srorn');  // Positional arguments
  getArea(length: 50.0, width: 10.0);  // Named arguments

  // Can positional arguments be omitted?
  // Positional arguments cannot be omitted unless they are marked as optional using square brackets.
  // Example:
  void greet(String name, [String greeting = 'Hello']) {
    print('$greeting, $name!');
  }
  
  greet('Makara');  
  greet('Thy', 'Goodbye');  

  // Can named arguments be omitted?
  // Named arguments can be omitted if they are optional.
  // Example:
  void displayInfo({String name = 'Someone', int age = 10}) {
    print('Name: $name, Age: $age');
  }
  
  displayInfo();  
  displayInfo(name: 'bert');  

  // Arrow Syntax
  // Define a function using arrow syntax that squares a number
  int square(int num) => num * num;

  // Call the arrow function and print the result
  print('Square of 4: ${square(4)}');  


}