import 'package:flutter/material.dart';

class SgeSecondaryButton extends StatelessWidget {
  final Widget label;
  final VoidCallback onTap;
  final Icon icon;

  const SgeSecondaryButton({
    @required this.onTap,
    @required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? OutlinedButton.icon(
            icon: icon,
            label: label,
            onPressed: onTap,
          )
        : OutlinedButton(
            child: label,
            onPressed: onTap,
          );
  }
}
