// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, avoid_single_cascade_in_expression_statements

import 'package:conectados/blocs/swipe/swipe_bloc.dart';
import 'package:flutter/material.dart';

import 'package:conectados/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/blocs.dart';
import '../../models/models.dart';
import '../onboarding/onboarding_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) {
          print(BlocProvider.of<AuthBloc>(context).state.status);
          return BlocProvider.of<AuthBloc>(context).state.status ==
                  AuthStatus.unauthenticated
              ? OnboardingScreen()
              : HomeScreen();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'CONECTADOS',
      ),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoaded) {
            var userCount = state.users.length;
            return Column(
              children: [
                InkWell(
                  onDoubleTap: () {
                    Navigator.pushNamed(context, '/users',
                        arguments: state.users[0]);
                  },
                  child: Draggable<User>(
                    data: state.users[0],
                    child: UserCard(user: state.users[0]),
                    feedback: UserCard(user: state.users[0]),
                    childWhenDragging: (userCount > 1)
                        ? UserCard(user: state.users[1])
                        : Container(),
                    onDragEnd: (drag) {
                      if (drag.velocity.pixelsPerSecond.dx < 0) {
                        context.read<SwipeBloc>()
                          ..add(SwipeLeft(user: state.users[0]));
                        print('Swiped Left');
                      } else {
                        context.read<SwipeBloc>()
                          ..add(SwipeRight(user: state.users[0]));
                        print('Swiped Right');
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context.read<SwipeBloc>()
                            ..add(SwipeLeft(user: state.users[0]));
                          print('Slice a la Izquierda');
                        },
                        child: ChoiceButton(
                            width: 60,
                            height: 60,
                            size: 25,
                            hasGradient: false,
                            color: Theme.of(context).primaryColor,
                            icon: Icons.clear_rounded),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<SwipeBloc>()
                            ..add(SwipeRight(user: state.users[0]));
                          print('Slice a la derecha');
                        },
                        child: ChoiceButton(
                            width: 80,
                            height: 80,
                            size: 30,
                            hasGradient: true,
                            color: Colors.white,
                            icon: Icons.favorite),
                      ),
                      ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          hasGradient: false,
                          color: Theme.of(context).primaryColor,
                          icon: Icons.watch_later),
                    ],
                  ),
                ),
              ],
            );
          }
          if (state is SwipeError) {
            return Center(
              child: Text('No hay mas usuarios para mostrar.',
                  style: Theme.of(context).textTheme.headline4),
            );
          } else {
            return Text('Algo ha ido mal.');
          }
        },
      ),
    );
  }
}
