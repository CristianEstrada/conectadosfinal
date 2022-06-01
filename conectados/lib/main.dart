// ignore_for_file: prefer_const_constructors

import 'package:conectados/blocs/swipe/swipe_bloc.dart';
import 'package:conectados/config/app_router.dart';
import 'package:conectados/models/models.dart';
import 'package:conectados/screens/onboarding/onboarding_screen.dart';
import 'package:conectados/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SwipeBloc()..add(LoadUsersEvent(users: User.users)),
        ),
      ],
      child: MaterialApp(
        title: 'Conectados',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: OnboardingScreen.routeName,
      ),
    );
  }
}
