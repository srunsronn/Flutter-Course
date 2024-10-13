void main() {
  // 1 - iLike
  const String iLike = 'I like pizza';
  // Because this variable never changes 

  // 2 - toppings
  var toppings = 'with tomatoes';
  toppings += " and cheese";
  // Because this variable is inferred as String and value can change

  // 3 - message
  final String message = '$iLike $toppings';
  print(message);
  // Because this variable is assigned once and never changes after initialization

  // 4 - rbgColors
  const List<String> rbgColors = ['red', 'blue', 'green'];
  print(rbgColors);
  // Because this variable never changes, and it improve performance than using Final 

  // 5 - weekDays
  final List<String> weekDays = ['monday', 'tuesday', 'wednesday'];
  weekDays.add('thursday');
  print(weekDays);
  // Because this variable never change but modify the conntent later

  // 6 - scores
  var scores = [45,35,50];
  scores = [45,35,50, 78];
  print(scores);
  // Because this variable is inferred as List<int> and value can change 
}


