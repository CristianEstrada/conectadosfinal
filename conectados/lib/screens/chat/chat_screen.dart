// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:conectados/models/models.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = "/chat";

  static Route route({required UserMatch userMatch}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ChatScreen(userMatch: userMatch),
    );
  }

  final UserMatch userMatch;
  const ChatScreen({required this.userMatch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Column(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(userMatch.matchedUser.imageUrls[0]),
            ),
            Text(userMatch.matchedUser.name,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black87))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: userMatch.chat != null
            ? Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: userMatch.chat![0].messages.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: userMatch.chat![0].messages[index].senderId == 1
                            ? Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(userMatch
                                      .chat![0].messages[index].message),
                                ))
                            : Text(userMatch.chat![0].messages[index].message),
                      );
                    }))
            : SizedBox(),
      ),
    );
  }
}
