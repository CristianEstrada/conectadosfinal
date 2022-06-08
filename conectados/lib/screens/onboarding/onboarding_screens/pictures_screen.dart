// ignore_for_file: prefer_const_constructors

import 'package:conectados/blocs/images/images_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class PicturesScreen extends StatelessWidget {
  final TabController tabController;

  const PicturesScreen({
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
              CustomTextHeader(text: 'Agrega 2 o mas imagenes'),
              SizedBox(height: 10),
              BlocBuilder<ImagesBloc, ImagesState>(
                builder: (context, state) {
                  if (state is ImagesLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is ImagesLoaded) {
                    var imagesCount = state.imageUrls.length;
                    return Column(
                      children: [
                        Row(
                          children: [
                            (imagesCount > 0)
                                ? CustomImageContainer(
                                    imageUrl: state.imageUrls[0])
                                : CustomImageContainer(),
                            (imagesCount > 1)
                                ? CustomImageContainer(
                                    imageUrl: state.imageUrls[1])
                                : CustomImageContainer(),
                            (imagesCount > 2)
                                ? CustomImageContainer(
                                    imageUrl: state.imageUrls[2])
                                : CustomImageContainer(),
                          ],
                        ),
                        Row(
                          children: [
                            (imagesCount > 3)
                                ? CustomImageContainer(
                                    imageUrl: state.imageUrls[3])
                                : CustomImageContainer(),
                            (imagesCount > 4)
                                ? CustomImageContainer(
                                    imageUrl: state.imageUrls[4])
                                : CustomImageContainer(),
                            (imagesCount > 5)
                                ? CustomImageContainer(
                                    imageUrl: state.imageUrls[5])
                                : CustomImageContainer(),
                          ],
                        ),
                      ],
                    );
                  } else {
                    return Text('Algo ha salido mal.');
                  }
                },
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 4,
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
