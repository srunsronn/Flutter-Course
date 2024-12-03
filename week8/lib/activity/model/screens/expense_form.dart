import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  // @override
  // void dispose() {
  //   _titleController.dispose();
  //   _amountController.dispose();
  //   super.dispose();
  // }
  void _handleInput() {
    
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "title",
                ),
                maxLength: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  prefix: Text('\$'),
                  labelText: "amount",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: _handleInput,
                child: const Text("Check Value"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
