// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:conectados/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('La ruta es: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case MatchesScreen.routeName:
        return MatchesScreen.route();
      case UserScreen.routeName:
        return UserScreen.route();
      case ChatScreen.routeName:
        return ChatScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
        settings: const RouteSettings(name: '/error'));
  }
}