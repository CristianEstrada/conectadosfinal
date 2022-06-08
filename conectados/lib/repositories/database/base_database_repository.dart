import 'package:conectados/models/models.dart';

abstract class BaseDatabaseRepository {
  Stream<User> getUsers();
  Future<void> updateUserPictures(String imageName);
}
