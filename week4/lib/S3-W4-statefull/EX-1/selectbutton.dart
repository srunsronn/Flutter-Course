import 'package:flutter/material.dart';

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool _isSelected = false;

  void _handleSelect() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: _isSelected ? Colors.white : Colors.black,
            backgroundColor: _isSelected ? Colors.blue[500] : Colors.blue[50],
          ),
          onPressed: _handleSelect,
          child: Center(
            child: Text(_isSelected ? "Selected" : "Not Selected"),
          )),
    );
  }
}
