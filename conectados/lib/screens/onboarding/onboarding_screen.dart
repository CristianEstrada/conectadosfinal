// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:conectados/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'onboarding_screens/screens.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = "/onboarding";

  OnboardingScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => OnboardingScreen(),
    );
  }

  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Inicio'),
    Tab(text: 'Email'),
    Tab(text: 'Email Verification'),
    Tab(text: 'Demographics'),
    Tab(text: 'Pictures'),
    Tab(text: 'Biography'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {}
        });
        return Scaffold(
          appBar: CustomAppBar(
            title: 'CONECTADOS',
            hasActions: false,
          ),
          body: TabBarView(children: [
            Start(
              tabController: tabController,
            ),
            Email(
              tabController: tabController,
            ),
            EmailVerification(tabController: tabController),
            Demo(tabController: tabController),
            PicturesScreen(tabController: tabController),
            Biography(tabController: tabController)
          ]),
        );
      }),
    );
  }
}
