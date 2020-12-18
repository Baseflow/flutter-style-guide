import 'package:flutter/material.dart';

class SgePrimaryButton extends StatelessWidget {
  final Widget label;
  final VoidCallback onTap;
  final Icon icon;

  const SgePrimaryButton({
    @required this.onTap,
    @required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? ElevatedButton.icon(
            label: label,
            icon: icon,
            onPressed: onTap,
          )
        : ElevatedButton(
            child: label,
            onPressed: onTap,
          );
  }
}
