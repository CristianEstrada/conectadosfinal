// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final List<String> interests;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.interests,
    required this.bio,
    required this.jobTitle,
  });

  @override
  List<Object?> get props =>
      [id, name, age, imageUrls, interests, bio, jobTitle];

  static User fromSnapshot(DocumentSnapshot snap) {
    User user = User(
        id: snap['id'],
        name: snap['name'],
        age: snap['age'],
        imageUrls: snap['imageUrls'],
        interests: snap['interests'],
        bio: snap['bio'],
        jobTitle: snap['jobTitle']);

    return user;
  }

  static List<User> users = [
    User(
        id: 1,
        name: 'Lina',
        age: 21,
        imageUrls: [
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
        ],
        interests: ['Musica', 'Politica', 'Salir'],
        bio: 'Soul Gazing',
        jobTitle: 'Novia de Cristian :v'),
    User(
        id: 2,
        name: 'Lina',
        age: 21,
        imageUrls: [
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
        ],
        interests: ['Musica', 'Politica', 'Salir'],
        bio: 'Soul Gazing',
        jobTitle: 'Novia de Cristian <3'),
    User(
        id: 3,
        name: 'Lina',
        age: 21,
        imageUrls: [
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
        ],
        interests: ['Musica', 'Politica', 'Salir'],
        bio: 'Soul Gazing',
        jobTitle: 'prueba 1'),
    User(
        id: 4,
        name: 'Lina',
        age: 21,
        // ignore: prefer_const_literals_to_create_immutables
        imageUrls: [
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
        ],
        interests: ['Musica', 'Politica', 'Salir'],
        bio: 'Soul Gazing',
        jobTitle: 'prueba 2'),
    User(
        id: 5,
        name: 'Lina',
        age: 21,
        // ignore: prefer_const_literals_to_create_immutables
        imageUrls: [
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
          'https://scontent.fvvc1-1.fna.fbcdn.net/v/t39.30808-6/271890803_3211164192473266_8124191176561406261_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFl0tiqJXe7_4S8CLNbGoUz2pOLLpQpKarak4sulCkpqjYyvDPcj32318q2nbXR1jYTIxqXLVdCE8G4Ae-B0RHS&_nc_ohc=0AAzBDma0XkAX_AvdNN&tn=uVXYVs46-Nq6dI4X&_nc_ht=scontent.fvvc1-1.fna&oh=00_AT-GlhdXvsimIOWkRsFGiGWdLo71AF7NK3wt_cg3xPhl5Q&oe=6290705B',
        ],
        interests: ['Musica', 'Politica', 'Salir'],
        bio: 'Soul Gazing',
        jobTitle: 'prueba 3'),
  ];
}
