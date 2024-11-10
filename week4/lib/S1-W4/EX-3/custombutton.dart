import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
  disabled,
}

enum IconPosition {
  left,
  right,
}

extension ButtonTypeExtension on ButtonType {
  Color get color {
    switch (this) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
        return Colors.grey;
    }
  }

  Color get textColor {
    return this == ButtonType.disabled ? Colors.black : Colors.white;
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton({
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.buttonType = ButtonType.primary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500, 
      height: 50,
      child: ElevatedButton(
        onPressed: buttonType == ButtonType.disabled
            ? null
            : () {
                print("$label button pressed");
              },
        style: ElevatedButton.styleFrom(
          foregroundColor: buttonType.textColor,
          backgroundColor: buttonType.color,
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            if (iconPosition == IconPosition.left) ...[
              Icon(icon),
              const SizedBox(width: 8),
            ],
            Text(label),
            if (iconPosition == IconPosition.right) ...[
              const SizedBox(width: 8),
              Icon(icon),
            ],
          ],
        ),
      ),
    );
  }
}
