import 'package:flutter/material.dart';

class SgePrimaryInputChip extends StatelessWidget {
  final Widget label;
  final VoidCallback onTap;

  const SgePrimaryInputChip({
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: label,
      onPressed: onTap,
    );
  }
}
