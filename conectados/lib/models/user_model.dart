// ignore_for_file: prefer_const_constructors

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.bio,
    required this.jobTitle,
  });

  @override
  List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

  static List<User> users = [
    User(
        id: 1,
        name: 'Lina',
        age: 21,
        // ignore: prefer_const_literals_to_create_immutables
        imageUrls: [
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-6&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=viRafDfHN6oAX8UJaIh&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT8zB_oIQ2A5d7rFkOuuvA9nN70YEUrJWzoynhTxrFef_Q&oe=628A819B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/238266288_3091964134393273_4258540429133810364_n.jpg?_nc_cat=109&ccb=1-6&_nc_sid=174925&_nc_eui2=AeHIiCfgBfnp4EaoikfXUi-Yzjz3IgjLtOvOPPciCMu068KPIDXMDBEmGsxLOijuyCoshSpCtKBsUuSz3hFGvQLn&_nc_ohc=-yoLbbjLuX4AX8VZu_F&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT8TG1jQSY8lQNqvi27S8OCjWWLqWZsHeGfJNTwDOtAbOg&oe=62899DDA',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t1.6435-9/148043956_2878934002362955_6710291133745909311_n.jpg?_nc_cat=110&ccb=1-6&_nc_sid=174925&_nc_eui2=AeHM459rQhltecZX9MvgomRR7DoolXkGcl3sOiiVeQZyXS2WgfSSF9I1v3juVLyyeK7_X4V9yqIg8izjCX2NPkgq&_nc_ohc=2Lo5GdRn-dAAX_KKDfY&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT9k2FU7W2ujDkrqdom7lxGPVtZ09-aKN8DZAtib_wDVuA&oe=62AAB6EC',
        ],
        bio: 'Soul Gazing',
        jobTitle: 'Novia de Cristian :v'),
    User(
        id: 2,
        name: 'Lina',
        age: 21,
        // ignore: prefer_const_literals_to_create_immutables
        imageUrls: [
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-6&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=viRafDfHN6oAX8UJaIh&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT8zB_oIQ2A5d7rFkOuuvA9nN70YEUrJWzoynhTxrFef_Q&oe=628A819B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/238266288_3091964134393273_4258540429133810364_n.jpg?_nc_cat=109&ccb=1-6&_nc_sid=174925&_nc_eui2=AeHIiCfgBfnp4EaoikfXUi-Yzjz3IgjLtOvOPPciCMu068KPIDXMDBEmGsxLOijuyCoshSpCtKBsUuSz3hFGvQLn&_nc_ohc=-yoLbbjLuX4AX8VZu_F&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT8TG1jQSY8lQNqvi27S8OCjWWLqWZsHeGfJNTwDOtAbOg&oe=62899DDA',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t1.6435-9/148043956_2878934002362955_6710291133745909311_n.jpg?_nc_cat=110&ccb=1-6&_nc_sid=174925&_nc_eui2=AeHM459rQhltecZX9MvgomRR7DoolXkGcl3sOiiVeQZyXS2WgfSSF9I1v3juVLyyeK7_X4V9yqIg8izjCX2NPkgq&_nc_ohc=2Lo5GdRn-dAAX_KKDfY&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT9k2FU7W2ujDkrqdom7lxGPVtZ09-aKN8DZAtib_wDVuA&oe=62AAB6EC',
        ],
        bio: 'Soul Gazing',
        jobTitle: 'Novia de Cristian <3'),
  ];
}
