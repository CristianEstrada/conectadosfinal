// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../blocs/blocs.dart';
import '../widgets/widgets.dart';

class Demo extends StatelessWidget {
  final TabController tabController;

  const Demo({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        if (state is OnboardingLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is OnboardingLoaded) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextHeader(text: 'What\'s Your Name?'),
                    SizedBox(height: 20),
                    CustomTextField(
                      hint: 'ENTER YOUR NAME',
                      onChanged: (value) {
                        context.read<OnboardingBloc>().add(
                              UpdateUser(
                                user: state.user.copyWith(name: value),
                              ),
                            );
                      },
                    ),
                    SizedBox(height: 50),
                    CustomTextHeader(text: '¿Cual Es Tu Genero?'),
                    SizedBox(height: 20),
                    CustomCheckbox(
                      text: 'MASCULINO',
                      value: state.user.gender == 'Masculino',
                      onChanged: (bool? newValue) {
                        context.read<OnboardingBloc>().add(
                              UpdateUser(
                                user: state.user.copyWith(gender: 'Masculino'),
                              ),
                            );
                      },
                    ),
                    CustomCheckbox(
                      text: 'FEMENINO',
                      value: state.user.gender == 'Femenino',
                      onChanged: (bool? newValue) {
                        context.read<OnboardingBloc>().add(
                              UpdateUser(
                                user: state.user.copyWith(gender: 'Femenino'),
                              ),
                            );
                      },
                    ),
                    SizedBox(height: 50),
                    CustomTextHeader(text: '¿Que Edad Tienes?'),
                    CustomTextField(
                      hint: 'INGRESA TU EDAD AQUI...',
                      onChanged: (value) {
                        context.read<OnboardingBloc>().add(
                              UpdateUser(
                                user:
                                    state.user.copyWith(age: int.parse(value)),
                              ),
                            );
                      },
                    ),
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
                    SizedBox(height: 10),
                    CustomButton(
                        tabController: tabController, text: 'Siguiente'),
                  ],
                ),
              ],
            ),
          );
        } else {
          return Text('Algo ha ido mal.');
        }
      },
    );
  }
}
