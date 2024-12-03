import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/expense.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key, required this.onCreated});

  final Function(Expense) onCreated;

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  Category valueDropdown = Category.food;

  DateTime? _selectedDate;

  String get title => _titleController.text;

  @override
  void dispose() {
    _titleController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  void _selectDate() async {
    final now = DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 1),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void onCancel() {
    // Close modal
    Navigator.pop(context);
  }

  void onAdd() {
    // Get the values from inputs
    final String title = _titleController.text;
    final double amount = double.parse(_valueController.text);

    // Ensure the date is selected
    if (_selectedDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a date!')),
      );
      return;
    }

    // Create the expense
    final expense = Expense(
      title: title,
      amount: amount,
      date: _selectedDate!,
      category: valueDropdown,
    );

    // Ask the parent to add the expense
    widget.onCreated(expense);

    // Close modal
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              maxLength: 50,
              decoration: const InputDecoration(
                label: Text('Title'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    controller: _valueController,
                    maxLength: 50,
                    decoration: const InputDecoration(
                      prefix: Text('\$ '),
                      label: Text('Amount'),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton.icon(
                  onPressed: _selectDate,
                  label: Text(
                    _selectedDate == null
                        ? 'No date selected'
                        : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                  ),
                  icon: const Icon(Icons.calendar_month_outlined),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DropdownButton<Category>(
              isExpanded: true,
              value: valueDropdown,
              items: Category.values.map((cate) {
                return DropdownMenuItem<Category>(
                  value: cate,
                  child: Text(cate.name.toUpperCase()),
                );
              }).toList(),
              onChanged: (Category? newValue) {
                setState(() {
                  if (newValue != null) {
                    valueDropdown = newValue;
                  }
                });
              },
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: onCancel, child: const Text('Cancel')),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: onAdd, child: const Text('Create')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
