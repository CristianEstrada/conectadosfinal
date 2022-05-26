// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:conectados/widgets/custom_appbar.dart';
import 'package:conectados/widgets/user_image_small.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/models.dart';

class MatchesScreen extends StatelessWidget {
  static const String routeName = "/MatchesScreen";

  MatchesScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => MatchesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final inactiveMatches = UserMatch.matches
        .where((match) => match.userId == 1 && match.chat!.isEmpty)
        .toList();
    final activeMatches = UserMatch.matches
        .where((match) => match.userId == 1 && match.chat!.isNotEmpty)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ENCUENTROS',
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Me gustas',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: inactiveMatches.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        UserImageSmall(
                            height: 70,
                            width: 70,
                            url: inactiveMatches[index]
                                .matchedUser
                                .imageUrls[0]),
                        Text(
                          inactiveMatches[index].matchedUser.name,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Tus Chats',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: activeMatches.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/chat',
                          arguments: activeMatches[index]);
                    },
                    child: Row(
                      children: [
                        UserImageSmall(
                          height: 70,
                          width: 70,
                          url: activeMatches[index].matchedUser.imageUrls[0],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(activeMatches[index].matchedUser.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.black87)),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                activeMatches[index]
                                    .chat![0]
                                    .messages[0]
                                    .message,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Colors.black54)),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                                activeMatches[index]
                                    .chat![0]
                                    .messages[0]
                                    .timeString,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.black54)),
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
