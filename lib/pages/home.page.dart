import 'package:flutter/material.dart';

import '../drawer.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/main';

  static MaterialPageRoute route() {
    return MaterialPageRoute(
      builder: (context) => HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      drawer: SgeDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Need knowlege about the components?',
              style: theme.textTheme.headline5,
            ),
            const SizedBox(height: 32.0),
            Text(
              'Open the style guide from the menu.',
              style: theme.textTheme.headline5,
            )
          ],
        ),
      ),
    );
  }
}
