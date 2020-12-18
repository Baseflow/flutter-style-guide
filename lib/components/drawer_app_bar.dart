import 'dart:io';

import 'package:flutter/material.dart';

class DrawerAppBar extends StatelessWidget {
  const DrawerAppBar({
    this.title,
  });

  final Text title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scaffold = Scaffold.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Material(
      elevation: 4,
      child: Column(
        children: [
          Container(
            height: mediaQuery.padding.top,
            width: double.infinity,
            color: theme.colorScheme.primary,
          ),
          Container(
            height: scaffold.appBarMaxHeight - mediaQuery.padding.top,
            width: double.infinity,
            color: theme.colorScheme.primary,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              // Keep in line with the meterial header differences of google and
              alignment: Platform.isAndroid ? Alignment.centerLeft : Alignment.center,
              child: DefaultTextStyle(
                child: title,
                style: theme.appBarTheme?.textTheme?.headline6 ??
                    theme.textTheme.headline6.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
