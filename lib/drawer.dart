import 'package:StyleGuideExample/pages/style_guide.page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './components/drawer_app_bar.dart';
import './pages/home.page.dart';

class SgeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerAppBar(
              title: const Text("Menu"),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                    onTap: () => navigator.pushReplacementNamed(HomePage.routeName),
                  ),
                  if (kDebugMode)
                    ListTile(
                      leading: const Icon(Icons.style_rounded),
                      title: const Text("Style-guide"),
                      onTap: () => navigator.pushReplacementNamed(StyleGuidePage.routeName),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
