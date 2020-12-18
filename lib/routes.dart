import 'package:StyleGuideExample/pages/not_found.page.dart';
import 'package:StyleGuideExample/pages/style_guide.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './pages/home.page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
    case HomePage.routeName:
      return HomePage.route();
      break;
    case StyleGuidePage.routeName:
      return StyleGuidePage.route();
      break;
    default:
      return NotFoundPage.route();
  }
}
