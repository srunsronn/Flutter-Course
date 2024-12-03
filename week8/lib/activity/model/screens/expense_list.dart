import 'package:flutter/material.dart';
import 'package:week8/activity/model/expense.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;
  const ExpenseList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Text(expenses[index].title)
    );
  }
}