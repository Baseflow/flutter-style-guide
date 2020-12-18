import 'package:flutter/material.dart';

import './routes.dart';
import './theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Style guide Demo',
      theme: buildTheme(context),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
