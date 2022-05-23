// ignore_for_file: prefer_const_constructors

import 'package:conectados/models/models.dart';
import 'package:flutter/material.dart';

import 'package:conectados/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case MatchesScreen.routeName:
        return MatchesScreen.route();
      case UserScreen.routeName:
        return UserScreen.route(user: settings.arguments as User);
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
