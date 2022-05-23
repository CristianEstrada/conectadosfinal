// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class Demo extends StatelessWidget {
  final TabController tabController;

  const Demo({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(
                  tabController: tabController, text: '¿Cual Es Tu Genero?'),
              SizedBox(
                height: 10,
              ),
              CustomCheckbox(tabController: tabController, text: 'Masculino'),
              CustomCheckbox(tabController: tabController, text: 'Femenino'),
              SizedBox(height: 100),
              CustomTextHeader(
                  tabController: tabController, text: '¿Cual Es Tu Edad?'),
              CustomTextField(
                  tabController: tabController, text: 'INGRESA TU EDAD'),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 3,
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
