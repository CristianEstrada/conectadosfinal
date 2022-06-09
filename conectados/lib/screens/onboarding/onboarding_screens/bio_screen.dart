// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class Bio extends StatelessWidget {
  final TabController tabController;

  const Bio({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(text: 'Escribe Como Te Perciben Las Personas'),
              CustomTextField(
                  hint: 'INGRESA TU PRESENTACIÓN', controller: controller),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(text: '¿Cuales Son Tus Preferencias?'),
              Row(
                children: [
                  CustomTextContainer(text: 'MUSICA'),
                  CustomTextContainer(text: 'ARTE'),
                  CustomTextContainer(text: 'SALIR'),
                  CustomTextContainer(text: 'POLITICA'),
                ],
              ),
              Row(
                children: [
                  CustomTextContainer(text: 'MASCOTAS'),
                  CustomTextContainer(text: 'JUEGOS'),
                  CustomTextContainer(text: 'PELICULAS'),
                  CustomTextContainer(text: 'NATURALEZA'),
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
