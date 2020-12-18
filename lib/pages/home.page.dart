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
        child: Center(
          child: Text(
            'Need knowlege about which components are available for desiging/setting up this page? Open the style guide from the hamburger menu. This will only be visible when in debug mode.',
            style: theme.textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
