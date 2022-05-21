// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = "/ChatScreen";

  ChatScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ChatScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              SvgPicture.asset(
                'assets/logo.svg',
                height: 50,
              ),
              Text(
                'CONECTADOS',
                style: Theme.of(context).textTheme.headline2,
              )
            ],
          )),
    );
  }
}
