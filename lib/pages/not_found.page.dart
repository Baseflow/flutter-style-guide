import 'package:flutter/material.dart';

import '../drawer.dart';

class NotFoundPage extends StatelessWidget {
  static const routeName = '/not-found';

  static MaterialPageRoute route() {
    return MaterialPageRoute(
      builder: (context) => NotFoundPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page not found'),
      ),
      drawer: SgeDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: const Text('The page could not be found.'),
        ),
      ),
    );
  }
}
