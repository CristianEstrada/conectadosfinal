// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:conectados/models/models.dart';
import 'package:conectados/widgets/choice_button.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = "/users";

  UserScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => UserScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage(User.users[0].imageUrls[0]),
                      fit: BoxFit.cover,
                    )),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ChoiceButton(
                        color: Theme.of(context).primaryColorDark,
                        icon: Icons.clear_rounded,
                      ),
                      ChoiceButton(
                        height: 80,
                        width: 80,
                        size: 30,
                        hasGradient: true,
                        color: Colors.white,
                        icon: Icons.favorite,
                      ),
                      ChoiceButton(
                        color: Theme.of(context).primaryColor,
                        icon: Icons.watch_later,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
