// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/";

  HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  'assets/logo.svg',
                  height: 50,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'CONECTADOS',
                  style: Theme.of(context).textTheme.headline4,
                ),
              )
            ],
          )),
    );
  }
}
