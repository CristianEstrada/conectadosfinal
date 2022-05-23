// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class Biography extends StatelessWidget {
  final TabController tabController;

  const Biography({
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
                  tabController: tabController,
                  text: 'Escribe Como Te Perciben Las Personas'),
              CustomTextField(
                  tabController: tabController,
                  text: 'INGRESA TU PRESENTACIÓN'),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                  tabController: tabController,
                  text: '¿Cuales Son Tus Preferencias?'),
              Row(
                children: [
                  CustomTextContainer(
                      tabController: tabController, text: 'MUSICA'),
                  CustomTextContainer(
                      tabController: tabController, text: 'ARTE'),
                  CustomTextContainer(
                      tabController: tabController, text: 'SALIR'),
                  CustomTextContainer(
                      tabController: tabController, text: 'POLITICA'),
                ],
              ),
              Row(
                children: [
                  CustomTextContainer(
                      tabController: tabController, text: 'MASCOTAS'),
                  CustomTextContainer(
                      tabController: tabController, text: 'JUEGOS'),
                  CustomTextContainer(
                      tabController: tabController, text: 'PELICULAS'),
                  CustomTextContainer(
                      tabController: tabController, text: 'NATURALEZA'),
                ],
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 5,
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
