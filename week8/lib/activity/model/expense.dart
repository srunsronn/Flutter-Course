import 'package:uuid/uuid.dart';

enum Category {FOOD, TRAVEL, LEISURE, WORK}

const Uuid uuid = Uuid();

class Expense {

  String id = uuid.v4();
  final String title;
  final double amount;
  DateTime date;
  final Category category;

  
  Expense({required this.id, required this.title, required this.amount, required this.date, required this.category});

}