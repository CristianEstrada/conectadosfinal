// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:conectados/screens/onboarding/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Start extends StatelessWidget {
  final TabController tabController;

  const Start({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Container(
              height: 200,
              width: 200,
              child: SvgPicture.asset('assets/logo.svg'),
            ),
            SizedBox(height: 50),
            Text(
              'Bienvenido a Conectados',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 20),
            Text(
              "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    height: 1.8,
                  ),
            ),
          ]),
          CustomButton(
            tabController: tabController,
          ),
        ],
      ),
    );
  }
}