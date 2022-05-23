// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool hasActions;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.hasActions = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/logo.svg',
              height: 50,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
          )
        ],
      ),
      actions: hasActions
          ? [
              IconButton(
                  icon: Icon(
                    Icons.message,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.person,
                      color: Theme.of(context).primaryColorDark),
                  onPressed: () {}),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
