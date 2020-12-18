import 'package:flutter/material.dart';

import '../../theme.dart';

class SgeSecondaryInputChip extends StatelessWidget {
  static final Color backgroundColor = Colors.grey[200];

  final Widget label;
  final VoidCallback onTap;

  const SgeSecondaryInputChip({
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final chipTheme = buildChipTheme(
      context,
      backgroundColor: backgroundColor,
      disabledColor: Colors.grey[300],
      labelStyle: buildChipThemeTextStyle(
        context,
        color: Colors.grey[800],
        fontSize: theme.textTheme.button.fontSize - 2,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        side: BorderSide(
          color: kBorderColor,
          width: 1,
        ),
      ),
    );
    return ChipTheme(
      data: chipTheme,
      child: InputChip(
        label: label,
        onPressed: onTap,
      ),
    );
  }
}
