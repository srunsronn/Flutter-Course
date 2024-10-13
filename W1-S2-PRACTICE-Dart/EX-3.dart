void main() {
  // Write a Dart program that filters and returns a list of students and the number of students who passed the exam.

  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  var result = scores.where((score) => score >= 50).toList();

  //number of student that pass
  var numOfPass = result.length;

  // print result
  print(result);
  print("$numOfPass students passed.");

}
