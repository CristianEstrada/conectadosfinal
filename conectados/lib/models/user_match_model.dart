// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

class UserMatch extends Equatable {
  final int id;
  final int userId;
  final User matchedUser;
  //final List<Chat>? chat;

  UserMatch(
      {required this.id, required this.userId, required this.matchedUser});

  @override
  List<Object?> get props => [id, userId, matchedUser];
}
