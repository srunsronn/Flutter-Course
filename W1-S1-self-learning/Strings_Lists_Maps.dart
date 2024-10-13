void main() {
  print("====== String =====");
  //String
  // Declare two strings: firstName and lastName and an integer:age
  String firstName = "Srun";
  String lastName = "Srorn";
  int age = 20;

  // Concatenate the 2 strings and the age
  String fullName = firstName + " " + lastName + ", Age is " + age.toString();

  // Print result
  print(fullName);

  //Lists
  print("====== Lists =====");
  // Create a list of integers
  List<int> numbers = [1, 2, 3];

  // Add a number to the list
  numbers.add(4);

  // Remove a number from the list
  numbers.remove(1);

  // Insert a number at a specific index in the list
  numbers.insert(0, 5);

  // Iterate over the list and print each number
  for (var number in numbers) {
    print(number);
  }

  // Maps
  print("====== Maps =====");

  // Create a map with String keys and integer values
  Map<String, int> qauntityOfProducts = {
    'book': 50,
    'pen': 10,
  };

  // Add a new key-value pair to the map
  qauntityOfProducts['toy'] = 30;

  // Remove a key-value pair from the map
  qauntityOfProducts.remove('pen');

  // Iterate over the map and print each key-value pair
  qauntityOfProducts.forEach((key, value) {
    print('$key: $value');
  });
}
