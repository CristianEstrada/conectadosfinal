// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = "/profile";

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final User user = User.users[0];
    return Scaffold(
      appBar: CustomAppBar(
        title: 'PERFIL',
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 3),
                        blurRadius: 3,
                        spreadRadius: 3),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(user.imageUrls[0]),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.1),
                      Theme.of(context).primaryColor.withOpacity(0.9),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Text(user.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                TitleWithIcon(title: 'Biografia', icon: Icons.edit),
                Text(user.bio,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(height: 1.5)),
                TitleWithIcon(title: 'Imagenes', icon: Icons.edit),
                SizedBox(
                    height: 125,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              height: 125,
                              width: 100,
                              padding: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                    color: Theme.of(context).primaryColorDark),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    user.imageUrls[0],
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
                TitleWithIcon(title: 'Ubicacion', icon: Icons.edit),
                Text('Madrid, Spain',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(height: 1.5)),
                TitleWithIcon(title: 'Intereses', icon: Icons.edit),
                Row(
                  children: [
                    CustomTextContainer(
                      text: 'MUSICA',
                    ),
                    CustomTextContainer(
                      text: 'POLITICA',
                    ),
                    CustomTextContainer(
                      text: 'ARTE',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  const TitleWithIcon({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(title,
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.black54)),
      IconButton(
        icon: Icon(icon),
        onPressed: () {},
      )
    ]);
  }
}
