import 'package:flutter/material.dart';
import 'package:week8/activity/model/expense.dart';
import 'package:week8/activity/model/screens/expense_form.dart';
import 'package:week8/activity/model/screens/expense_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Expenses(),
    );
  }
}

class Expenses extends StatefulWidget {
  Expenses({
    super.key,
  });

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
        id: "1",
        title: "Flutter Course",
        amount: 19999,
        date: DateTime.now(),
        category: Category.WORK),
    Expense(
        id: "2",
        title: "Cinema",
        amount: 10000,
        date: DateTime.now(),
        category: Category.LEISURE),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bert The-Best-Expenses App"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const ExpenseForm();
                  });
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ExpenseList(expenses: _registeredExpense),
    );
  }
}

