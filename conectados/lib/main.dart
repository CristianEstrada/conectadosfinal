// ignore_for_file: prefer_const_constructors

import 'package:conectados/config/app_router.dart';
import 'package:conectados/screens/screens.dart';
import 'package:flutter/material.dart';

import 'config/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conectados',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
