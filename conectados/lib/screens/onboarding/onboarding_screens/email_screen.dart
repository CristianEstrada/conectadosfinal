// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:conectados/screens/onboarding/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Email extends StatelessWidget {
  final TabController tabController;

  const Email({
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
          Column(
            children: [
              CustomTextHeader(
                  tabController: tabController,
                  text: '¿Cual Es Tu Dirección De Correo Electronico?'),
              CustomTextField(
                  tabController: tabController,
                  text: 'INGRESA TU CORREO ELECTRONICO'),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 1,
                selectedColor: Theme.of(context).primaryColorDark,
                unselectedColor: Theme.of(context).backgroundColor,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                  tabController: tabController, text: 'Siguiente paso'),
            ],
          ),
        ],
      ),
    );
  }
}
