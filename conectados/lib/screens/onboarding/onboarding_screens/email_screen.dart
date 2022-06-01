// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:conectados/screens/onboarding/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Email extends StatelessWidget {
  final TabController tabController;

  const Email({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(
                text: '¿Cual Es Tu Dirección De Correo Electronico?',
              ),
              CustomTextField(
                  hint: 'INGRESA TU CORREO ELECTRONICO',
                  controller: emailController),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                text: '¿Crea Tu Contraseña?',
              ),
              CustomTextField(
                  hint: 'INGRESA TU CONTRASEÑA',
                  controller: passwordController),
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
                  tabController: tabController,
                  text: 'Siguiente paso',
                  emailController: emailController,
                  passwordController: passwordController),
            ],
          ),
        ],
      ),
    );
  }
}
