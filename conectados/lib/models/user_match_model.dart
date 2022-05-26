// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:conectados/models/models.dart';
import 'package:equatable/equatable.dart';

class UserMatch extends Equatable {
  final int id;
  final int userId;
  final User matchedUser;
  final List<Chat>? chat;

  UserMatch({
    required this.id,
    required this.userId,
    required this.matchedUser,
    required this.chat,
  });

  @override
  List<Object?> get props => [id, userId, matchedUser];

  static List<UserMatch> matches = [
    UserMatch(
      id: 1,
      userId: 1,
      matchedUser: User.users[1],
      chat: Chat.chats
          .where((chat) => chat.userId == 1 && chat.otherUserId == 2)
          .toList(),
    ),
    UserMatch(
      id: 1,
      userId: 1,
      matchedUser: User.users[1],
      chat: Chat.chats
          .where((chat) => chat.userId == 1 && chat.otherUserId == 2)
          .toList(),
    )
  ];
}
