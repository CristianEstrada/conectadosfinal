// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextHeader extends StatelessWidget {
  final TabController tabController;

  const CustomTextHeader({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Container(),
    );
  }
}
