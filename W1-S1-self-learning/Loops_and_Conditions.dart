void main() {
  //Use a for-loop to print numbers from 1 to 5
  print("========= for-loop========");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // Use a while-loop to print numbers while a condition is true
  print("========= while-loop========");
  int i = 20;
  while (i < 30) {
    print(i);
    i++;
  }

  // Use an if-else statement to check if a number is even or odd
  print("========= if-else========");
  int num = 20;
  if (num % 2 == 0) {
    print("The number $num is even.");
  } else{
    print("The number $num is odd.");
  }
}
