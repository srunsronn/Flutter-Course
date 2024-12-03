import 'package:flutter/material.dart';

import '../../models/expense.dart';
import 'expenses_form.dart';
import 'expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  // if(_registeredExpenses.length == 0){}
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void onExpenseRemoved(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Expense deleted!'),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            onExpenseCreated(expense);
          },
        ),
      ));
    });
  }

  void onExpenseCreated(Expense newExpense) {
    setState(() {
      _registeredExpenses.add(newExpense);
    });
  }

  void onAddPressed() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => ExpenseForm(
        onCreated: onExpenseCreated,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: onAddPressed,
            )
          ],
          backgroundColor: Colors.blue[700],
          title: const Text('Robert-The-Best Expenses App'),
        ),
        body: _registeredExpenses.isEmpty
            ? Container(
                padding: const EdgeInsets.only(bottom: 30),
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "No Expense found! start adding some!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              )
            : ExpensesList(
                expenses: _registeredExpenses,
                onExpenseRemoved: onExpenseRemoved,
              ));
  }
}
