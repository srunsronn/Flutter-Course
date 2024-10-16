void main() {
  isBalance("{what is (42)}?");
  isBalance("[text}");
  isBalance("{[[(a)b]c]d}");
}

String isBalance(String text) {
  List<String> storeText = [];
  String isBalanced;  
  
  for (var sign in text.split("")) {
    if (sign == '(' || sign == '{' || sign == '[') {
      storeText.add(sign); 
    } else if (sign == ')' || sign == '}' || sign == ']') {
      if (storeText.isEmpty) {
        isBalanced = "Not balanced"; 
        print(isBalanced);
        return text;
      }
      // Get the last value in the stack
      String lastSignInStack = storeText.removeLast();
      // Compare opening and closing brackets
      if ((sign == ')' && lastSignInStack != '(') || 
          (sign == '}' && lastSignInStack != '{') || 
          (sign == ']' && lastSignInStack != '[')) {
        isBalanced = "Not balanced"; // Set status if brackets don't match
        print(isBalanced);
        return text;
      }
    }
  }

  // Check if stack is empty at the end, meaning all brackets are balanced
  if (storeText.isEmpty) {
    isBalanced = "Balanced"; // Set status to balanced
  } else {
    isBalanced = "Not balanced"; // Set status to not balanced
  }
  
  print(isBalanced);
  return text;
}
