import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conectados/models/user_model.dart';
import 'package:conectados/repositories/database/base_database_repository.dart';
import 'package:conectados/repositories/storage/storage_repository.dart';

class DatabaseRepository extends BaseDatabaseRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  @override
  Stream<User> getUsers() {
    return _firebaseFirestore
        .collection('users')
        .doc('u1UlB7T11Lb90FyV8PmW')
        .snapshots()
        .map((snap) => User.fromSnapshot(snap));
  }

  @override
  Future<void> updateUserPictures(String imageName) async {
    String downloadUrl = await StorageRepository().getDownloadURL(imageName);

    return _firebaseFirestore
        .collection('users')
        .doc('u1UlB7T11Lb90FyV8PmW')
        .update({
      'imageUrls': FieldValue.arrayUnion([downloadUrl]),
    });
  }
}
