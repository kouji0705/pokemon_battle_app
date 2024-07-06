import 'package:flutter/material.dart';
import 'page/home.dart';
import 'page/battle.dart';
import 'page/info.dart';

class AppRouter {
  static const String home = '/';
  static const String battle = '/battle';
  static const String info = '/info';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case battle:
        return MaterialPageRoute(builder: (_) => Battle());
      case info:
        return MaterialPageRoute(builder: (_) => InfoPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
