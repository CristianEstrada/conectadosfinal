// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:conectados/models/models.dart';
import 'package:conectados/widgets/choice_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = "/users";

  static Route route({required User user}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => UserScreen(user: user),
    );
  }

  final User user;

  const UserScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Hero(
                      tag: "user_image",
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: NetworkImage(user.imageUrls[0]),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}, ${user.age}',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.black),
                ),
                Text(
                  '${user.jobTitle}',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.normal, color: Colors.black),
                ),
                SizedBox(height: 15),
                Text(
                  'Sobre mi',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: Colors.black),
                ),
                Text(
                  '${user.bio}',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.normal,
                      height: 2,
                      color: Colors.black54),
                ),
                Text(
                  'Intereses',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.black),
                ),
                Row(
                  children: user.interests
                      .map(
                        (interest) => Container(
                          padding: const EdgeInsets.all(5.0),
                          margin: const EdgeInsets.only(top: 5.0, right: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).primaryColor,
                                Theme.of(context).primaryColorDark
                              ],
                            ),
                          ),
                          child: Text(
                            interest,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
