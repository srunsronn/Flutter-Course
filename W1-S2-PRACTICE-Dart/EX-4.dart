void main() {
  // Write a program to calculate the total for a given order
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // variable store total
  double total = 0;

  // calculate the total for the order
  for (var pizza in order) {
    if (pizzaPrices.containsKey(pizza)) {
      total += pizzaPrices[pizza]!;
    } else {
      print("$pizza pizza is not on the menu.");
    }
  }

  print("Total: $total");
  
}
